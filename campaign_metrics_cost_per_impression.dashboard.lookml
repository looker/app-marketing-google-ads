- dashboard: campaign_metrics_cost_per_impression
  title: Campaign Metrics - Cost Per Impression
  extends: google_ads_base
  elements:
  - title: Cost Per Impression To Date
    name: Cost Per Impression To Date
    model: marketing_analytics
    explore: period_fact
    type: looker_column
    fields:
    - fact.date_period_dynamic_grain
    - fact.total_conversions
    - fact.average_cost_per_conversion
    - fact.average_conversion_rate
    - fact.average_cost_per_click
    - fact.average_click_rate
    - fact.total_impressions
    - fact.average_cost_per_impression
    sorts:
    - fact.date_period_dynamic_grain
    limit: 500
    column_limit: 50
    stacking: ''
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
    show_value_labels: false
    label_density: 1
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    point_style: none
    series_colors: {}
    series_labels:
      fact.total_conversions: Conversions
      fact.total_clicks: Clicks
      fact.average_conversion_rate: Conversion Rate
      fact.average_cost_per_conversion: Cost Per Conversion
    series_types:
      fact.total_conversions: line
      fact.average_cost_per_conversion: line
      fact.average_conversion_rate: line
      fact.average_click_rate: line
      fact.average_cost_per_click: line
      fact.total_clicks: line
      fact.total_impressions: line
      fact.average_cost_per_impression: line
    limit_displayed_rows: false
    hidden_series:
    - fact.total_conversions
    - fact.average_cost_per_conversion
    - fact.average_conversion_rate
    - fact.average_cost_per_click
    - fact.average_click_rate
    y_axes:
    - label:
      orientation: left
      series:
      - id: fact.average_cost_per_conversion
        name: Cost Per Conversion
        axisId: fact.average_cost_per_conversion
        __FILE: app-marketing-google-ads/campaign_metrics_impressions.dashboard.lookml
        __LINE_NUM: 68
      showLabels: true
      showValues: true
      maxValue:
      minValue:
      valueFormat:
      unpinAxis: false
      tickDensity: default
      tickDensityCustom:
      type: linear
      __FILE: app-marketing-google-ads/campaign_metrics_impressions.dashboard.lookml
      __LINE_NUM: 65
    - label: ''
      orientation: left
      series:
      - id: fact.total_conversions
        name: Conversions
        axisId: fact.total_conversions
        __FILE: app-marketing-google-ads/campaign_metrics_impressions.dashboard.lookml
        __LINE_NUM: 87
      showLabels: true
      showValues: true
      unpinAxis: false
      tickDensity: default
      type: linear
      __FILE: app-marketing-google-ads/campaign_metrics_impressions.dashboard.lookml
      __LINE_NUM: 84
    - label: ''
      orientation: left
      series:
      - id: fact.average_conversion_rate
        name: Conversion Rate
        axisId: fact.average_conversion_rate
        __FILE: app-marketing-google-ads/campaign_metrics_impressions.dashboard.lookml
        __LINE_NUM: 102
      showLabels: true
      showValues: true
      unpinAxis: false
      tickDensity: default
      type: linear
      __FILE: app-marketing-google-ads/campaign_metrics_impressions.dashboard.lookml
      __LINE_NUM: 99
    - label: ''
      orientation: left
      series:
      - id: fact.average_click_rate
        name: Click Through Rate
        axisId: fact.average_click_rate
        __FILE: app-marketing-google-ads/campaign_metrics_impressions.dashboard.lookml
        __LINE_NUM: 117
      showLabels: true
      showValues: true
      unpinAxis: false
      tickDensity: default
      type: linear
      __FILE: app-marketing-google-ads/campaign_metrics_impressions.dashboard.lookml
      __LINE_NUM: 114
    - label:
      orientation: right
      series:
      - id: fact.average_cost_per_click
        name: Cost per Click
        axisId: fact.average_cost_per_click
        __FILE: app-marketing-google-ads/campaign_metrics_impressions.dashboard.lookml
        __LINE_NUM: 132
      - id: fact.total_clicks
        name: Clicks
        axisId: fact.total_clicks
        __FILE: app-marketing-google-ads/campaign_metrics_impressions.dashboard.lookml
        __LINE_NUM: 137
      showLabels: true
      showValues: true
      maxValue:
      minValue:
      valueFormat:
      unpinAxis: false
      tickDensity: default
      tickDensityCustom:
      type: linear
      __FILE: app-marketing-google-ads/campaign_metrics_impressions.dashboard.lookml
      __LINE_NUM: 129
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    reference_lines: []
    ordering: none
    show_null_labels: false
    column_spacing_ratio: 0
    column_group_spacing_ratio: 0
    show_dropoff: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_null_points: false
    interpolation: linear
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
    discontinuous_nulls: false
    focus_on_hover: false
    hidden_fields: []
    listen:
      Account: customer.account_descriptive_name
      Campaign: campaign.name
      Ad Group: ad_group.ad_group_name
      Period: fact.period
      Period Latest: fact.date_period_latest
    row: 0
    col: 0
    width: 24
    height: 10
  - title: Cost Per Impression by Device
    name: Cost Per Impression by Device
    model: marketing_analytics
    explore: ad_impressions_ad_group
    type: looker_bar
    fields:
    - fact.device_type
    - fact.average_cost_per_impression
    filters:
      fact.total_cost: ">0"
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
      tickDensityCustom: 5
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: fact.average_cost_per_click
        name: Ad Stats Cost
        axisId: fact.average_cost_per_click
        __FILE: app-marketing-google-ads/campaign_metrics_impressions.dashboard.lookml
        __LINE_NUM: 253
      __FILE: app-marketing-google-ads/campaign_metrics_impressions.dashboard.lookml
      __LINE_NUM: 241
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
      Account: customer.account_descriptive_name
      Campaign: campaign.name
      Ad Group: ad_group.ad_group_name
      Period: fact.period
      Period Latest: fact.date_period_latest
    row: 10
    col: 0
    width: 8
    height: 4
  - title: Cost Per Impression by Bid Strategy
    name: Cost Per Impression by Bid Strategy
    model: marketing_analytics
    explore: ad_impressions_keyword
    type: looker_bar
    fields:
    - keyword.bidding_strategy_type
    - fact.average_cost_per_impression
    filters:
      fact.total_cost: ">0"
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
      tickDensityCustom: 5
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: fact.average_cost_per_click
        name: Ad Stats Cost
        axisId: fact.average_cost_per_click
        __FILE: app-marketing-google-ads/campaign_metrics_impressions.dashboard.lookml
        __LINE_NUM: 331
      __FILE: app-marketing-google-ads/campaign_metrics_impressions.dashboard.lookml
      __LINE_NUM: 319
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
      Account: customer.account_descriptive_name
      Campaign: campaign.name
      Ad Group: ad_group.ad_group_name
      Period: fact.period
      Period Latest: fact.date_period_latest
    row: 14
    col: 0
    width: 8
    height: 4
  - title: Cost Per Impression by Network
    name: Cost Per Impression by Network
    model: marketing_analytics
    explore: ad_impressions_ad_group
    type: looker_bar
    fields:
    - fact.ad_network_type
    - fact.average_cost_per_impression
    filters:
      fact.average_cost_per_impression: ">0"
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
      tickDensityCustom: 5
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: fact.average_cost_per_click
        name: Ad Stats Cost
        axisId: fact.average_cost_per_click
        __FILE: app-marketing-google-ads/campaign_metrics_impressions.dashboard.lookml
        __LINE_NUM: 411
      __FILE: app-marketing-google-ads/campaign_metrics_impressions.dashboard.lookml
      __LINE_NUM: 399
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
      Account: customer.account_descriptive_name
      Campaign: campaign.name
      Ad Group: ad_group.ad_group_name
      Period: fact.period
      Period Latest: fact.date_period_latest
    row: 18
    col: 0
    width: 8
    height: 4
  - title: Cost Per Impression by Day of Week and Hour of Day
    name: Cost Per Impression by Day of Week and Hour of Day
    model: marketing_analytics
    explore: ad_impressions_ad_group_hour
    type: table
    fields:
    - fact.hour_of_day
    - fact.date_day_of_week
    - fact.average_cost_per_impression
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
    series_labels:
      fact.average_cost_per_click: "-"
    table_theme: gray
    limit_displayed_rows: false
    enable_conditional_formatting: true
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
      bold: false
      italic: false
      strikethrough: false
      fields:
      - fact.average_cost_per_impression
      __FILE: app-marketing-google-ads/campaign_metrics_impressions.dashboard.lookml
      __LINE_NUM: 520
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
      - id: fact.average_cost_per_click
        name: Ad Stats Cost
        axisId: fact.average_cost_per_click
        __FILE: app-marketing-google-ads/campaign_metrics_impressions.dashboard.lookml
        __LINE_NUM: 593
      __FILE: app-marketing-google-ads/campaign_metrics_impressions.dashboard.lookml
      __LINE_NUM: 581
    listen:
      Account: customer.account_descriptive_name
      Campaign: campaign.name
      Ad Group: ad_group.ad_group_name
      Period: fact.period
      Period Latest: fact.date_period_latest
    row: 22
    col: 0
    width: 14
    height: 14
  - title: Cost Per Impression by Day of Week
    name: Cost Per Impression by Day of Week
    model: marketing_analytics
    explore: period_fact
    type: looker_bar
    fields:
    - fact.date_day_of_week
    - fact.average_cost_per_impression
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
      tickDensityCustom: 5
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: fact.average_cost_per_click
        name: Ad Stats Cost
        axisId: fact.average_cost_per_click
        __FILE: app-marketing-google-ads/campaign_metrics_impressions.dashboard.lookml
        __LINE_NUM: 686
      __FILE: app-marketing-google-ads/campaign_metrics_impressions.dashboard.lookml
      __LINE_NUM: 674
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
        __FILE: app-marketing-google-ads/campaign_metrics_impressions.dashboard.lookml
        __LINE_NUM: 699
      bold: false
      italic: false
      strikethrough: false
      fields:
      __FILE: app-marketing-google-ads/campaign_metrics_impressions.dashboard.lookml
      __LINE_NUM: 694
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
      Account: customer.account_descriptive_name
      Campaign: campaign.name
      Ad Group: ad_group.ad_group_name
      Period: fact.period
      Period Latest: fact.date_period_latest
    row: 22
    col: 14
    width: 10
    height: 7
  - title: Cost Per Impression by Hour of Day
    name: Cost Per Impression by Hour of Day
    model: marketing_analytics
    explore: ad_impressions_ad_group_hour
    type: looker_column
    fields:
    - fact.hour_of_day
    - fact.average_cost_per_impression
    sorts:
    - fact.hour_of_day
    limit: 500
    stacking: ''
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
    show_value_labels: true
    label_density: 25
    label_color: []
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    point_style: none
    series_colors: {}
    series_types: {}
    limit_displayed_rows: false
    y_axes:
    - label: ''
      orientation: left
      series:
      - id: fact.total_clicks
        name: Clicks
        axisId: fact.total_clicks
        __FILE: app-marketing-google-ads/campaign_metrics_impressions.dashboard.lookml
        __LINE_NUM: 773
      showLabels: false
      showValues: false
      unpinAxis: false
      tickDensity: default
      type: linear
      __FILE: app-marketing-google-ads/campaign_metrics_impressions.dashboard.lookml
      __LINE_NUM: 770
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    x_axis_label: Hour Of Day
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
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
        __FILE: app-marketing-google-ads/campaign_metrics_impressions.dashboard.lookml
        __LINE_NUM: 835
      bold: false
      italic: false
      strikethrough: false
      fields:
      __FILE: app-marketing-google-ads/campaign_metrics_impressions.dashboard.lookml
      __LINE_NUM: 830
    listen:
      Account: customer.account_descriptive_name
      Campaign: campaign.name
      Ad Group: ad_group.ad_group_name
      Period: fact.period
      Period Latest: fact.date_period_latest
    row: 29
    col: 14
    width: 10
    height: 7
  - title: Cost Per Impression By State
    name: Cost Per Impression By State
    model: marketing_analytics
    explore: ad_impressions_geo
    type: looker_map
    fields:
    - geo_us_state.state
    - fact.average_cost_per_impression
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
    map_latitude: 39.842286020743394
    map_longitude: -96.45996093750001
    map_zoom: 4
    colors:
    - "#F36254"
    - "#FCF758"
    - "#4FBC89"
    listen:
      Account: customer.account_descriptive_name
      Campaign: campaign.name
      Ad Group: ad_group.ad_group_name
      Period: fact.period
      Period Latest: fact.date_period_latest
    row: 10
    col: 8
    width: 16
    height: 12
  - title: Ad Group Cost Per Impression Change
    name: Ad Group Cost Per Impression Change
    model: marketing_analytics
    explore: period_fact
    type: looker_bar
    fields:
    - campaign.name
    - ad_group.ad_group_name
    - fact.average_cost_per_impression
    - last_fact.average_cost_per_impression
    - fact.average_cost_per_impression_period_percent_change
    sorts:
    - fact.average_cost_per_impression_period_percent_change_abs desc
    filters:
      fact.average_cost_per_impression_period_percent_change_abs: NOT NULL
    limit: 500
    column_limit: 50
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
    series_types: {}
    hidden_fields:
    - campaign.name
    - fact.average_cost_per_impression_period_percent_change
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
      - id: fact.average_cost_per_click
        name: Period Fact
        axisId: fact.average_cost_per_click
        __FILE: app-marketing-google-ads/campaign_metrics_impressions.dashboard.lookml
        __LINE_NUM: 921
      - id: last_fact.average_cost_per_click
        name: Last Period Fact
        axisId: last_fact.average_cost_per_click
        __FILE: app-marketing-google-ads/campaign_metrics_impressions.dashboard.lookml
        __LINE_NUM: 926
      __FILE: app-marketing-google-ads/campaign_metrics_impressions.dashboard.lookml
      __LINE_NUM: 909
    series_colors: {}
    colors:
    - "#a6b7ff"
    - "#7869df"
    - "#ea9895"
    - "#d06180"
    - "#6e98f9"
    - "#8ac8ca"
    - "#dc9d4f"
    - "#4bb86a"
    - "#a4a6a9"
    - "#a6b7ff"
    - "#afe8fd"
    - "#ea989"
    x_axis_reversed: false
    y_axis_reversed: false
    listen:
      Account: customer.account_descriptive_name
      Campaign: campaign.name
      Ad Group: ad_group.ad_group_name
      Period: fact.period
      Period Latest: fact.date_period_latest
    row: 36
    col: 0
    width: 8
    height: 10
  - title: Keyword Cost Per Impression Change
    name: Keyword Cost Per Impression Change
    model: marketing_analytics
    explore: period_fact
    type: looker_bar
    fields:
    - campaign.name
    - ad_group.ad_group_name
    - keyword.criteria
    - fact.average_cost_per_impression
    - last_fact.average_cost_per_impression
    - fact.average_cost_per_impression_period_percent_change
    sorts:
    - fact.average_cost_per_impression_period_percent_change_abs desc
    filters:
      fact.average_cost_per_impression_period_percent_change_abs: NOT NULL
    limit: 500
    column_limit: 50
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
    series_types: {}
    hidden_fields:
    - campaign.name
    - ad_group.ad_group_name
    - fact.average_cost_per_impression_period_percent_change
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
      - id: fact.average_cost_per_click
        name: Period Fact
        axisId: fact.average_cost_per_click
        __FILE: app-marketing-google-ads/campaign_metrics_impressions.dashboard.lookml
        __LINE_NUM: 1022
      - id: last_fact.average_cost_per_click
        name: Last Period Fact
        axisId: last_fact.average_cost_per_click
        __FILE: app-marketing-google-ads/campaign_metrics_impressions.dashboard.lookml
        __LINE_NUM: 1027
      __FILE: app-marketing-google-ads/campaign_metrics_impressions.dashboard.lookml
      __LINE_NUM: 1010
    series_colors: {}
    colors:
    - "#a6b7ff"
    - "#7869df"
    - "#ea9895"
    - "#d06180"
    - "#6e98f9"
    - "#8ac8ca"
    - "#dc9d4f"
    - "#4bb86a"
    - "#a4a6a9"
    - "#a6b7ff"
    - "#afe8fd"
    - "#ea989"
    x_axis_reversed: false
    y_axis_reversed: false
    listen:
      Account: customer.account_descriptive_name
      Campaign: campaign.name
      Ad Group: ad_group.ad_group_name
      Period: fact.period
      Period Latest: fact.date_period_latest
    row: 36
    col: 8
    width: 8
    height: 10
  - title: Ad Cost Per Impression Change
    name: Ad Cost Per Impression Change
    model: marketing_analytics
    explore: period_fact
    type: looker_bar
    fields:
    - campaign.name
    - ad_group.ad_group_name
    - ad.creative
    - fact.average_cost_per_impression
    - last_fact.average_cost_per_impression
    - fact.average_cost_per_impression_period_percent_change
    sorts:
    - fact.average_cost_per_impression_period_percent_change_abs desc
    filters:
      fact.average_cost_per_impression_period_percent_change_abs: NOT NULL
    limit: 50
    column_limit: 50
    stacking: ''
    colors:
    - "#a6b7ff"
    - "#7869df"
    - "#ea9895"
    - "#d06180"
    - "#6e98f9"
    - "#8ac8ca"
    - "#dc9d4f"
    - "#4bb86a"
    - "#a4a6a9"
    - "#a6b7ff"
    - "#afe8fd"
    - "#ea989"
    show_value_labels: true
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    point_style: none
    series_colors: {}
    series_types: {}
    limit_displayed_rows: true
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
      - id: fact.average_cost_per_click
        name: Period Fact
        axisId: fact.average_cost_per_click
        __FILE: app-marketing-google-ads/campaign_metrics_impressions.dashboard.lookml
        __LINE_NUM: 1124
      - id: last_fact.average_cost_per_click
        name: Last Period Fact
        axisId: last_fact.average_cost_per_click
        __FILE: app-marketing-google-ads/campaign_metrics_impressions.dashboard.lookml
        __LINE_NUM: 1129
      __FILE: app-marketing-google-ads/campaign_metrics_impressions.dashboard.lookml
      __LINE_NUM: 1112
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    query_timezone: America/Los_Angeles
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
    - fact.average_cost_per_impression_period_percent_change
    listen:
      Account: customer.account_descriptive_name
      Campaign: campaign.name
      Ad Group: ad_group.ad_group_name
      Period: fact.period
      Period Latest: fact.date_period_latest
    row: 36
    col: 16
    width: 8
    height: 10
