explore: period_fact {
  extends: [customer_join, campaign_join, ad_group_join, keyword_join, ad_join]
  persist_with: adwords_etl_datagroup
  hidden: yes
  from: period_fact
  view_name: fact
  label: "Adwords Period Comparison"
  view_label: "This Period"

  join: last_fact {
    from: period_fact
    view_label: "Prior Period"
    sql_on:
      ${fact.date_last_period} = ${last_fact.date_period}
      AND ${fact.date_day_of_period} = ${last_fact.date_day_of_period}
      {% if (ad._in_query or fact.creative_id._in_query) %}
        AND ${fact.creative_id} = ${last_fact.creative_id}
      {% endif %}
      {% if (keyword._in_query or fact.criterion_id._in_query) or (ad._in_query or fact.creative_id._in_query) %}
        AND ${fact.criterion_id} = ${last_fact.criterion_id}
      {% endif %}
      {% if (ad_group._in_query or fact.ad_group_id._in_query) or (ad._in_query or fact.creative_id._in_query) or (keyword._in_query or fact.criterion_id._in_query) %}
        AND ${fact.ad_group_id} = ${last_fact.ad_group_id}
      {% endif %}
      {% if (campaign._in_query or fact.campaign_id._in_query) or (ad_group._in_query or fact.ad_group_id._in_query) or (ad._in_query or fact.creative_id._in_query) or (keyword._in_query or fact.criterion_id._in_query) %}
        AND ${fact.campaign_id} = ${last_fact.campaign_id}
      {% endif %}
      AND ${fact.external_customer_id} = ${last_fact.external_customer_id} ;;
    relationship: one_to_one
  }
  join: parent_fact {
    from: period_fact
    view_label: "Parent This Period"
    sql_on:
      ${fact.date_period} = ${parent_fact.date_period}
      AND ${fact.date_day_of_period} = ${last_fact.date_day_of_period}
      {% if (ad._in_query or fact.creative_id._in_query) or (keyword._in_query or fact.criterion_id._in_query) %}
        AND ${fact.ad_group_id} = ${parent_fact.ad_group_id}
      {% endif %}
      {% if (ad_group._in_query or fact.ad_group_id._in_query) or (ad._in_query or fact.creative_id._in_query) or (keyword._in_query or fact.criterion_id._in_query) %}
        AND ${fact.campaign_id} = ${parent_fact.campaign_id}
      {% endif %}
      {% if (campaign._in_query or fact.campaign_id._in_query) or (ad_group._in_query or fact.ad_group_id._in_query) or (ad._in_query or fact.creative_id._in_query) or (keyword._in_query or fact.criterion_id._in_query) %}
        AND ${fact.external_customer_id} = ${parent_fact.external_customer_id}
      {% endif %} ;;
    relationship: many_to_one
  }
  join: total {
    from: date_fact
    view_label: "Total This Period"
    sql_on: ${fact.date_period} = ${total.date_period} ;;
    relationship: many_to_one
  }
  join: last_total {
    from: date_fact
    view_label: "Total Last Period"
    sql_on: ${fact.date_last_period} = ${last_total.date_period} ;;
    relationship: many_to_one
  }
}

