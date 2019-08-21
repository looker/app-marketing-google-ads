include: "account_fact.view"


explore: campaign_date_fact {
  persist_with: adwords_etl_datagroup
  extends: [account_date_fact, campaign_join]
  from: campaign_date_fact
  view_name: fact
  label: "Campaign This Period"
  view_label: "Campaign This Period"
  join: last_fact {
    from: campaign_date_fact
    view_label: "Campaign Prior Period"
    sql_on: ${fact.external_customer_id} = ${last_fact.external_customer_id} AND
      ${fact.campaign_id} = ${last_fact.campaign_id} AND
      ${fact.date_last_period} = ${last_fact.date_period} AND
      ${fact.date_day_of_period} = ${last_fact.date_day_of_period} ;;
  }
  join: parent_fact {
    view_label: "Customer This Period"
    from: account_date_fact
    sql_on: ${fact.external_customer_id} = ${parent_fact.external_customer_id} AND
      ${fact.date_date} = ${parent_fact.date_date};;
    relationship: many_to_one
  }
}

view: campaign_key_base {
  extends: [account_key_base]
  extension: required

  dimension: campaign_key_base {
    hidden: yes
    sql:
      {% if _dialect._name == 'snowflake' %}
        ${account_key_base} || '-' || TO_CHAR(${campaign_id})
      {% elsif _dialect._name == 'redshift' %}
        ${account_key_base} || '-' || CAST(${campaign_id} AS VARCHAR)
      {% else %}
        CONCAT(${account_key_base}, "-", CAST(${campaign_id} as STRING))
      {% endif %} ;;
  }

  dimension: key_base {
    hidden: yes
    sql: ${campaign_key_base} ;;
  }
}

view: campaign_date_fact {
  extends: [ad_metrics_parent_comparison_base, account_date_fact, campaign_key_base]

  derived_table: {
    datagroup_trigger: adwords_etl_datagroup
    explore_source: ad_impressions_campaign {
      column: _date { field: fact.date_date }
      column: external_customer_id { field: fact.external_customer_id }
      column: campaign_id {field: fact.campaign_id}
      column: averageposition {field: fact.weighted_average_position}
      column: clicks {field: fact.total_clicks }
      column: conversions {field: fact.total_conversions}
      column: conversionvalue {field: fact.total_conversionvalue}
      column: cost {field: fact.total_cost}
      column: impressions { field: fact.total_impressions}
      column: interactions {field: fact.total_interactions}
    }
  }
  dimension: campaign_id {
    hidden: yes
  }
  set: detail {
    fields: [external_customer_id, campaign_id]
  }
}