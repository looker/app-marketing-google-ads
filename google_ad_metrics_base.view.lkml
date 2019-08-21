view: google_ad_metrics_dimension_base {
  extension: required

  dimension: interactions {
    hidden: yes
    type: number
    sql: ${TABLE}.Interactions ;;
  }

  dimension: average_position {
    hidden: yes
    type: number
    sql: ${TABLE}.AveragePosition ;;
  }
}

view: google_ad_metrics_base_template {
  extension: required
  extends: [ad_metrics_base, google_ad_metrics_dimension_base]

  measure: average_interaction_rate {
    label: "Interaction Rate"
    description: "Percent of people that interact with an ad."
    type: number
    sql: ${total_interactions}*1.0/nullif(${total_impressions},0) ;;
    value_format_name: percent_2
  }

  measure: average_cost_per_interaction {
    label: "Cost per Interaction"
    description: "Average cost per interaction with an ad."
    type: number
    sql: ${total_cost}*1.0 / NULLIF(${total_interactions},0) ;;
    value_format_name: usd
    link: {
      label: "By Keyword"
      url: "/explore/marketing_analytics/ad_impressions?fields=keyword.criteria,fact.average_cost_per_interaction&f[fact.date_date]=this quarter"
    }
  }

  measure: weighted_average_position {
    label: "Average Position"
    description: "Average auction position."
    type: number
    sql: SUM(${average_position}*${impressions}) / NULLIF(${total_impressions},0) ;;
    value_format_name: decimal_1
  }

  measure: total_interactions {
    label: "Interactions"
    description: "Total ad interactions."
    type:  sum
    sql:  ${interactions} ;;
    drill_fields: [external_customer_id, total_impressions]
    value_format_name: decimal_0
  }

  measure: total_impressions {}
  measure: total_clicks {}
  measure: total_conversions {
    drill_fields: [fact.date_date, campaign.name, fact.total_conversions]
  }
  measure: total_cost {
    drill_fields: [fact.date_date, campaign.name, fact.total_cost]
  }
  measure: total_conversionvalue {}
}