view: period_fact {
  extends: [date_base, period_base, ad_metrics_period_comparison_base, ad_metrics_weighted_period_comparison_base, ad_metrics_parent_comparison_base, google_ad_metrics_base]

  dimension: external_customer_id {
    hidden: yes
  }
  dimension: campaign_id {
    hidden: yes
  }
  dimension: ad_group_id {
    hidden: yes
  }
  dimension: creative_id {
    hidden: yes
  }
  dimension: criterion_id {
    hidden: yes
  }
  dimension: _date {
    type: date_raw
    sql:
      {% if _dialect._name == 'snowflake' %}
        TO_DATE(${TABLE}._date)
      {% else %}
        CAST(${TABLE}._date AS DATE)
      {% endif %} ;;
  }

  sql_table_name:
  {% if (ad._in_query or fact.creative_id._in_query) %}
    ${ad_date_fact.SQL_TABLE_NAME}
  {% elsif (keyword._in_query or fact.criterion_id._in_query) %}
    ${keyword_date_fact.SQL_TABLE_NAME}
  {% elsif (ad_group._in_query or fact.ad_group_id._in_query) %}
    ${ad_group_date_fact.SQL_TABLE_NAME}
  {% elsif (campaign._in_query or fact.campaign_id._in_query) %}
    ${campaign_date_fact.SQL_TABLE_NAME}
  {% else %}
    ${account_date_fact.SQL_TABLE_NAME}
  {% endif %} ;;

  dimension: key_base {
    hidden: yes
    sql:
      {% if _dialect._name == 'snowflake' %}
        TO_CHAR(${external_customer_id})
          {% if (campaign._in_query or fact.campaign_id._in_query or ad_group._in_query or fact.ad_group_id._in_query or ad._in_query or fact.creative_id._in_query or keyword._in_query or fact.criterion_id._in_query) %}
            || '-' || TO_CHAR(${campaign_id})
          {% endif %}
          {% if (ad_group._in_query or fact.ad_group_id._in_query or ad._in_query or fact.creative_id._in_query or keyword._in_query or fact.criterion_id._in_query) %}
            || '-' || TO_CHAR(${ad_group_id})
          {% endif %}
          {% if (ad._in_query or fact.creative_id._in_query) %}
            || '-' || TO_CHAR(${creative_id})
          {% elsif (keyword._in_query or fact.criterion_id._in_query) %}
            || '-' || TO_CHAR(${criterion_id})
          {% endif %}
      {% elsif _dialect._name == 'redshift' %}
        CAST(${external_customer_id} AS VARCHAR)
          {% if (campaign._in_query or fact.campaign_id._in_query or ad_group._in_query or fact.ad_group_id._in_query or ad._in_query or fact.creative_id._in_query or keyword._in_query or fact.criterion_id._in_query) %}
            || '-' || CAST(${campaign_id} AS VARCHAR)
          {% endif %}
          {% if (ad_group._in_query or fact.ad_group_id._in_query or ad._in_query or fact.creative_id._in_query or keyword._in_query or fact.criterion_id._in_query) %}
            || '-' || CAST(${ad_group_id} AS VARCHAR)
          {% endif %}
          {% if (ad._in_query or fact.creative_id._in_query) %}
            '-' || CAST(${creative_id} AS VARCHAR)
          {% elsif (keyword._in_query or fact.criterion_id._in_query) %}
            || '-' || CAST(${criterion_id} AS VARCHAR)
          {% endif %}
      {% else %}
        CONCAT(
        CAST(${external_customer_id} AS STRING)
          {% if (campaign._in_query or fact.campaign_id._in_query or ad_group._in_query or fact.ad_group_id._in_query or ad._in_query or fact.creative_id._in_query or keyword._in_query or fact.criterion_id._in_query) %}
            ,"-", CAST(${campaign_id} AS STRING)
          {% endif %}
          {% if (ad_group._in_query or fact.ad_group_id._in_query or ad._in_query or fact.creative_id._in_query or keyword._in_query or fact.criterion_id._in_query) %}
            ,"-", CAST(${ad_group_id} AS STRING)
          {% endif %}
          {% if (ad._in_query or fact.creative_id._in_query) %}
            ,"-", CAST(${creative_id} AS STRING)
          {% elsif (keyword._in_query or fact.criterion_id._in_query) %}
            ,"-", CAST(${criterion_id} AS STRING)
          {% endif %}
        )
          {% endif %}
       ;;
  }
  dimension: primary_key {
    primary_key: yes
    hidden: yes
    sql:
      {% if _dialect._name == 'snowflake' %}
        TO_CHAR(${date_period}) || '-' || TO_CHAR(${date_day_of_period}) || '-' ||  ${key_base}
      {% elsif _dialect._name == 'redshift' %}
        CAST(${date_period} as STRING) || '-' || CAST(${date_day_of_period} as STRING) || '-' ||  ${key_base}
      {% else %}
        concat(CAST(${date_period} as STRING), CAST(${date_day_of_period} as STRING), ${key_base})
      {% endif %} ;;
  }
}
