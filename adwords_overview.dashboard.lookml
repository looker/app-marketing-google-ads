- dashboard: adwords_overview
  extends: google_ads_base
  title: Google AdWords Overview
  elements:
  - title: Conversion Trend
    name: Conversion Trend
    model: marketing_analytics
    explore: period_fact
    type: looker_area
    fields: [fact.date_period_dynamic_grain, fact.average_cost_per_conversion, fact.average_conversion_rate,
      fact.total_conversions, fact.average_cost_per_click, fact.average_click_rate,
      fact.total_clicks]
    sorts: [fact.date_period_dynamic_grain]
    limit: 500
    column_limit: 50
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    x_axis_scale: time
    y_axis_scale_mode: linear
    show_null_points: false
    point_style: none
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    label: Average Cost per Conversion
    ordering: none
    show_null_labels: false
    leftAxisLabelVisible: false
    leftAxisLabel: ''
    rightAxisLabelVisible: false
    rightAxisLabel: ''
    barColors: [red, blue]
    smoothedBars: false
    orientation: automatic
    labelPosition: left
    percentType: total
    percentPosition: inline
    valuePosition: right
    labelColorEnabled: false
    labelColor: "#FFF"
    series_types:
      fact.average_cost_per_conversion: line
      fact.total_impressions: line
      fact.total_clicks: line
      fact.average_conversion_rate: line
    show_dropoff: true
    y_axes: [{label: '', maxValue: !!null '', minValue: !!null '', orientation: left,
        showLabels: true, showValues: true, tickDensity: default, tickDensityCustom: !!null '',
        type: linear, unpinAxis: false, valueFormat: "$0", series: [{id: fact.average_cost_per_conversion,
            name: Cost per Conversion, __FILE: app-marketing-config-3d4d8a33c661890929b121b4e924d117-a68b43c6a8cf419cb1a5c8f0438a929da123891e/adwords_overview.dashboard.lookml,
            __LINE_NUM: 185, axisId: fact.average_cost_per_conversion}], __FILE: app-marketing-config-3d4d8a33c661890929b121b4e924d117-a68b43c6a8cf419cb1a5c8f0438a929da123891e/adwords_overview.dashboard.lookml,
        __LINE_NUM: 173}, {label: '', maxValue: !!null '', minValue: !!null '', orientation: right,
        showLabels: true, showValues: true, tickDensity: default, tickDensityCustom: !!null '',
        type: linear, unpinAxis: false, valueFormat: 0.0%, series: [{id: fact.average_conversion_rate,
            name: Conversion Rate, axisId: fact.average_conversion_rate, __FILE: app-marketing-config-3d4d8a33c661890929b121b4e924d117-a68b43c6a8cf419cb1a5c8f0438a929da123891e/adwords_overview.dashboard.lookml,
            __LINE_NUM: 204}], __FILE: app-marketing-config-3d4d8a33c661890929b121b4e924d117-a68b43c6a8cf419cb1a5c8f0438a929da123891e/adwords_overview.dashboard.lookml,
        __LINE_NUM: 192}, {label: !!null '', maxValue: !!null '', minValue: !!null '',
        orientation: right, showLabels: true, showValues: true, tickDensity: default,
        tickDensityCustom: !!null '', type: linear, unpinAxis: false, valueFormat: '',
        series: [{id: fact.total_conversions, name: Conversions, axisId: fact.total_conversions,
            __FILE: app-marketing-config-3d4d8a33c661890929b121b4e924d117-a68b43c6a8cf419cb1a5c8f0438a929da123891e/adwords_overview.dashboard.lookml,
            __LINE_NUM: 223}], __FILE: app-marketing-config-3d4d8a33c661890929b121b4e924d117-a68b43c6a8cf419cb1a5c8f0438a929da123891e/adwords_overview.dashboard.lookml,
        __LINE_NUM: 211}]
    discontinuous_nulls: false
    focus_on_hover: false
    reference_lines: []
    colors: ["#7869df", "#6e98f9", "#8ac8ca", "#d06180", "#dc9d4f", "#4bb86a", "#a4a6a9",
      "#a6b7ff", "#afe8fd", "#ea9895", "#f1e582"]
    series_colors: {}
    hidden_series: [fact.total_conversions, fact.average_conversion_rate]
    series_labels:
      fact.total_cost: Spend
      fact.total_clicks: Clicks
    hidden_fields: [fact.average_cost_per_click, fact.average_click_rate, fact.total_clicks]
    listen:
      Account: customer.account_descriptive_name
      Campaign: campaign.name
      Ad Group: ad_group.ad_group_name
      Period: fact.period
      Period Latest: fact.date_period_latest
    row: 3
    col: 9
    width: 15
    height: 10
  - title: Click Trend
    name: Click Trend
    model: marketing_analytics
    explore: period_fact
    type: looker_line
    fields: [fact.date_period_dynamic_grain, fact.average_cost_per_click, fact.average_click_rate,
      fact.total_clicks, fact.average_cost_per_conversion, fact.average_conversion_rate,
      fact.total_conversions]
    sorts: [fact.date_period_dynamic_grain]
    limit: 500
    column_limit: 50
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    x_axis_scale: time
    y_axis_scale_mode: linear
    show_null_points: false
    point_style: none
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    label: Average Cost per Conversion
    ordering: none
    show_null_labels: false
    leftAxisLabelVisible: false
    leftAxisLabel: ''
    rightAxisLabelVisible: false
    rightAxisLabel: ''
    barColors: [red, blue]
    smoothedBars: false
    orientation: automatic
    labelPosition: left
    percentType: total
    percentPosition: inline
    valuePosition: right
    labelColorEnabled: false
    labelColor: "#FFF"
    series_types:
      fact.total_clicks: area
    show_dropoff: true
    y_axes: [{label: '', maxValue: !!null '', minValue: !!null '', orientation: left,
        showLabels: true, showValues: true, tickDensity: default, tickDensityCustom: !!null '',
        type: linear, unpinAxis: false, valueFormat: "$0", series: [{id: fact.average_cost_per_click,
            name: Cost per Click, __FILE: app-marketing-config-3d4d8a33c661890929b121b4e924d117-a68b43c6a8cf419cb1a5c8f0438a929da123891e/adwords_overview.dashboard.lookml,
            __LINE_NUM: 528, axisId: fact.average_cost_per_click}], __FILE: app-marketing-config-3d4d8a33c661890929b121b4e924d117-a68b43c6a8cf419cb1a5c8f0438a929da123891e/adwords_overview.dashboard.lookml,
        __LINE_NUM: 516}, {label: !!null '', maxValue: !!null '', minValue: !!null '',
        orientation: right, showLabels: true, showValues: true, tickDensity: default,
        tickDensityCustom: !!null '', type: linear, unpinAxis: false, valueFormat: 0.0%,
        series: [{id: fact.average_click_rate, name: Click Through Rate, axisId: fact.average_click_rate,
            __FILE: app-marketing-config-3d4d8a33c661890929b121b4e924d117-a68b43c6a8cf419cb1a5c8f0438a929da123891e/adwords_overview.dashboard.lookml,
            __LINE_NUM: 547}], __FILE: app-marketing-config-3d4d8a33c661890929b121b4e924d117-a68b43c6a8cf419cb1a5c8f0438a929da123891e/adwords_overview.dashboard.lookml,
        __LINE_NUM: 535}, {label: '', maxValue: !!null '', minValue: !!null '', orientation: right,
        showLabels: true, showValues: true, tickDensity: default, tickDensityCustom: !!null '',
        type: linear, unpinAxis: false, valueFormat: !!null '', series: [{id: fact.total_clicks,
            name: Clicks, axisId: fact.total_clicks, __FILE: app-marketing-config-3d4d8a33c661890929b121b4e924d117-a68b43c6a8cf419cb1a5c8f0438a929da123891e/adwords_overview.dashboard.lookml,
            __LINE_NUM: 566}], __FILE: app-marketing-config-3d4d8a33c661890929b121b4e924d117-a68b43c6a8cf419cb1a5c8f0438a929da123891e/adwords_overview.dashboard.lookml,
        __LINE_NUM: 554}]
    discontinuous_nulls: false
    focus_on_hover: false
    reference_lines: []
    colors: ["#d06180", "#dc9d4f", "#7869df", "#6e98f9", "#8ac8ca", "#4bb86a", "#a4a6a9",
      "#a6b7ff", "#afe8fd", "#ea9895", "#f1e582"]
    series_colors: {}
    hidden_series: [fact.average_click_rate, fact.total_clicks]
    series_labels:
      fact.total_cost: Spend
      fact.total_clicks: Clicks
    hidden_fields: [fact.average_cost_per_conversion, fact.average_conversion_rate,
      fact.total_conversions]
    y_axis_reversed: false
    listen:
      Account: customer.account_descriptive_name
      Campaign: campaign.name
      Ad Group: ad_group.ad_group_name
      Period: fact.period
      Period Latest: fact.date_period_latest
    row: 13
    col: 14
    width: 10
    height: 6
  - title: Campaigns
    name: Campaigns
    model: marketing_analytics
    explore: period_fact
    type: table
    fields: [campaign.name, fact.total_cost, fact.total_conversions,
      fact.average_cost_per_conversion, fact.average_conversion_rate, fact.average_cost_per_click,
      fact.average_click_rate]
    sorts: [fact.total_cost desc]
    limit: 10
    column_limit: 50
    query_timezone: America/Los_Angeles
    label: Campaign Details
    show_view_names: false
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: white
    limit_displayed_rows: false
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    enable_conditional_formatting: false
    conditional_formatting_ignored_fields: []
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_fields:
    series_labels:
      fact.total_cost: Spend
    listen:
      Account: customer.account_descriptive_name
      Campaign: campaign.name
      Ad Group: ad_group.ad_group_name
      Period: fact.period
      Period Latest: fact.date_period_latest
    row: 19
    col: 0
    width: 24
    height: 6
  - title: Spend
    name: Spend
    model: marketing_analytics
    explore: period_fact
    type: single_value
    fields: [fact.total_cost, fact.total_conversions, last_fact.total_cost, last_fact.total_conversions,
      last_fact.average_cost_per_conversion, fact.average_cost_per_conversion, fact.average_conversion_rate,
      last_fact.average_conversion_rate, fact.average_click_rate, last_fact.average_click_rate,
      fact.average_cost_per_click, last_fact.average_cost_per_click, fact.date_period]
    sorts: [fact.date_period]
    limit: 1
    dynamic_fields: [{table_calculation: total_cost_change, label: Total Cost Change,
        expression: "${fact.total_cost} - ${last_fact.total_cost}", value_format: !!null '',
        value_format_name: usd_0, _kind_hint: measure, _type_hint: number}, {table_calculation: total_conversion_change,
        label: Total Conversion Change, expression: "${fact.total_conversions} - ${last_fact.total_conversions}",
        value_format: !!null '', value_format_name: decimal_0, _kind_hint: measure,
        _type_hint: number}, {table_calculation: cost_per_conversion_percent_change,
        label: Cost Per Conversion Percent Change, expression: "(${fact.average_cost_per_conversion}\
          \ - ${last_fact.average_cost_per_conversion}) / ${last_fact.average_cost_per_conversion}",
        value_format: !!null '', value_format_name: percent_0, _kind_hint: measure,
        _type_hint: number}, {table_calculation: cost_per_click_percent_change, label: Cost
          Per Click Percent Change, expression: "(${fact.average_cost_per_click} -\
          \ ${last_fact.average_cost_per_click}) / ${last_fact.average_cost_per_click}",
        value_format: !!null '', value_format_name: percent_0, _kind_hint: measure,
        _type_hint: number}, {table_calculation: conversion_rate_percent_change, label: Conversion
          Rate Percent Change, expression: "(${fact.average_conversion_rate} - ${last_fact.average_conversion_rate})\
          \ / ${last_fact.average_conversion_rate}", value_format: !!null '', value_format_name: percent_0,
        _kind_hint: measure, _type_hint: number}, {table_calculation: click_through_rate_percent_change,
        label: Click Through Rate Percent Change, expression: "(${fact.average_click_rate}\
          \ - ${last_fact.average_click_rate}) / ${last_fact.average_click_rate}",
        value_format: !!null '', value_format_name: percent_0, _kind_hint: measure,
        _type_hint: number}]
    query_timezone: America/Los_Angeles
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: true
    show_comparison_label: false
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    hidden_fields: [last_fact.total_cost, fact.total_conversions, last_fact.total_conversions,
      last_fact.average_cost_per_conversion, fact.average_cost_per_conversion, fact.average_conversion_rate,
      last_fact.average_conversion_rate, fact.average_click_rate, last_fact.average_click_rate,
      fact.average_cost_per_click, last_fact.average_cost_per_click, click_through_rate_percent_change,
      conversion_rate_percent_change, cost_per_click_percent_change, cost_per_conversion_percent_change,
      total_conversion_change, fact.date_period]
    single_value_title: Spend
    listen:
      Account: customer.account_descriptive_name
      Campaign: campaign.name
      Ad Group: ad_group.ad_group_name
      Period: fact.period
      Period Latest: fact.date_period_latest
    row: 0
    col: 0
    width: 9
    height: 3
  - title: Conversions
    name: Conversions
    model: marketing_analytics
    explore: period_fact
    type: single_value
    fields: [fact.total_cost, fact.total_conversions, last_fact.total_cost, last_fact.total_conversions,
      last_fact.average_cost_per_conversion, fact.average_cost_per_conversion, fact.average_conversion_rate,
      last_fact.average_conversion_rate, fact.average_click_rate, last_fact.average_click_rate,
      fact.average_cost_per_click, last_fact.average_cost_per_click, fact.date_period]
    sorts: [fact.date_period]
    limit: 1
    dynamic_fields: [{table_calculation: total_cost_change, label: Total Cost Change,
        expression: "${fact.total_cost} - ${last_fact.total_cost}", value_format: !!null '',
        value_format_name: usd_0, _kind_hint: measure, _type_hint: number}, {table_calculation: total_conversion_change,
        label: Total Conversion Change, expression: "${fact.total_conversions} - ${last_fact.total_conversions}",
        value_format: !!null '', value_format_name: decimal_0, _kind_hint: measure,
        _type_hint: number}, {table_calculation: cost_per_conversion_percent_change,
        label: Cost Per Conversion Percent Change, expression: "(${fact.average_cost_per_conversion}\
          \ - ${last_fact.average_cost_per_conversion}) / ${last_fact.average_cost_per_conversion}",
        value_format: !!null '', value_format_name: percent_0, _kind_hint: measure,
        _type_hint: number}, {table_calculation: cost_per_click_percent_change, label: Cost
          Per Click Percent Change, expression: "(${fact.average_cost_per_click} -\
          \ ${last_fact.average_cost_per_click}) / ${last_fact.average_cost_per_click}",
        value_format: !!null '', value_format_name: percent_0, _kind_hint: measure,
        _type_hint: number}, {table_calculation: conversion_rate_percent_change, label: Conversion
          Rate Percent Change, expression: "(${fact.average_conversion_rate} - ${last_fact.average_conversion_rate})\
          \ / ${last_fact.average_conversion_rate}", value_format: !!null '', value_format_name: percent_0,
        _kind_hint: measure, _type_hint: number}, {table_calculation: click_through_rate_percent_change,
        label: Click Through Rate Percent Change, expression: "(${fact.average_click_rate}\
          \ - ${last_fact.average_click_rate}) / ${last_fact.average_click_rate}",
        value_format: !!null '', value_format_name: percent_0, _kind_hint: measure,
        _type_hint: number}]
    query_timezone: America/Los_Angeles
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: false
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    hidden_fields: [fact.total_cost, last_fact.total_cost, last_fact.total_conversions,
      last_fact.average_cost_per_conversion, fact.average_cost_per_conversion, fact.average_conversion_rate,
      last_fact.average_conversion_rate, fact.average_click_rate, last_fact.average_click_rate,
      fact.average_cost_per_click, last_fact.average_cost_per_click, click_through_rate_percent_change,
      conversion_rate_percent_change, cost_per_click_percent_change, cost_per_conversion_percent_change,
      total_cost_change]
    single_value_title: ''
    listen:
      Account: customer.account_descriptive_name
      Campaign: campaign.name
      Ad Group: ad_group.ad_group_name
      Period: fact.period
      Period Latest: fact.date_period_latest
    row: 0
    col: 9
    width: 5
    height: 3
  - title: Cost Per Conversion
    name: Cost Per Conversion
    model: marketing_analytics
    explore: period_fact
    type: single_value
    fields: [fact.total_cost, fact.total_conversions, last_fact.total_cost, last_fact.total_conversions,
      last_fact.average_cost_per_conversion, fact.average_cost_per_conversion, fact.average_conversion_rate,
      last_fact.average_conversion_rate, fact.average_click_rate, last_fact.average_click_rate,
      fact.average_cost_per_click, last_fact.average_cost_per_click, fact.date_period]
    sorts: [fact.date_period]
    limit: 1
    dynamic_fields: [{table_calculation: total_cost_change, label: Total Cost Change,
        expression: "${fact.total_cost} - ${last_fact.total_cost}", value_format: !!null '',
        value_format_name: usd_0, _kind_hint: measure, _type_hint: number}, {table_calculation: total_conversion_change,
        label: Total Conversion Change, expression: "${fact.total_conversions} - ${last_fact.total_conversions}",
        value_format: !!null '', value_format_name: decimal_0, _kind_hint: measure,
        _type_hint: number}, {table_calculation: cost_per_conversion_percent_change,
        label: Cost Per Conversion Percent Change, expression: "(${fact.average_cost_per_conversion}\
          \ - ${last_fact.average_cost_per_conversion}) / ${last_fact.average_cost_per_conversion}",
        value_format: !!null '', value_format_name: percent_0, _kind_hint: measure,
        _type_hint: number}, {table_calculation: cost_per_click_percent_change, label: Cost
          Per Click Percent Change, expression: "(${fact.average_cost_per_click} -\
          \ ${last_fact.average_cost_per_click}) / ${last_fact.average_cost_per_click}",
        value_format: !!null '', value_format_name: percent_0, _kind_hint: measure,
        _type_hint: number}, {table_calculation: conversion_rate_percent_change, label: Conversion
          Rate Percent Change, expression: "(${fact.average_conversion_rate} - ${last_fact.average_conversion_rate})\
          \ / ${last_fact.average_conversion_rate}", value_format: !!null '', value_format_name: percent_0,
        _kind_hint: measure, _type_hint: number}, {table_calculation: click_through_rate_percent_change,
        label: Click Through Rate Percent Change, expression: "(${fact.average_click_rate}\
          \ - ${last_fact.average_click_rate}) / ${last_fact.average_click_rate}",
        value_format: !!null '', value_format_name: percent_0, _kind_hint: measure,
        _type_hint: number}]
    query_timezone: America/Los_Angeles
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: true
    show_comparison_label: false
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    hidden_fields: [fact.total_cost, last_fact.total_cost, fact.total_conversions,
      last_fact.total_conversions, last_fact.average_cost_per_conversion, fact.average_conversion_rate,
      last_fact.average_conversion_rate, fact.average_click_rate, last_fact.average_click_rate,
      fact.average_cost_per_click, last_fact.average_cost_per_click, click_through_rate_percent_change,
      conversion_rate_percent_change, cost_per_click_percent_change, total_conversion_change,
      total_cost_change]
    single_value_title: Per Conversion
    listen:
      Account: customer.account_descriptive_name
      Campaign: campaign.name
      Ad Group: ad_group.ad_group_name
      Period: fact.period
      Period Latest: fact.date_period_latest
    row: 0
    col: 14
    width: 5
    height: 3
  - title: Conversion Rate
    name: Conversion Rate
    model: marketing_analytics
    explore: period_fact
    type: single_value
    fields: [fact.total_cost, fact.total_conversions, last_fact.total_cost, last_fact.total_conversions,
      last_fact.average_cost_per_conversion, fact.average_cost_per_conversion, fact.average_conversion_rate,
      last_fact.average_conversion_rate, fact.average_click_rate, last_fact.average_click_rate,
      fact.average_cost_per_click, last_fact.average_cost_per_click, fact.date_period]
    sorts: [fact.date_period]
    limit: 1
    dynamic_fields: [{table_calculation: total_cost_change, label: Total Cost Change,
        expression: "${fact.total_cost} - ${last_fact.total_cost}", value_format: !!null '',
        value_format_name: usd_0, _kind_hint: measure, _type_hint: number}, {table_calculation: total_conversion_change,
        label: Total Conversion Change, expression: "${fact.total_conversions} - ${last_fact.total_conversions}",
        value_format: !!null '', value_format_name: decimal_0, _kind_hint: measure,
        _type_hint: number}, {table_calculation: cost_per_conversion_percent_change,
        label: Cost Per Conversion Percent Change, expression: "(${fact.average_cost_per_conversion}\
          \ - ${last_fact.average_cost_per_conversion}) / ${last_fact.average_cost_per_conversion}",
        value_format: !!null '', value_format_name: percent_0, _kind_hint: measure,
        _type_hint: number}, {table_calculation: cost_per_click_percent_change, label: Cost
          Per Click Percent Change, expression: "(${fact.average_cost_per_click} -\
          \ ${last_fact.average_cost_per_click}) / ${last_fact.average_cost_per_click}",
        value_format: !!null '', value_format_name: percent_0, _kind_hint: measure,
        _type_hint: number}, {table_calculation: conversion_rate_percent_change, label: Conversion
          Rate Percent Change, expression: "(${fact.average_conversion_rate} - ${last_fact.average_conversion_rate})\
          \ / ${last_fact.average_conversion_rate}", value_format: !!null '', value_format_name: percent_0,
        _kind_hint: measure, _type_hint: number}, {table_calculation: click_through_rate_percent_change,
        label: Click Through Rate Percent Change, expression: "(${fact.average_click_rate}\
          \ - ${last_fact.average_click_rate}) / ${last_fact.average_click_rate}",
        value_format: !!null '', value_format_name: percent_0, _kind_hint: measure,
        _type_hint: number}]
    query_timezone: America/Los_Angeles
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: false
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    hidden_fields: [fact.total_cost, last_fact.total_cost, fact.total_conversions,
      last_fact.total_conversions, last_fact.average_cost_per_conversion, fact.average_cost_per_conversion,
      last_fact.average_conversion_rate, fact.average_click_rate, last_fact.average_click_rate,
      fact.average_cost_per_click, last_fact.average_cost_per_click, click_through_rate_percent_change,
      cost_per_click_percent_change, cost_per_conversion_percent_change, total_conversion_change,
      total_cost_change]
    single_value_title: ''
    listen:
      Account: customer.account_descriptive_name
      Campaign: campaign.name
      Ad Group: ad_group.ad_group_name
      Period: fact.period
      Period Latest: fact.date_period_latest
    row: 0
    col: 19
    width: 5
    height: 3
  - title: Click Rate
    name: Click Rate
    model: marketing_analytics
    explore: period_fact
    type: single_value
    fields: [fact.total_cost, fact.total_conversions, last_fact.total_cost, last_fact.total_conversions,
      last_fact.average_cost_per_conversion, fact.average_cost_per_conversion, fact.average_conversion_rate,
      last_fact.average_conversion_rate, fact.average_click_rate, last_fact.average_click_rate,
      fact.average_cost_per_click, last_fact.average_cost_per_click, fact.date_period]
    sorts: [fact.date_period]
    limit: 1
    dynamic_fields: [{table_calculation: total_cost_change, label: Total Cost Change,
        expression: "${fact.total_cost} - ${last_fact.total_cost}", value_format: !!null '',
        value_format_name: usd_0, _kind_hint: measure, _type_hint: number}, {table_calculation: total_conversion_change,
        label: Total Conversion Change, expression: "${fact.total_conversions} - ${last_fact.total_conversions}",
        value_format: !!null '', value_format_name: decimal_0, _kind_hint: measure,
        _type_hint: number}, {table_calculation: cost_per_conversion_percent_change,
        label: Cost Per Conversion Percent Change, expression: "(${fact.average_cost_per_conversion}\
          \ - ${last_fact.average_cost_per_conversion}) / ${last_fact.average_cost_per_conversion}",
        value_format: !!null '', value_format_name: percent_0, _kind_hint: measure,
        _type_hint: number}, {table_calculation: cost_per_click_percent_change, label: Cost
          Per Click Percent Change, expression: "(${fact.average_cost_per_click} -\
          \ ${last_fact.average_cost_per_click}) / ${last_fact.average_cost_per_click}",
        value_format: !!null '', value_format_name: percent_0, _kind_hint: measure,
        _type_hint: number}, {table_calculation: conversion_rate_percent_change, label: Conversion
          Rate Percent Change, expression: "(${fact.average_conversion_rate} - ${last_fact.average_conversion_rate})\
          \ / ${last_fact.average_conversion_rate}", value_format: !!null '', value_format_name: percent_0,
        _kind_hint: measure, _type_hint: number}, {table_calculation: click_through_rate_percent_change,
        label: Click Through Rate Percent Change, expression: "(${fact.average_click_rate}\
          \ - ${last_fact.average_click_rate}) / ${last_fact.average_click_rate}",
        value_format: !!null '', value_format_name: percent_0, _kind_hint: measure,
        _type_hint: number}]
    query_timezone: America/Los_Angeles
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: false
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    hidden_fields: [fact.total_cost, last_fact.total_cost, fact.total_conversions,
      last_fact.total_conversions, last_fact.average_cost_per_conversion, fact.average_cost_per_conversion,
      fact.average_conversion_rate, last_fact.average_conversion_rate, last_fact.average_click_rate,
      fact.average_cost_per_click, last_fact.average_cost_per_click, conversion_rate_percent_change,
      cost_per_click_percent_change, cost_per_conversion_percent_change, total_conversion_change,
      total_cost_change, fact.date_period]
    single_value_title: ''
    listen:
      Account: customer.account_descriptive_name
      Campaign: campaign.name
      Ad Group: ad_group.ad_group_name
      Period: fact.period
      Period Latest: fact.date_period_latest
    row: 13
    col: 9
    width: 5
    height: 3
  - title: Per Click
    name: Per Click
    model: marketing_analytics
    explore: period_fact
    type: single_value
    fields: [fact.total_cost, fact.total_conversions, last_fact.total_cost, last_fact.total_conversions,
      last_fact.average_cost_per_conversion, fact.average_cost_per_conversion, fact.average_conversion_rate,
      last_fact.average_conversion_rate, fact.average_click_rate, last_fact.average_click_rate,
      fact.average_cost_per_click, last_fact.average_cost_per_click, fact.date_period]
    sorts: [fact.date_period]
    limit: 1
    dynamic_fields: [{table_calculation: total_cost_change, label: Total Cost Change,
        expression: "${fact.total_cost} - ${last_fact.total_cost}", value_format: !!null '',
        value_format_name: usd_0, _kind_hint: measure, _type_hint: number}, {table_calculation: total_conversion_change,
        label: Total Conversion Change, expression: "${fact.total_conversions} - ${last_fact.total_conversions}",
        value_format: !!null '', value_format_name: decimal_0, _kind_hint: measure,
        _type_hint: number}, {table_calculation: cost_per_conversion_percent_change,
        label: Cost Per Conversion Percent Change, expression: "(${fact.average_cost_per_conversion}\
          \ - ${last_fact.average_cost_per_conversion}) / ${last_fact.average_cost_per_conversion}",
        value_format: !!null '', value_format_name: percent_0, _kind_hint: measure,
        _type_hint: number}, {table_calculation: cost_per_click_percent_change, label: Cost
          Per Click Percent Change, expression: "(${fact.average_cost_per_click} -\
          \ ${last_fact.average_cost_per_click}) / ${last_fact.average_cost_per_click}",
        value_format: !!null '', value_format_name: percent_0, _kind_hint: measure,
        _type_hint: number}, {table_calculation: conversion_rate_percent_change, label: Conversion
          Rate Percent Change, expression: "(${fact.average_conversion_rate} - ${last_fact.average_conversion_rate})\
          \ / ${last_fact.average_conversion_rate}", value_format: !!null '', value_format_name: percent_0,
        _kind_hint: measure, _type_hint: number}, {table_calculation: click_through_rate_percent_change,
        label: Click Through Rate Percent Change, expression: "(${fact.average_click_rate}\
          \ - ${last_fact.average_click_rate}) / ${last_fact.average_click_rate}",
        value_format: !!null '', value_format_name: percent_0, _kind_hint: measure,
        _type_hint: number}]
    query_timezone: America/Los_Angeles
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: true
    show_comparison_label: false
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    hidden_fields: [fact.total_cost, last_fact.total_cost, fact.total_conversions,
      last_fact.total_conversions, last_fact.average_cost_per_conversion, fact.average_cost_per_conversion,
      fact.average_conversion_rate, last_fact.average_conversion_rate, fact.average_click_rate,
      last_fact.average_click_rate, last_fact.average_cost_per_click, click_through_rate_percent_change,
      conversion_rate_percent_change, cost_per_conversion_percent_change, total_conversion_change,
      total_cost_change]
    single_value_title: ''
    listen:
      Account: customer.account_descriptive_name
      Campaign: campaign.name
      Ad Group: ad_group.ad_group_name
      Period: fact.period
      Period Latest: fact.date_period_latest
    row: 16
    col: 9
    width: 5
    height: 3
  - title: Spend To Date
    name: Spend To Date
    model: marketing_analytics
    explore: period_fact
    type: looker_area
    fields: [fact.date_day_of_period, fact.total_cost, fact.cumulative_spend, last_fact.total_cost,
      last_fact.cumulative_spend]
    sorts: [fact.date_day_of_period]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', orientation: left, series: [{axisId: fact.cumulative_spend,
            id: fact.cumulative_spend, name: This Period}], showLabels: false, showValues: false,
        unpinAxis: false, tickDensity: default, type: linear}, {label: '', orientation: left,
        series: [{axisId: last_fact.cumulative_spend, id: last_fact.cumulative_spend,
            name: Prior Period}], showLabels: false, showValues: true, unpinAxis: false,
        tickDensity: default, type: linear}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    colors: ["#4bb86a", "#8fe4a7", "#6e98f9", "#8ac8ca", "#d06180", "#dc9d4f", "#7869df",
      "#a4a6a9", "#a6b7ff", "#afe8fd", "#ea9895", "#f1e582"]
    series_types: {}
    point_style: none
    series_colors: {}
    series_labels:
      fact.total_cost: Spend
    show_value_labels: false
    label_density: 1
    x_axis_scale: auto
    y_axis_combined: true
    reference_lines: []
    show_null_points: false
    interpolation: linear
    discontinuous_nulls: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    ordering: none
    show_null_labels: false
    label: Average Cost per Conversion
    leftAxisLabelVisible: false
    leftAxisLabel: ''
    rightAxisLabelVisible: false
    rightAxisLabel: ''
    barColors: [red, blue]
    smoothedBars: false
    orientation: automatic
    labelPosition: left
    percentType: total
    percentPosition: inline
    valuePosition: right
    labelColorEnabled: false
    labelColor: "#FFF"
    show_dropoff: false
    focus_on_hover: false
    hidden_fields: [fact.total_cost, last_fact.total_cost]
    column_group_spacing_ratio: 0
    column_spacing_ratio: 0
    listen:
      Account: customer.account_descriptive_name
      Campaign: campaign.name
      Ad Group: ad_group.ad_group_name
      Period: fact.period
      Period Latest: fact.date_period_latest
    row: 3
    col: 0
    width: 9
    height: 10
  - title: Funnel
    name: Funnel
    model: marketing_analytics
    explore: period_fact
    type: looker_column
    fields: [fact.total_impressions, fact.total_clicks, fact.total_conversions, fact.date_period]
    sorts: [fact.date_period desc]
    limit: 1
    column_limit: 50
    query_timezone: America/Los_Angeles
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', orientation: left, series: [{axisId: fact.total_impressions,
            id: fact.total_impressions, name: Impressions}, {axisId: fact.total_clicks,
            id: fact.total_clicks, name: Clicks}, {axisId: fact.total_conversions,
            id: fact.total_conversions, name: Conversions}], showLabels: true, showValues: true,
        maxValue: !!null '', minValue: !!null '', valueFormat: !!null '', unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: log}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: false
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    colors: ["#d06180", "#a4a6a9", "#7869df", "#6e98f9", "#dc9d4f", "#4bb86a", "#8ac8ca",
      "#a6b7ff", "#afe8fd", "#ea9895", "#f1e582"]
    series_types: {}
    point_style: none
    series_colors: {}
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_dropoff: true
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_fields: [fact.date_period]
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: false
    single_value_title: Conversion Rate
    comparison_label: ''
    listen:
      Account: customer.account_descriptive_name
      Campaign: campaign.name
      Ad Group: ad_group.ad_group_name
      Period: fact.period
      Period Latest: fact.date_period_latest
    row: 13
    col: 0
    width: 9
    height: 6
  filters:
  - name: Account
    title: Account
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: marketing_analytics
    explore: period_fact
    listens_to_filters: [Period, Period Latest]
    field: customer.account_descriptive_name
  - name: Campaign
    title: Campaign
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: marketing_analytics
    explore: period_fact
    listens_to_filters: [Period, Period Latest, Account]
    field: campaign.name
  - name: Ad Group
    title: Ad Group
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: marketing_analytics
    explore: period_fact
    listens_to_filters: [Period, Period Latest, Campaign, Account]
    field: ad_group.ad_group_name
  - name: Period
    title: Period
    type: field_filter
    default_value: 28 day
    allow_multiple_values: false
    required: true
    model: marketing_analytics
    explore: period_fact
    listens_to_filters: []
    field: fact.period
  - name: Period Latest
    title: Period Latest
    type: field_filter
    default_value: 'Yes'
    allow_multiple_values: false
    required: true
    model: marketing_analytics
    explore: period_fact
    listens_to_filters: []
    field: fact.date_period_latest
