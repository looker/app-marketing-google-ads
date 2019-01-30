include: "ad_group_fact.view"


explore: keyword_date_fact {
  persist_with: adwords_etl_datagroup
  extends: [ad_group_date_fact, keyword_join]
  from: keyword_date_fact
  view_name: fact
  label: "Keyword This Period"
  view_label: "Keyword This Period"
  join: last_fact {
    from: keyword_date_fact
    view_label: "Keyword Prior Period"
    sql_on: ${fact.external_customer_id} = ${last_fact.external_customer_id} AND
      ${fact.campaign_id} = ${last_fact.campaign_id} AND
      ${fact.ad_group_id} = ${last_fact.ad_group_id} AND
      ${fact.criterion_id} = ${last_fact.criterion_id} AND
      ${fact.date_last_period} = ${last_fact.date_period} AND
      ${fact.date_day_of_period} = ${last_fact.date_day_of_period} ;;
    relationship: one_to_one
  }
  join: parent_fact {
    from: ad_group_date_fact
    view_label: "Ad Group Prior Period"
    sql_on: ${fact.external_customer_id} = ${parent_fact.external_customer_id} AND
      ${fact.campaign_id} = ${parent_fact.campaign_id} AND
      ${fact.ad_group_id} = ${parent_fact.ad_group_id} AND
      ${fact.date_date} = ${parent_fact.date_date} ;;
    relationship: one_to_one
  }
}

view: keyword_key_base {
  extends: [ad_group_key_base]
  extension: required

  dimension: ad_key_base {
    hidden: yes
    sql:
      {% if _dialect._name == 'snowflake' %}
        ${ad_group_key_base} || '-' || TO_CHAR(${criterion_id})
      {% elsif _dialect._name == 'redshift' %}
        ${ad_group_key_base} || '-' || CAST(${criterion_id} AS VARCHAR)
      {% else %}
        CONCAT(${ad_group_key_base}, "-", CAST(${criterion_id} as STRING))
      {% endif %} ;;
  }
  dimension: key_base {
    sql: ${ad_key_base} ;;
  }
}


view: keyword_date_fact {
  extends: [keyword_key_base, ad_group_date_fact]

  derived_table: {
    datagroup_trigger: adwords_etl_datagroup
    explore_source: ad_impressions_keyword {
      column: _date { field: fact.date_date }
      column: external_customer_id { field: fact.external_customer_id }
      column: campaign_id {field: fact.campaign_id}
      column: ad_group_id {field: fact.ad_group_id}
      column: criterion_id {field: fact.criterion_id}
      column: averageposition {field: fact.weighted_average_position}
      column: clicks {field: fact.total_clicks }
      column: conversions {field: fact.total_conversions}
      column: conversionvalue {field: fact.total_conversionvalue}
      column: cost {field: fact.total_cost}
      column: impressions { field: fact.total_impressions}
      column: interactions {field: fact.total_interactions}
    }
  }
  dimension: criterion_id {
    hidden: yes
  }
  set: detail {
    fields: [external_customer_id, campaign_id, ad_group_id, criterion_id]
  }
}