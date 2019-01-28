explore: google_ads_ad_impressions {
  persist_with: adwords_etl_datagroup
  hidden: yes
  from: google_ads_ad_impressions
  view_name: fact
}

view: google_ads_ad_impressions {
  extends: [ad_metrics_base, date_base, period_base, date_primary_key_base, pdt_base]

  derived_table: {
    datagroup_trigger: adwords_etl_datagroup
    explore_source: ad_impressions_ad_group {
      column: _date { field: fact.date_date }
      column: channel { field: fact.ad_network_type }
      column: account_id { field: fact.external_customer_id_string }
      column: account_name { field: customer.account_descriptive_name }
      column: campaign_id { field: fact.campaign_id_string }
      column: campaign_name { field: campaign.name }
      column: ad_group_id { field: fact.ad_group_id_string }
      column: ad_group_name { field: ad_group.ad_group_name }
      column: cost { field: fact.total_cost }
      column: impressions { field: fact.total_impressions }
      column: clicks { field: fact.total_clicks }
      column: conversions { field: fact.total_conversions }
      column: conversionvalue { field: fact.total_conversionvalue }
      column: _distribution {field: fact.date_raw}
      column: _sortkey {field: fact.date_raw}
    }
  }

  dimension: _date {
    hidden: yes
    type: date_raw
  }
  dimension: channel {}
  dimension: account_id {
    hidden: yes
  }
  dimension: campaign_id {
    hidden: yes
  }
  dimension: ad_group_id {
    hidden: yes
  }
  dimension: account_name {}
  dimension: campaign_name {}
  dimension: ad_group_name {}
  dimension: cross_channel_ad_group_key_base {
    hidden: yes
    sql:
      {% if _dialect._name == 'snowflake' %}
        ${channel} || '-' || TO_CHAR(${account_id})  || '-' || TO_CHAR(${campaign_id}) || '-' || TO_CHAR(${ad_group_id})
      {% elsif _dialect._name == 'redshift' %}
        ${channel} || '-' ||  CAST(${account_id} AS VARCHAR)  || '-' || CAST(${campaign_id} AS VARCHAR) || '-' || CAST(${ad_group_id} AS VARCHAR)
      {% else %}
        concat(${channel}, ${account_id}, ${campaign_id}, ${ad_group_id})
      {% endif %} ;;
  }
  dimension: key_base {
    hidden: yes
    sql: ${cross_channel_ad_group_key_base} ;;
  }
}
