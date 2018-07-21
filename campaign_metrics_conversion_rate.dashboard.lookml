- dashboard: campaign_metrics_conversion_rate
  extends: campaign_metrics_base
  title: Campaign Metrics - Conversion Rate
  elements:
  - title: Conversion Rate To Date
    name: Conversion Rate To Date
    model: marketing_analytics
    explore: period_fact
    type: looker_line
    fields:
    - fact.date_period_dynamic_grain
    - fact.average_cost_per_conversion
    - fact.average_conversion_rate
    - fact.total_conversions
    - fact.average_cost_per_click
    - fact.average_click_rate
    sorts:
    - fact.date_period_dynamic_grain
    limit: 500
    column_limit: 50
    stacking: ''
    show_value_labels: false
    label_density: 1
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
    x_axis_scale: auto
    y_axis_scale_mode: linear
    show_null_points: false
    point_style: none
    interpolation: linear
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
    barColors:
    - red
    - blue
    smoothedBars: false
    orientation: automatic
    labelPosition: left
    percentType: total
    percentPosition: inline
    valuePosition: right
    labelColorEnabled: false
    labelColor: "#FFF"
    series_types: {}
    show_dropoff: false
    y_axes:
    - label:
      maxValue:
      minValue:
      orientation: left
      showLabels: true
      showValues: true
      tickDensity: default
      tickDensityCustom:
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: fact.average_cost_per_conversion
        name: Cost per Conversion
        __FILE: app_marketing_analytics/campaign_metrics_conversion_rate.dashboard.lookml
        __LINE_NUM: 77
        axisId: fact.average_cost_per_conversion
      __FILE: app_marketing_analytics/campaign_metrics_conversion_rate.dashboard.lookml
      __LINE_NUM: 65
    - label:
      maxValue:
      minValue:
      orientation: right
      showLabels: true
      showValues: true
      tickDensity: default
      tickDensityCustom:
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: fact.average_conversion_rate
        name: Conversion Rate
        axisId: fact.average_conversion_rate
        __FILE: app_marketing_analytics/campaign_metrics_conversion_rate.dashboard.lookml
        __LINE_NUM: 96
      __FILE: app_marketing_analytics/campaign_metrics_conversion_rate.dashboard.lookml
      __LINE_NUM: 84
    discontinuous_nulls: false
    focus_on_hover: false
    reference_lines: []
    colors:
    - "#7869df"
    - "#6e98f9"
    - "#8ac8ca"
    - "#d06180"
    - "#dc9d4f"
    - "#4bb86a"
    - "#a4a6a9"
    - "#a6b7ff"
    - "#afe8fd"
    - "#ea9895"
    - "#f1e582"
    series_colors: {}
    hidden_series:
    - fact.total_conversions
    - fact.average_cost_per_click
    - fact.average_click_rate
    hidden_fields: []
    column_group_spacing_ratio: 0
    column_spacing_ratio: 0
    listen:
      Campaign: campaign.name
      Ad Group: ad_group.ad_group_name
      Period: fact.period
      Period Latest: fact.date_period_latest
    row: 0
    col: 0
    width: 24
    height: 11
  - title: Conversion Rate by Device
    name: Conversion Rate by Device
    model: marketing_analytics
    explore: ad_impressions_ad_group
    type: looker_bar
    fields:
    - fact.device_type
    - fact.average_conversion_rate
    filters:
     fact.average_conversion_rate: ">0"
    sorts:
    - fact.average_conversion_rate desc
    limit: 500
    stacking: ''
    show_value_labels: true
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
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    label_color: []
    x_axis_label: Device
    y_axes:
    - label: ''
      maxValue:
      minValue:
      orientation: bottom
      showLabels: false
      showValues: false
      tickDensity: default
      tickDensityCustom:
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: fact.average_conversion_rate
        name: Ad Stats Conversion Rate
        axisId: fact.average_conversion_rate
        __FILE: app_marketing_analytics/campaign_metrics_conversion_rate.dashboard.lookml
        __LINE_NUM: 186
      __FILE: app_marketing_analytics/campaign_metrics_conversion_rate.dashboard.lookml
      __LINE_NUM: 174
    colors:
    - "#d06180"
    - "#7869df"
    - "#6e98f9"
    - "#8ac8ca"
    - "#dc9d4f"
    - "#4bb86a"
    - "#a4a6a9"
    - "#a6b7ff"
    - "#afe8fd"
    - "#ea9895"
    - "#f1e582"
    series_colors: {}
    listen:
      Campaign: campaign.name
      Ad Group: ad_group.ad_group_name
      Period: fact.period
      Period Latest: fact.date_period_latest
    row: 11
    col: 0
    width: 8
    height: 4
  - title: Conversion Rate by Bid Strategy
    name: Conversion Rate by Bid Strategy
    model: marketing_analytics
    explore: ad_impressions_keyword
    type: looker_bar
    fields:
    - keyword.bidding_strategy_type
    - fact.average_conversion_rate
    filters:
     fact.average_conversion_rate: ">0"
    sorts:
    - fact.average_conversion_rate desc
    limit: 500
    stacking: ''
    show_value_labels: true
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
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    label_color: []
    x_axis_label: Bid Strategy
    y_axes:
    - label: ''
      maxValue:
      minValue:
      orientation: bottom
      showLabels: false
      showValues: false
      tickDensity: default
      tickDensityCustom:
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: fact.average_conversion_rate
        name: Ad Stats Conversion Rate
        axisId: fact.average_conversion_rate
        __FILE: app_marketing_analytics/campaign_metrics_conversion_rate.dashboard.lookml
        __LINE_NUM: 264
      __FILE: app_marketing_analytics/campaign_metrics_conversion_rate.dashboard.lookml
      __LINE_NUM: 252
    colors:
    - "#dc9d4f"
    - "#7869df"
    - "#6e98f9"
    - "#8ac8ca"
    - "#d06180"
    - "#4bb86a"
    - "#a4a6a9"
    - "#a6b7ff"
    - "#afe8fd"
    - "#ea9895"
    - "#f1e582"
    series_colors: {}
    listen:
      Campaign: campaign.name
      Ad Group: ad_group.ad_group_name
      Period: fact.period
      Period Latest: fact.date_period_latest
    row: 15
    col: 0
    width: 8
    height: 4
  - title: Conversion Rate by Day of Week and Hour of Day
    name: Conversion Rate by Day of Week and Hour of Day
    model: marketing_analytics
    explore: ad_impressions_ad_group_hour
    type: table
    fields:
    - fact.hour_of_day
    - fact.date_day_of_week
    - fact.average_conversion_rate
    pivots:
    - fact.date_day_of_week
    fill_fields:
    - fact.date_day_of_week
    sorts:
    - fact.date_day_of_week 0
    - fact.hour_of_day
    limit: 500
    show_view_names: false
    show_row_numbers: false
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: gray
    limit_displayed_rows: false
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    leftAxisLabelVisible: false
    leftAxisLabel: ''
    rightAxisLabelVisible: false
    rightAxisLabel: ''
    barColors:
    - red
    - blue
    smoothedBars: false
    orientation: automatic
    labelPosition: left
    percentType: total
    percentPosition: inline
    valuePosition: right
    labelColorEnabled: false
    labelColor: "#FFF"
    groupBars: true
    labelSize: 10pt
    showLegend: true
    stacking: ''
    show_value_labels: true
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
    label_color: []
    x_axis_label: Network
    y_axes:
    - label: ''
      maxValue:
      minValue:
      orientation: bottom
      showLabels: false
      showValues: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: fact.total_conversions
        name: Ad Stats Cost
        axisId: fact.total_conversions
        __FILE: app_marketing_analytics/campaign_metrics_conversion_rate.dashboard.lookml
        __LINE_NUM: 374
      __FILE: app_marketing_analytics/campaign_metrics_conversion_rate.dashboard.lookml
      __LINE_NUM: 362
    conditional_formatting:
    - type: high to low
      value:
      background_color:
      font_color:
      palette:
        name: Red to Yellow to Green
        colors:
        - "#F36254"
        - "#FCF758"
        - "#4FBC89"
        __FILE: app_marketing_analytics/campaign_metrics_conversion_rate.dashboard.lookml
        __LINE_NUM: 387
      bold: false
      italic: false
      strikethrough: false
      fields:
      - fact.average_conversion_rate
      __FILE: app_marketing_analytics/campaign_metrics_conversion_rate.dashboard.lookml
      __LINE_NUM: 382
    series_labels:
      fact.hour_of_day: Hour of Day
      fact.average_conversion_rate: "-"
      fact.date_day_of_week: Day of Week
    listen:
      Campaign: campaign.name
      Ad Group: ad_group.ad_group_name
      Period: fact.period
      Period Latest: fact.date_period_latest
    row: 23
    col: 0
    width: 14
    height: 14
  - title: Conversion Rate by Day of Week
    name: Conversion Rate by Day of Week
    model: marketing_analytics
    explore: period_fact
    type: looker_bar
    fields:
    - fact.date_day_of_week
    - fact.average_conversion_rate
    fill_fields:
    - fact.date_day_of_week
    sorts:
    - fact.date_day_of_week
    limit: 500
    stacking: ''
    show_value_labels: true
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
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    leftAxisLabelVisible: false
    leftAxisLabel: ''
    rightAxisLabelVisible: false
    rightAxisLabel: ''
    barColors:
    - red
    - blue
    smoothedBars: false
    orientation: automatic
    labelPosition: left
    percentType: total
    percentPosition: inline
    valuePosition: right
    labelColorEnabled: false
    labelColor: "#FFF"
    groupBars: true
    labelSize: 10pt
    showLegend: true
    series_types: {}
    label_color: []
    x_axis_label: ''
    y_axes:
    - label: ''
      maxValue:
      minValue:
      orientation: bottom
      showLabels: false
      showValues: false
      tickDensity: default
      tickDensityCustom:
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: fact.average_conversion_rate
        name: Ad Stats Conversion Rate
        axisId: fact.average_conversion_rate
        __FILE: app_marketing_analytics/campaign_metrics_conversion_rate.dashboard.lookml
        __LINE_NUM: 491
      __FILE: app_marketing_analytics/campaign_metrics_conversion_rate.dashboard.lookml
      __LINE_NUM: 479
    conditional_formatting:
    - type: high to low
      value:
      background_color:
      font_color:
      palette:
        name: Red to Yellow to Green
        colors:
        - "#F36254"
        - "#FCF758"
        - "#4FBC89"
        __FILE: app_marketing_analytics/campaign_metrics_conversion_rate.dashboard.lookml
        __LINE_NUM: 504
      bold: false
      italic: false
      strikethrough: false
      fields:
      __FILE: app_marketing_analytics/campaign_metrics_conversion_rate.dashboard.lookml
      __LINE_NUM: 499
    colors:
    - "#8ac8ca"
    - "#7869df"
    - "#6e98f9"
    - "#d06180"
    - "#dc9d4f"
    - "#4bb86a"
    - "#a4a6a9"
    - "#a6b7ff"
    - "#afe8fd"
    - "#ea9895"
    - "#f1e582"
    series_colors: {}
    listen:
      Campaign: campaign.name
      Ad Group: ad_group.ad_group_name
      Period: fact.period
      Period Latest: fact.date_period_latest
    row: 23
    col: 14
    width: 10
    height: 7
  - title: Conversion Rate by Hour of Day
    name: Conversion Rate by Hour of Day
    model: marketing_analytics
    explore: ad_impressions_ad_group_hour
    type: looker_column
    fields:
    - fact.hour_of_day
    - fact.average_conversion_rate
    sorts:
    - fact.hour_of_day
    limit: 500
    stacking: ''
    show_value_labels: true
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
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    leftAxisLabelVisible: false
    leftAxisLabel: ''
    rightAxisLabelVisible: false
    rightAxisLabel: ''
    barColors:
    - red
    - blue
    smoothedBars: false
    orientation: automatic
    labelPosition: left
    percentType: total
    percentPosition: inline
    valuePosition: right
    labelColorEnabled: false
    labelColor: "#FFF"
    groupBars: true
    labelSize: 10pt
    showLegend: true
    series_types: {}
    label_color: []
    x_axis_label: Hour Of Day
    y_axes:
    - label: ''
      maxValue:
      minValue:
      orientation: left
      showLabels: false
      showValues: false
      tickDensity: default
      tickDensityCustom:
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: fact.average_conversion_rate
        name: Ad Stats Conversion Rate
        axisId: fact.average_conversion_rate
        __FILE: app_marketing_analytics/campaign_metrics_conversion_rate.dashboard.lookml
        __LINE_NUM: 614
      __FILE: app_marketing_analytics/campaign_metrics_conversion_rate.dashboard.lookml
      __LINE_NUM: 602
    conditional_formatting:
    - type: high to low
      value:
      background_color:
      font_color:
      palette:
        name: Red to Yellow to Green
        colors:
        - "#F36254"
        - "#FCF758"
        - "#4FBC89"
        __FILE: app_marketing_analytics/campaign_metrics_conversion_rate.dashboard.lookml
        __LINE_NUM: 627
      bold: false
      italic: false
      strikethrough: false
      fields:
      __FILE: app_marketing_analytics/campaign_metrics_conversion_rate.dashboard.lookml
      __LINE_NUM: 622
    colors:
    - "#8ac8ca"
    - "#7869df"
    - "#6e98f9"
    - "#d06180"
    - "#dc9d4f"
    - "#4bb86a"
    - "#a4a6a9"
    - "#a6b7ff"
    - "#afe8fd"
    - "#ea9895"
    - "#f1e582"
    series_colors: {}
    listen:
      Campaign: campaign.name
      Ad Group: ad_group.ad_group_name
      Period: fact.period
      Period Latest: fact.date_period_latest
    row: 30
    col: 14
    width: 10
    height: 7
  - title: Conversion Rate by Network
    name: Conversion Rate by Network
    model: marketing_analytics
    explore: ad_impressions_ad_group
    type: looker_bar
    fields:
    - fact.ad_network_type
    - fact.average_conversion_rate
    filters:
     fact.average_conversion_rate: ">0"
    sorts:
    - fact.ad_network_type
    limit: 500
    stacking: ''
    show_value_labels: true
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
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    label_color: []
    x_axis_label: Network
    y_axes:
    - label: ''
      maxValue:
      minValue:
      orientation: bottom
      showLabels: false
      showValues: false
      tickDensity: default
      tickDensityCustom:
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: fact.average_conversion_rate
        name: Ad Stats Conversion Rate
        axisId: fact.average_conversion_rate
        __FILE: app_marketing_analytics/campaign_metrics_conversion_rate.dashboard.lookml
        __LINE_NUM: 713
      __FILE: app_marketing_analytics/campaign_metrics_conversion_rate.dashboard.lookml
      __LINE_NUM: 701
    series_colors: {}
    colors:
    - "#8ac8ca"
    - "#7869df"
    - "#6e98f9"
    - "#d06180"
    - "#dc9d4f"
    - "#4bb86a"
    - "#a4a6a9"
    - "#a6b7ff"
    - "#afe8fd"
    - "#ea9895"
    - "#f1e582"
    listen:
      Campaign: campaign.name
      Ad Group: ad_group.ad_group_name
      Period: fact.period
      Period Latest: fact.date_period_latest
    row: 19
    col: 0
    width: 8
    height: 4
  - title: Ad Group Conversion Rate Change
    name: Ad Group Conversion Rate Change
    model: marketing_analytics
    explore: period_fact
    type: looker_bar
    fields:
    - ad_group.ad_group_name
    - campaign.name
    - fact.average_conversion_rate
    - fact.total_conversions
    - fact.total_clicks
    - last_fact.average_conversion_rate
    - last_fact.total_conversions
    - last_fact.total_clicks
    - fact.average_conversion_rate_period_percent_change
    sorts:
    - fact.average_conversion_rate_period_percent_change_abs desc
    limit: 50
    query_timezone: America/Los_Angeles
    stacking: ''
    show_value_labels: true
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    limit_displayed_rows: true
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_fields:
    - campaign.name
    - fact.total_conversions
    - fact.total_clicks
    - last_fact.total_conversions
    - last_fact.total_clicks
    - fact.average_conversion_rate_period_percent_change
    series_types: {}
    colors:
    - "#a6b7ff"
    - "#7869df"
    - "#6e98f9"
    - "#8ac8ca"
    - "#d06180"
    - "#dc9d4f"
    - "#4bb86a"
    - "#a4a6a9"
    - "#a6b7ff"
    - "#afe8fd"
    - "#ea9895"
    - "#f1e582"
    series_colors: {}
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '10'
    y_axes:
    - label: ''
      maxValue:
      minValue:
      orientation: bottom
      showLabels: true
      showValues: false
      tickDensity: default
      tickDensityCustom:
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: fact.average_conversion_rate
        name: Period Fact
        axisId: fact.average_conversion_rate
        __FILE: app_marketing_analytics/campaign_metrics_conversion_rate.dashboard.lookml
        __LINE_NUM: 824
      - id: last_fact.average_conversion_rate
        name: Last Period Fact
        axisId: last_fact.average_conversion_rate
        __FILE: app_marketing_analytics/campaign_metrics_conversion_rate.dashboard.lookml
        __LINE_NUM: 829
      __FILE: app_marketing_analytics/campaign_metrics_conversion_rate.dashboard.lookml
      __LINE_NUM: 812
    x_axis_reversed: false
    y_axis_reversed: false
    listen:
      Campaign: campaign.name
      Ad Group: ad_group.ad_group_name
      Period: fact.period
      Period Latest: fact.date_period_latest
    row: 37
    col: 0
    width: 12
    height: 10
  - title: Keyword Conversion Rate Changes
    name: Keyword Conversion Rate Changes
    model: marketing_analytics
    explore: period_fact
    type: looker_bar
    fields:
    - keyword.criteria
    - ad_group.ad_group_name
    - campaign.name
    - fact.average_conversion_rate
    - fact.total_conversions
    - fact.total_clicks
    - last_fact.average_conversion_rate
    - last_fact.total_conversions
    - last_fact.total_clicks
    - fact.average_conversion_rate_period_percent_change
    sorts:
    - fact.average_conversion_rate_period_percent_change_abs desc
    limit: 50
    query_timezone: America/Los_Angeles
    stacking: ''
    show_value_labels: true
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    limit_displayed_rows: true
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_fields:
    - ad_group.ad_group_name
    - campaign.name
    - fact.total_conversions
    - fact.total_clicks
    - last_fact.total_conversions
    - last_fact.total_clicks
    - fact.average_conversion_rate_period_percent_change
    series_types: {}
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '10'
    colors:
    - "#a6b7ff"
    - "#7869df"
    - "#6e98f9"
    - "#8ac8ca"
    - "#d06180"
    - "#dc9d4f"
    - "#4bb86a"
    - "#a4a6a9"
    - "#a6b7ff"
    - "#afe8fd"
    - "#ea9895"
    - "#f1e582"
    series_colors:
      fact.conversion_rate_this_month: "#d06180"
      fact.conversion_rate_last_month: "#ea9895"
    y_axes:
    - label: ''
      maxValue:
      minValue:
      orientation: bottom
      showLabels: true
      showValues: false
      tickDensity: default
      tickDensityCustom:
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: fact.average_conversion_rate
        name: Period Fact
        axisId: fact.average_conversion_rate
        __FILE: app_marketing_analytics/campaign_metrics_conversion_rate.dashboard.lookml
        __LINE_NUM: 933
      - id: last_fact.average_conversion_rate
        name: Last Period Fact
        axisId: last_fact.average_conversion_rate
        __FILE: app_marketing_analytics/campaign_metrics_conversion_rate.dashboard.lookml
        __LINE_NUM: 938
      __FILE: app_marketing_analytics/campaign_metrics_conversion_rate.dashboard.lookml
      __LINE_NUM: 921
    x_axis_reversed: false
    y_axis_reversed: false
    listen:
      Campaign: campaign.name
      Ad Group: ad_group.ad_group_name
      Period: fact.period
      Period Latest: fact.date_period_latest
    row: 37
    col: 12
    width: 12
    height: 10
  - title: Conversion Rate By State
    name: Conversion Rate By State
    model: marketing_analytics
    explore: ad_impressions_geo
    type: looker_map
    fields:
    - geo_us_state.state
    - fact.average_conversion_rate
    filters:
      fact.period: 28 day
      ad_group.ad_group_name: ''
      campaign.name: ''
    sorts:
    - fact.average_conversion_rate desc
    limit: 500
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: positron
    map_position: custom
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_view_names: true
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    map: usa
    map_projection: ''
    quantize_colors: false
    query_timezone: America/Los_Angeles
    series_types: {}
    map_latitude: 41.27780646738183
    map_longitude: -93.076171875
    map_zoom: 4
    colors:
    - "#F36254"
    - "#FCF758"
    - "#4FBC89"
    listen:
      Campaign: campaign.name
      Ad Group: ad_group.ad_group_name
      Period Latest: fact.date_period_latest
    row: 11
    col: 8
    width: 16
    height: 12
  filters:
  - name: Campaign
    title: Campaign
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: marketing_analytics
    explore: period_fact
    listens_to_filters: []
    field: campaign.name
  - name: Ad Group
    title: Ad Group
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: marketing_analytics
    explore: period_fact
    listens_to_filters: []
    field: ad_group.ad_group_name
  - name: Period
    title: Period
    type: field_filter
    default_value: 28 day
    allow_multiple_values: true
    required: true
    model: marketing_analytics
    explore: period_fact
    listens_to_filters: []
    field: fact.period
  - name: Period Latest
    title: Period Latest
    type: field_filter
    default_value: 'Yes'
    allow_multiple_values: true
    required: false
    model: marketing_analytics
    explore: period_fact
    listens_to_filters: []
    field: fact.date_period_latest
