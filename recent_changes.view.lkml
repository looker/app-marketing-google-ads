explore: ad_status {
  hidden: yes
}

view: ad_status {
  derived_table: {
    datagroup_trigger: adwords_etl_datagroup
    explore_source: ad {
      column: _date { field: ad._date }
      column: external_customer_id { field: ad.external_customer_id }
      column: campaign_id { field: ad.campaign_id }
      column: ad_group_id { field: ad.ad_group_id }
      column: creative_id { field: ad.creative_id }
      column: status { field: ad.status }
      derived_column: status_lag {
        sql: LAG(status, 1, "Not Present") OVER (PARTITION BY external_customer_id, campaign_id, ad_group_id, creative_id ORDER BY _date ASC) ;;
      }
    }
  }
  dimension: _date {}
  dimension: external_customer_id {}
  dimension: campaign_id {}
  dimension: ad_group_id {}
  dimension: creative_id {}
  dimension: status {}
  dimension: status_lag {}
  dimension: status_changed {
    type: yesno
    sql: ${status} != ${status_lag} ;;
  }
}

explore: keyword_status {
  hidden: yes
}

view: keyword_status {
  derived_table: {
    datagroup_trigger: adwords_etl_datagroup
    explore_source: keyword {
      column: _date { field: keyword._date }
      column: external_customer_id { field: keyword.external_customer_id }
      column: campaign_id { field: keyword.campaign_id }
      column: ad_group_id { field: keyword.ad_group_id }
      column: criterion_id { field: keyword.criterion_id }
      column: status { field: keyword.status }
      derived_column: status_lag {
        sql: LAG(status, 1, "Not Present") OVER (PARTITION BY external_customer_id, campaign_id, ad_group_id, criterion_id ORDER BY _date ASC) ;;
      }
    }
  }
  dimension: _date {}
  dimension: external_customer_id {}
  dimension: campaign_id {}
  dimension: ad_group_id {}
  dimension: criterion_id {}
  dimension: status {}
  dimension: status_lag {}
  dimension: status_changed {
    type: yesno
    sql: ${status} != ${status_lag} ;;
  }
}

explore: ad_group_status {
  hidden: yes
}

view: ad_group_status {
  derived_table: {
    datagroup_trigger: adwords_etl_datagroup
    explore_source: ad_group {
      column: _date { field: ad_group._date }
      column: external_customer_id { field: ad_group.external_customer_id }
      column: campaign_id { field: ad_group.campaign_id }
      column: ad_group_id { field: ad_group.ad_group_id }
      column: status { field: ad_group.ad_group_status }
      derived_column: status_lag {
        sql: LAG(status, 1, "Not Present") OVER (PARTITION BY external_customer_id, campaign_id, ad_group_id ORDER BY _date ASC) ;;
      }
    }
  }
  dimension: _date {}
  dimension: external_customer_id {}
  dimension: campaign_id {}
  dimension: ad_group_id {}
  dimension: status {}
  dimension: status_lag {}
  dimension: status_changed {
    type: yesno
    sql: ${status} != ${status_lag} ;;
  }
}

explore: campaign_status {
  hidden: yes
}

view: campaign_status {
  derived_table: {
    datagroup_trigger: adwords_etl_datagroup
    explore_source: campaign {
      column: _date { field: campaign._date }
      column: external_customer_id { field: campaign.external_customer_id }
      column: campaign_id { field: campaign.campaign_id }
      column: status { field: campaign.campaign_status }
      derived_column: status_lag {
        sql: LAG(status, 1, "Not Present") OVER (PARTITION BY external_customer_id, campaign_id ORDER BY _date ASC) ;;
      }
    }
  }
  dimension: _date {}
  dimension: external_customer_id {}
  dimension: campaign_id {}
  dimension: status {}
  dimension: status_lag {}
  dimension: status_changed {
    type: yesno
    sql: ${status} != ${status_lag} ;;
  }
}


explore: status_changes  {
  hidden: yes
  from: status_changes
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
    view_label: "Campaigns"
    sql_on: ${fact.campaign_id} = ${campaign.campaign_id} AND
      ${fact.external_customer_id} = ${campaign.external_customer_id} AND
      ${fact._date} = ${campaign._date} ;;
    relationship: many_to_one
  }

  join: ad_group {
    from: ad_group
    view_label: "Ad Groups"
    sql_on: ${fact.ad_group_id} = ${ad_group.ad_group_id} AND
      ${fact.campaign_id} = ${ad_group.campaign_id} AND
      ${fact.external_customer_id} = ${ad_group.external_customer_id} AND
      ${fact._date} = ${ad_group._date} ;;
    relationship: many_to_one
  }

  join: ad {
    from: ad
    view_label: "Ads"
    sql_on: ${fact.creative_id} = ${ad.creative_id} AND
      ${fact.ad_group_id} = ${ad.ad_group_id} AND
      ${fact.campaign_id} = ${ad.campaign_id} AND
      ${fact.external_customer_id} = ${ad.external_customer_id} AND
      ${fact._date} = ${ad._date} ;;
    relationship:  many_to_one
  }

  join: keyword {
    from: keyword
    view_label: "Keywords"
    sql_on: ${fact.criterion_id} = ${keyword.criterion_id} AND
      ${fact.ad_group_id} = ${keyword.ad_group_id} AND
      ${fact.campaign_id} = ${keyword.campaign_id} AND
      ${fact.external_customer_id} = ${keyword.external_customer_id} AND
      ${fact._date} = ${keyword._date} ;;
    relationship: many_to_one
  }

}

