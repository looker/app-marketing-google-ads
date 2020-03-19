- dashboard: campaign_metrics_conversion_rate
  extends: google_ads_base
  title: Google Adwords - Conversion Rate
  elements:
  - title: Conversion Rate by Day of Week
    name: Conversion Rate by Day of Week
    model: marketing_analytics
    explore: period_fact
    type: looker_bar
    fields: [fact.date_day_of_week, fact.average_conversion_rate]
    fill_fields: [fact.date_day_of_week]
    sorts: [fact.date_day_of_week]
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
    barColors: [red, blue]
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
    y_axes: [{label: '', maxValue: !!null '', minValue: !!null '', orientation: bottom,
        showLabels: false, showValues: false, tickDensity: default, tickDensityCustom: !!null '',
        type: linear, unpinAxis: false, valueFormat: !!null '', series: [{id: fact.average_conversion_rate,
            name: Ad Stats Conversion Rate, axisId: fact.average_conversion_rate}]}]
    conditional_formatting: [{type: high to low, value: !!null '', background_color: !!null '',
        font_color: !!null '', palette: {name: Red to Yellow to Green, colors: ["#F36254",
            "#FCF758", "#4FBC89"]}, bold: false, italic: false, strikethrough: false,
        fields: !!null ''}]
    colors: ["#8ac8ca", "#7869df", "#6e98f9", "#d06180", "#dc9d4f", "#4bb86a", "#a4a6a9",
      "#a6b7ff", "#afe8fd", "#ea9895", "#f1e582"]
    series_colors: {}
    listen:
      Account: customer.account_descriptive_name
      Campaign: campaign.name
      Ad Group: ad_group.ad_group_name
      Period: fact.period
      Period Latest: fact.date_period_latest
    row: 26
    col: 14
    width: 10
    height: 6
  - title: Conversion Rate by Hour of Day
    name: Conversion Rate by Hour of Day
    model: marketing_analytics
    explore: ad_impressions_ad_group_hour
    type: looker_column
    fields: [fact.hour_of_day, fact.average_conversion_rate]
    sorts: [fact.hour_of_day]
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
    barColors: [red, blue]
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
    y_axes: [{label: '', maxValue: !!null '', minValue: !!null '', orientation: left,
        showLabels: false, showValues: false, tickDensity: default, tickDensityCustom: !!null '',
        type: linear, unpinAxis: false, valueFormat: !!null '', series: [{id: fact.average_conversion_rate,
            name: Ad Stats Conversion Rate, axisId: fact.average_conversion_rate}]}]
    conditional_formatting: [{type: high to low, value: !!null '', background_color: !!null '',
        font_color: !!null '', palette: {name: Red to Yellow to Green, colors: ["#F36254",
            "#FCF758", "#4FBC89"]}, bold: false, italic: false, strikethrough: false,
        fields: !!null ''}]
    colors: ["#8ac8ca", "#7869df", "#6e98f9", "#d06180", "#dc9d4f", "#4bb86a", "#a4a6a9",
      "#a6b7ff", "#afe8fd", "#ea9895", "#f1e582"]
    series_colors: {}
    listen:
      Account: customer.account_descriptive_name
      Campaign: campaign.name
      Ad Group: ad_group.ad_group_name
      Period: fact.period
      Period Latest: fact.date_period_latest
    row: 32
    col: 14
    width: 10
    height: 6
  - title: Conversion Rate by Network
    name: Conversion Rate by Network
    model: marketing_analytics
    explore: ad_impressions_ad_group
    type: looker_bar
    fields: [fact.ad_network_type, fact.average_conversion_rate]
    filters:
      fact.average_conversion_rate: ">0"
    sorts: [fact.ad_network_type]
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
    y_axes: [{label: '', maxValue: !!null '', minValue: !!null '', orientation: bottom,
        showLabels: false, showValues: false, tickDensity: default, tickDensityCustom: !!null '',
        type: linear, unpinAxis: false, valueFormat: !!null '', series: [{id: fact.average_conversion_rate,
            name: Ad Stats Conversion Rate, axisId: fact.average_conversion_rate}]}]
    series_colors: {}
    colors: ["#8ac8ca", "#7869df", "#6e98f9", "#d06180", "#dc9d4f", "#4bb86a", "#a4a6a9",
      "#a6b7ff", "#afe8fd", "#ea9895", "#f1e582"]
    listen:
      Account: customer.account_descriptive_name
      Campaign: campaign.name
      Ad Group: ad_group.ad_group_name
      Period: fact.period
      Period Latest: fact.date_period_latest
    row: 21
    col: 0
    width: 8
    height: 5
  - title: Conversion Rate By State
    name: Conversion Rate By State
    model: marketing_analytics
    explore: ad_impressions_geo
    type: looker_map
    fields: [geo_us_state.state, fact.average_conversion_rate]
    sorts: [fact.average_conversion_rate desc]
    limit: 500
    query_timezone: America/Los_Angeles
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
    reverse_map_value_colors: true
    map: usa
    map_projection: ''
    quantize_colors: false
    series_types: {}
    map_latitude: 41.27780646738183
    map_longitude: -93.076171875
    map_zoom: 4
    colors: ["#F36254", "#FCF758", "#4FBC89"]
    listen:
      Account: customer.account_descriptive_name
      Campaign: campaign.name
      Ad Group: ad_group.ad_group_name
      Period: fact.period
      Period Latest: fact.date_period_latest
    row: 11
    col: 8
    width: 16
    height: 15
  - title: Conversion Rate by Bid Strategy
    name: Conversion Rate by Bid Strategy
    model: marketing_analytics
    explore: ad_impressions_keyword
    type: looker_bar
    fields: [keyword.bidding_strategy_type, fact.average_conversion_rate]
    filters:
      fact.average_conversion_rate: ">0"
    sorts: [fact.average_conversion_rate desc]
    limit: 500
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
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
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', maxValue: !!null '', minValue: !!null '', orientation: bottom,
        showLabels: false, showValues: false, tickDensity: default, tickDensityCustom: !!null '',
        type: linear, unpinAxis: false, valueFormat: !!null '', series: [{id: fact.average_conversion_rate,
            name: Ad Stats Conversion Rate, axisId: fact.average_conversion_rate}]}]
    x_axis_label: Bid Strategy
    colors: ["#dc9d4f", "#7869df", "#6e98f9", "#8ac8ca", "#d06180", "#4bb86a", "#a4a6a9",
      "#a6b7ff", "#afe8fd", "#ea9895", "#f1e582"]
    series_types: {}
    series_colors:
      fact.average_conversion_rate: "#8ac8ca"
    label_color: []
    defaults_version: 1
    listen:
      Account: customer.account_descriptive_name
      Campaign: campaign.name
      Ad Group: ad_group.ad_group_name
      Period: fact.period
      Period Latest: fact.date_period_latest
    row: 16
    col: 0
    width: 8
    height: 5
  - title: Conversion Rate by Device
    name: Conversion Rate by Device
    model: marketing_analytics
    explore: ad_impressions_ad_group
    type: looker_bar
    fields: [fact.device_type, fact.average_conversion_rate]
    filters:
      fact.average_conversion_rate: ">0"
    sorts: [fact.average_conversion_rate desc]
    limit: 500
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
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
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', maxValue: !!null '', minValue: !!null '', orientation: bottom,
        showLabels: false, showValues: false, tickDensity: default, tickDensityCustom: !!null '',
        type: linear, unpinAxis: false, valueFormat: !!null '', series: [{id: fact.average_conversion_rate,
            name: Ad Stats Conversion Rate, axisId: fact.average_conversion_rate}]}]
    x_axis_label: Device
    colors: ["#d06180", "#7869df", "#6e98f9", "#8ac8ca", "#dc9d4f", "#4bb86a", "#a4a6a9",
      "#a6b7ff", "#afe8fd", "#ea9895", "#f1e582"]
    series_types: {}
    series_colors:
      fact.average_conversion_rate: "#8ac8ca"
    label_color: []
    defaults_version: 1
    listen:
      Account: customer.account_descriptive_name
      Campaign: campaign.name
      Ad Group: ad_group.ad_group_name
      Period: fact.period
      Period Latest: fact.date_period_latest
    row: 11
    col: 0
    width: 8
    height: 5
  - title: Keyword Conversion Rate Changes
    name: Keyword Conversion Rate Changes
    model: marketing_analytics
    explore: period_fact
    type: looker_bar
    fields: [keyword.criteria, ad_group.ad_group_name, campaign.name, fact.average_conversion_rate,
      fact.total_conversions, fact.total_clicks, last_fact.average_conversion_rate,
      last_fact.total_conversions, last_fact.total_clicks, fact.average_conversion_rate_period_percent_change]
    filters:
      fact.average_conversion_rate_period_percent_change_abs: NOT NULL
    sorts: [fact.average_conversion_rate_period_percent_change_abs desc]
    limit: 50
    query_timezone: America/Los_Angeles
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
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
    limit_displayed_rows: true
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', maxValue: !!null '', minValue: !!null '', orientation: bottom,
        showLabels: true, showValues: false, tickDensity: default, tickDensityCustom: !!null '',
        type: linear, unpinAxis: false, valueFormat: !!null '', series: [{id: fact.average_conversion_rate,
            name: Period Fact, axisId: fact.average_conversion_rate}, {id: last_fact.average_conversion_rate,
            name: Last Period Fact, axisId: last_fact.average_conversion_rate}]}]
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '10'
    colors: ["#a6b7ff", "#7869df", "#ea9895", "#d06180", "#6e98f9", "#8ac8ca", "#dc9d4f",
      "#4bb86a", "#a4a6a9", "#a6b7ff", "#afe8fd", "#ea989"]
    series_types: {}
    series_colors:
      fact.average_conversion_rate: "#8ac8ca"
      last_fact.average_conversion_rate: "#a3eded"
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_fields: [ad_group.ad_group_name, campaign.name, fact.total_conversions,
      fact.total_clicks, last_fact.total_conversions, last_fact.total_clicks, fact.average_conversion_rate_period_percent_change]
    defaults_version: 1
    listen:
      Account: customer.account_descriptive_name
      Campaign: campaign.name
      Ad Group: ad_group.ad_group_name
      Period: fact.period
      Period Latest: fact.date_period_latest
    row: 38
    col: 12
    width: 12
    height: 9
  - title: Ad Group Conversion Rate Change
    name: Ad Group Conversion Rate Change
    model: marketing_analytics
    explore: period_fact
    type: looker_bar
    fields: [ad_group.ad_group_name, campaign.name, fact.average_conversion_rate,
      fact.total_conversions, fact.total_clicks, last_fact.average_conversion_rate,
      last_fact.total_conversions, last_fact.total_clicks, fact.average_conversion_rate_period_percent_change]
    filters:
      fact.average_conversion_rate_period_percent_change_abs: NOT NULL
    sorts: [fact.average_conversion_rate_period_percent_change_abs desc]
    limit: 50
    query_timezone: America/Los_Angeles
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
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
    limit_displayed_rows: true
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', maxValue: !!null '', minValue: !!null '', orientation: bottom,
        showLabels: true, showValues: false, tickDensity: default, tickDensityCustom: !!null '',
        type: linear, unpinAxis: false, valueFormat: !!null '', series: [{id: fact.average_conversion_rate,
            name: Period Fact, axisId: fact.average_conversion_rate}, {id: last_fact.average_conversion_rate,
            name: Last Period Fact, axisId: last_fact.average_conversion_rate}]}]
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '10'
    colors: ["#a6b7ff", "#7869df", "#ea9895", "#d06180", "#6e98f9", "#8ac8ca", "#dc9d4f",
      "#4bb86a", "#a4a6a9", "#a6b7ff", "#afe8fd", "#ea989"]
    series_types: {}
    series_colors:
      fact.average_conversion_rate: "#8ac8ca"
      last_fact.average_conversion_rate: "#a3eded"
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_fields: [campaign.name, fact.total_conversions, fact.total_clicks, last_fact.total_conversions,
      last_fact.total_clicks, fact.average_conversion_rate_period_percent_change]
    defaults_version: 1
    listen:
      Account: customer.account_descriptive_name
      Campaign: campaign.name
      Ad Group: ad_group.ad_group_name
      Period: fact.period
      Period Latest: fact.date_period_latest
    row: 38
    col: 0
    width: 12
    height: 9
  - title: Conversion Rate by Day of Week and Hour of Day
    name: Conversion Rate by Day of Week and Hour of Day
    model: marketing_analytics
    explore: ad_impressions_ad_group_hour
    type: looker_grid
    fields: [fact.hour_of_day, fact.date_day_of_week, fact.average_conversion_rate]
    pivots: [fact.date_day_of_week]
    fill_fields: [fact.date_day_of_week]
    sorts: [fact.date_day_of_week 0, fact.hour_of_day]
    limit: 500
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: gray
    limit_displayed_rows: false
    enable_conditional_formatting: true
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    series_labels:
      fact.hour_of_day: Hour of Day
      fact.date_day_of_week: Day of Week
    series_cell_visualizations:
      fact.average_conversion_rate:
        is_active: false
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: !!null '',
        font_color: !!null '', palette: {name: Red to Yellow to Green, colors: ["#F36254",
            "#FCF758", "#4FBC89"]}, bold: false, italic: false, strikethrough: false,
        fields: [fact.average_conversion_rate], color_application: {collection_id: legacy,
          palette_id: legacy_diverging2, options: {steps: 5}}}]
    truncate_column_names: false
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
    y_axes: [{label: '', maxValue: !!null '', minValue: !!null '', orientation: bottom,
        showLabels: false, showValues: false, tickDensity: default, tickDensityCustom: 5,
        type: linear, unpinAxis: false, valueFormat: !!null '', series: [{id: fact.total_conversions,
            name: Ad Stats Cost, axisId: fact.total_conversions}]}]
    defaults_version: 1
    listen:
      Account: customer.account_descriptive_name
      Campaign: campaign.name
      Ad Group: ad_group.ad_group_name
      Period: fact.period
      Period Latest: fact.date_period_latest
    row: 26
    col: 0
    width: 14
    height: 12
  - title: Conversion Rate To Date
    name: Conversion Rate To Date
    model: marketing_analytics
    explore: period_fact
    type: looker_line
    fields: [fact.date_period_dynamic_grain, fact.average_cost_per_conversion, fact.average_conversion_rate,
      fact.total_conversions, fact.average_cost_per_click, fact.average_click_rate]
    sorts: [fact.date_period_dynamic_grain]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
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
    point_style: none
    show_value_labels: false
    label_density: 1
    x_axis_scale: time
    y_axis_combined: true
    show_null_points: false
    interpolation: linear
    y_axes: [{label: !!null '', maxValue: !!null '', minValue: !!null '', orientation: left,
        showLabels: true, showValues: true, tickDensity: default, tickDensityCustom: !!null '',
        type: linear, unpinAxis: false, valueFormat: !!null '', series: [{id: fact.average_cost_per_conversion,
            name: Cost per Conversion, axisId: fact.average_cost_per_conversion}]},
      {label: !!null '', maxValue: !!null '', minValue: !!null '', orientation: right,
        showLabels: true, showValues: true, tickDensity: default, tickDensityCustom: !!null '',
        type: linear, unpinAxis: false, valueFormat: !!null '', series: [{id: fact.average_conversion_rate,
            name: Conversion Rate, axisId: fact.average_conversion_rate}]}]
    hidden_series: [fact.total_conversions, fact.average_cost_per_click, fact.average_click_rate]
    colors: ["#7869df", "#6e98f9", "#8ac8ca", "#d06180", "#dc9d4f", "#4bb86a", "#a4a6a9",
      "#a6b7ff", "#afe8fd", "#ea9895", "#f1e582"]
    series_types: {}
    series_colors:
      fact.average_conversion_rate: "#8ac8ca"
      fact.total_conversions: "#6e98f9"
    reference_lines: []
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
    hidden_fields: []
    column_group_spacing_ratio: 0
    column_spacing_ratio: 0
    defaults_version: 1
    listen:
      Account: customer.account_descriptive_name
      Campaign: campaign.name
      Ad Group: ad_group.ad_group_name
      Period: fact.period
      Period Latest: fact.date_period_latest
    row: 0
    col: 0
    width: 24
    height: 11
