include: "ad_group_fact.view"
include: "recent_changes.view"

explore: ad_date_fact {
  persist_with: adwords_etl_datagroup
  extends: [ad_group_date_fact]
  from: ad_date_fact
  view_name: fact
  label: "Ad This Period"
  view_label: "Ad This Period"
  join: last_fact {
    from: ad_date_fact
    view_label: "Ad Last Period"
    sql_on: ${fact.external_customer_id} = ${last_fact.external_customer_id} AND
      ${fact.campaign_id} = ${last_fact.campaign_id} AND
      ${fact.ad_group_id} = ${last_fact.ad_group_id} AND
      ${fact.creative_id} = ${last_fact.creative_id} AND
      ${fact.date_last_period} = ${last_fact.date_period} AND
      ${fact.date_day_of_period} = ${last_fact.date_day_of_period} ;;
    relationship: one_to_one
  }
  join: parent_fact {
    from: ad_group_date_fact
    view_label: "Ad Group This Period"
    sql_on: ${fact.external_customer_id} = ${parent_fact.external_customer_id} AND
      ${fact.campaign_id} = ${parent_fact.campaign_id} AND
      ${fact.ad_group_id} = ${parent_fact.ad_group_id} AND
      ${fact.date_date} = ${parent_fact.date_date} ;;
    relationship: many_to_one
  }
  join: ad {
    from: ad_adapter
    view_label: "Ad"
    sql_on: ${fact.external_customer_id} = ${ad.external_customer_id} AND
      ${fact.campaign_id} = ${ad.campaign_id} AND
      ${fact.ad_group_id} = ${ad.ad_group_id} AND
      ${fact.creative_id} = ${ad.creative_id} AND
      ${fact._date} = ${ad._date}  ;;
    relationship: many_to_one
  }
  join: status_changes {
    sql_on: ${fact.external_customer_id} = ${status_changes.external_customer_id} AND
      ${fact.campaign_id} = ${status_changes.campaign_id} AND
      ${fact.ad_group_id} = ${status_changes.ad_group_id} AND
      ${fact.creative_id} = ${status_changes.creative_id} AND
      ${fact.date_date} = ${status_changes.date_date} ;;
    relationship:  one_to_many
  }
}

view: ad_key_base {
  extends: [ad_group_key_base]
  extension: required

  dimension: ad_key_base {
    hidden: yes
    sql: CONCAT(${ad_group_key_base}, "-", CAST(${creative_id} as STRING)) ;;
  }
  dimension: key_base {
    sql: ${ad_key_base} ;;
  }
}

view: ad_date_fact {
  extends: [ad_group_date_fact, ad_key_base]

  derived_table: {
    datagroup_trigger: adwords_etl_datagroup
    explore_source: ad_impressions_ad {
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
      column: creative_id { field: fact.creative_id }
    }
  }
  dimension: creative_id {
    hidden: yes
  }
  set: detail {
    fields: [external_customer_id, campaign_id, ad_group_id, creative_id]
  }
}