view: status_changes {
  extends: [date_base, period_base]
  derived_table: {
    datagroup_trigger: adwords_etl_datagroup
    sql:
    SELECT
      ad_status._date AS _date,
      ad_status.external_customer_id AS external_customer_id,
      ad_status.campaign_id AS campaign_id,
      ad_status.ad_group_id AS ad_group_id,
      ad_status.creative_id AS creative_id,
      null AS criterion_id,
      ad_status.status AS status,
      ad_status.status_lag AS status_lag
    FROM ${ad_status.SQL_TABLE_NAME} as ad_status
    WHERE
      ad_status.status != ad_status.status_lag
    UNION ALL
    SELECT
      keyword_status._date AS _date,
      keyword_status.external_customer_id AS external_customer_id,
      keyword_status.campaign_id AS campaign_id,
      keyword_status.ad_group_id AS ad_group_id,
      null AS creative_id,
      keyword_status.criterion_id AS criterion_id,
      keyword_status.status AS status,
      keyword_status.status_lag AS status_lag
    FROM ${keyword_status.SQL_TABLE_NAME} as keyword_status
    WHERE
      keyword_status.status != keyword_status.status_lag
    UNION ALL
    SELECT
      ad_group_status._date AS _date,
      ad_group_status.external_customer_id AS external_customer_id,
      ad_group_status.campaign_id AS campaign_id,
      ad_group_status.ad_group_id AS ad_group_id,
      null AS creative_id,
      null AS criterion_id,
      ad_group_status.status AS status,
      ad_group_status.status_lag AS status_lag
    FROM ${ad_group_status.SQL_TABLE_NAME} as ad_group_status
    WHERE
      ad_group_status.status != ad_group_status.status_lag
    UNION ALL
    SELECT
      campaign_status._date AS _date,
      campaign_status.external_customer_id AS external_customer_id,
      campaign_status.campaign_id AS campaign_id,
      null AS ad_group_id,
      null AS creative_id,
      null AS criterion_id,
      campaign_status.status AS status,
      campaign_status.status_lag AS status_lag
    FROM ${campaign_status.SQL_TABLE_NAME} as campaign_status
    WHERE
      campaign_status.status != campaign_status.status_lag
    ;;
  }

  dimension: external_customer_id {
    type: number
    hidden: yes
  }

  dimension: campaign_id {
    type: number
    hidden: yes
  }

  dimension: ad_group_id {
    type: number
    hidden: yes
  }

  dimension: creative_id {
    type: number
    hidden: yes
  }

  dimension: criterion_id {
    type: number
    hidden: yes
  }

  dimension: status_lag {
    hidden: yes
  }

  dimension: status {
    hidden: yes
  }

  dimension: change_type {
    type: string
    case: {
      when: {
        sql: ${status_lag} = "Not Present" ;;
        label: "Addition"
      }
      else: "Status Change"
    }
  }

  dimension: status_display {
    label: "Status Update"
    type: string
    case: {
      when: {
        sql: ${status} = 'Status_Enabled' OR ${status} = "ENABLED" OR ${status} = "Status_Active" AND ${change_type} = 'Status Change';;
        label: "Re-enabled"
      }
      when: {
        sql: ${status} = 'Status_Enabled' OR ${status} = "ENABLED" OR ${status} = "Status_Active" AND ${change_type} = 'Addition';;
        label: "Enabled"
      }
      else: "Disabled"
    }
  }

  dimension: _date {
    type: date_raw
    sql: ${TABLE}._date ;;
  }

  dimension_group: date {
    group_label: "Change"
  }

  dimension: content_type {
    type: string
    case: {
      when: {
        sql: ${creative_id} IS NOT NULL ;;
        label: "Ad"
      }
      when: {
        sql: ${criterion_id} IS NOT NULL ;;
        label: "Keyword"
      }
      when: {
        sql: ${ad_group_id} IS NOT NULL ;;
        label: "Ad Group"
      }
      when: {
        sql: ${campaign_id} IS NOT NULL ;;
        label: "Campaign"
      }
      else: "Other"
    }
  }

  measure: count_ad_changes {
    type: count
    filters: {
      field: campaign_id
      value: "not null"
    }
  }

  measure: count_keyword_changes {
    type: count
    filters: {
      field: criterion_id
      value: "not null"
    }
  }

  measure: count_campaign_changes {
    type: count
    filters: {
      field: campaign_id
      value: "not null"
    }
  }

  measure: count_ad_group_changes {
    type: count
    filters: {
      field: ad_group_id
      value: "not null"
    }
  }

  measure: count {
    type: count_distinct
    sql: COALESCE(${creative_id}, ${ad_group_id}, ${campaign_id}, ${criterion_id}) ;;
    description: "The number of Ads, Ad Groups, Keywords and Campaigns that changed status"
    html:  {% if (fact.content_type._value == 'Ad') %}
    <a href= "/embed/explore/marketing_analytics/status_changes?fields=ad.creative,fact.date_date, fact.status_display&f[fact.date_date]={{_filters['fact.period']}}"> {{value}}  </a>
    {% elsif (fact.content_type._value == 'Keyword') %}
    <a href= "/embed/explore/marketing_analytics/status_changes?fields=keyword.criteria,fact.date_date, fact.status_display&f[fact.date_date]={{_filters['fact.period']}}"> {{value}} </a>
     {% elsif (fact.content_type._value == 'Ad Group') %}
    <a href= "/embed/explore/marketing_analytics/status_changes?fields=ad_group.ad_group_name,fact.date_date, fact.status_display&f[fact.date_date]={{_filters['fact.period']}}"> {{value}}  </a>
    {% elsif (fact.content_type._value == 'Campaign') %}
    <a href= "/embed/explore/marketing_analytics/status_changes?fields=campaign.name,fact.date_date, fact.status_display&f[fact.date_date]={{_filters['fact.period']}}"> {{value}}  </a>
    {% endif %} ;;
  }
}
