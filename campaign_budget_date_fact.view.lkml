explore: campaign_budget_date_fact {
  persist_with: adwords_etl_datagroup
  hidden: yes
  label: "Campaign Budget Date Fact"
  view_label: "Campaign Budget Date Fact"
  from: campaign_budget_date_fact
  view_name: fact
  join: customer {
    from: customer
    view_label: "Customer"
    sql_on: ${fact.external_customer_id} = ${customer.external_customer_id} AND
      ${fact._date} = ${customer._date} ;;
    relationship: many_to_one
  }
  join: campaign {
    from: campaign
    view_label: "Campaign"
    sql_on: ${fact.campaign_id} = ${campaign.campaign_id} AND
      ${fact.external_customer_id} = ${campaign.external_customer_id} AND
      ${fact._date} = ${campaign._date} ;;
    relationship: many_to_one
  }
}

view: campaign_budget_date_fact {
  extends: [date_base, period_base]
  derived_table: {
    datagroup_trigger: adwords_etl_datagroup
    explore_source: ad_impressions_campaign {
      column: _date { field: fact.date_date}
      column: external_customer_id { field: fact.external_customer_id }
      column: campaign_id { field: fact.campaign_id }
      column: budget_id { field: campaign.budget_id }
      column: amount { field: campaign.amount }
      column: cost { field: fact.total_cost }
    }
  }
  dimension: campaign_id {
    hidden: yes
  }
  dimension: external_customer_id {
    hidden: yes
  }
  dimension: _date {
    hidden: yes
    type: date_raw
  }
  dimension: budget_id {
    hidden: yes
  }
  dimension: amount {}
  dimension: cost {}
  dimension: remaining_budget {
    type: number
    sql: ${amount} - ${cost} ;;
    value_format_name: usd_0
  }
  dimension: percent_remaining_budget {
    type: number
    sql: ${remaining_budget} / NULLIF(${amount},0) ;;
    value_format_name: percent_2
  }
  dimension: percent_used_budget {
    type: number
    sql: COALESCE(1 - ${percent_remaining_budget}, 0) ;;
    value_format_name: percent_2
  }
  dimension: percent_used_budget_tier {
    type: tier
    tiers: [0, 0.2, 0.4, 0.6, 0.8, 1]
    style: interval
    sql: ${percent_used_budget} ;;
    value_format_name: percent_2
  }
  dimension: constrained_budget {
    type: yesno
    description: "Daily spend within 20% of campaign budget"
    sql:  ${percent_remaining_budget} <= .2 ;;
  }
  measure: total_amount {
    type: sum
    sql: ${amount} ;;
    value_format_name: usd_0
  }
  measure: total_cost {
    type: sum
    sql: ${cost} ;;
    value_format_name: usd_0
  }
  measure: count_constrained_budget_days {
    type: count_distinct
    description: "Days with daily spend within 20% of campaign budget"
    sql:
      {% if _dialect._name == 'snowflake' %}
        TO_CHAR(${date_raw}) || '-' || TO_CHAR(${budget_id})
      {% elsif _dialect._name == 'redshift' %}
        CAST(${date_raw} as VARCHAR) || '-' || CAST(${budget_id} AS VARCHAR)
      {% else %}
        CONCAT(CAST(${date_raw} as STRING), CAST(${budget_id} as STRING))
      {% endif %} ;;
    filters: {
      field: constrained_budget
      value: "yes"
    }
  }
}
