- dashboard: google_block_clicks
  title: Block - Adwords Clicks
  layout: newspaper
  embed_style:
    background_color: "#ffffff"
    title_color: "#3a4245"
    tile_text_color: "#3a4245"
    text_tile_text_color: ''
  elements:
  - title: Clicks by Device
    name: Clicks by Device
    model: google_ads
    explore: ad_impressions_ad_group
    type: looker_bar
    fields: [fact.device_type, fact.total_clicks]
    filters:
      fact.total_clicks: ">0"
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
    y_axes: [{label: '', maxValue: !!null '', minValue: !!null '', orientation: bottom,
        showLabels: false, showValues: false, tickDensity: default, tickDensityCustom: 5,
        type: linear, unpinAxis: false, valueFormat: !!null '', series: [{id: fact.average_cost_per_click,
            name: Ad Stats Cost, axisId: fact.average_cost_per_click, __FILE: app-marketing-google-ads/google_block_clicks.dashboard.lookml,
            __LINE_NUM: 46}], __FILE: app-marketing-google-ads/google_block_clicks.dashboard.lookml,
        __LINE_NUM: 44}]
    colors: ["#d06180", "#7869df", "#6e98f9", "#8ac8ca", "#dc9d4f", "#4bb86a", "#a4a6a9",
      "#a6b7ff", "#afe8fd", "#ea9895", "#f1e582"]
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
    height: 5
  - title: Clicks by Bid Strategy
    name: Clicks by Bid Strategy
    model: google_ads
    explore: ad_impressions_keyword
    type: looker_bar
    fields: [keyword.bidding_strategy_type, fact.total_clicks]
    filters:
      fact.total_clicks: ">0"
    sorts: [fact.total_clicks desc]
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
    y_axes: [{label: '', maxValue: !!null '', minValue: !!null '', orientation: bottom,
        showLabels: false, showValues: false, tickDensity: default, tickDensityCustom: 5,
        type: linear, unpinAxis: false, valueFormat: !!null '', series: [{id: fact.average_cost_per_click,
            name: Ad Stats Cost, axisId: fact.average_cost_per_click, __FILE: app-marketing-google-ads/google_block_clicks.dashboard.lookml,
            __LINE_NUM: 100}], __FILE: app-marketing-google-ads/google_block_clicks.dashboard.lookml,
        __LINE_NUM: 98}]
    colors: ["#dc9d4f", "#7869df", "#6e98f9", "#8ac8ca", "#d06180", "#4bb86a", "#a4a6a9",
      "#a6b7ff", "#afe8fd", "#ea9895", "#f1e582"]
    series_colors: {}
    listen:
      Account: customer.account_descriptive_name
      Campaign: campaign.name
      Ad Group: ad_group.ad_group_name
      Period: fact.period
      Period Latest: fact.date_period_latest
    row: 15
    col: 0
    width: 8
    height: 5
  - title: Clicks To Date
    name: Clicks To Date
    model: google_ads
    explore: period_fact
    type: looker_column
    fields: [fact.date_period_dynamic_grain, fact.total_conversions, fact.average_cost_per_conversion,
      fact.average_conversion_rate, fact.average_cost_per_click, fact.average_click_rate,
      fact.total_clicks]
    sorts: [fact.date_period_dynamic_grain]
    limit: 500
    column_limit: 50
    stacking: ''
    colors: ["#7869df", "#6e98f9", "#8ac8ca", "#d06180", "#dc9d4f", "#4bb86a", "#a4a6a9",
      "#a6b7ff", "#afe8fd", "#ea9895", "#f1e582"]
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
    limit_displayed_rows: false
    hidden_series: [fact.total_conversions, fact.average_cost_per_conversion, fact.average_conversion_rate,
      fact.average_cost_per_click]
    y_axes: [{label: !!null '', orientation: left, series: [{id: fact.average_cost_per_conversion,
            name: Cost Per Conversion, axisId: fact.average_cost_per_conversion, __FILE: app-marketing-google-ads/google_block_clicks.dashboard.lookml,
            __LINE_NUM: 154}], showLabels: true, showValues: true, maxValue: !!null '',
        minValue: !!null '', valueFormat: !!null '', unpinAxis: false, tickDensity: default,
        tickDensityCustom: !!null '', type: linear, __FILE: app-marketing-google-ads/google_block_clicks.dashboard.lookml,
        __LINE_NUM: 154}, {label: '', orientation: left, series: [{id: fact.total_conversions,
            name: Conversions, axisId: fact.total_conversions, __FILE: app-marketing-google-ads/google_block_clicks.dashboard.lookml,
            __LINE_NUM: 159}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, type: linear, __FILE: app-marketing-google-ads/google_block_clicks.dashboard.lookml,
        __LINE_NUM: 159}, {label: '', orientation: left, series: [{id: fact.average_conversion_rate,
            name: Conversion Rate, axisId: fact.average_conversion_rate, __FILE: app-marketing-google-ads/google_block_clicks.dashboard.lookml,
            __LINE_NUM: 163}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, type: linear, __FILE: app-marketing-google-ads/google_block_clicks.dashboard.lookml,
        __LINE_NUM: 163}, {label: '', orientation: left, series: [{id: fact.average_click_rate,
            name: Click Through Rate, axisId: fact.average_click_rate, __FILE: app-marketing-google-ads/google_block_clicks.dashboard.lookml,
            __LINE_NUM: 167}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, type: linear, __FILE: app-marketing-google-ads/google_block_clicks.dashboard.lookml,
        __LINE_NUM: 167}, {label: !!null '', orientation: right, series: [{id: fact.average_cost_per_click,
            name: Cost per Click, axisId: fact.average_cost_per_click, __FILE: app-marketing-google-ads/google_block_clicks.dashboard.lookml,
            __LINE_NUM: 171}, {id: fact.total_clicks, name: Clicks, axisId: fact.total_clicks,
            __FILE: app-marketing-google-ads/google_block_clicks.dashboard.lookml,
            __LINE_NUM: 173}], showLabels: true, showValues: true, maxValue: !!null '',
        minValue: !!null '', valueFormat: !!null '', unpinAxis: false, tickDensity: default,
        tickDensityCustom: !!null '', type: linear, __FILE: app-marketing-google-ads/google_block_clicks.dashboard.lookml,
        __LINE_NUM: 171}]
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
    barColors: [red, blue]
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
  - title: Clicks by Network
    name: Clicks by Network
    model: google_ads
    explore: ad_impressions_ad_group
    type: looker_bar
    fields: [fact.ad_network_type, fact.total_clicks]
    filters:
      fact.total_clicks: ">0"
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
        showLabels: false, showValues: false, tickDensity: default, tickDensityCustom: 5,
        type: linear, unpinAxis: false, valueFormat: !!null '', series: [{id: fact.average_cost_per_click,
            name: Ad Stats Cost, axisId: fact.average_cost_per_click, __FILE: app-marketing-google-ads/google_block_clicks.dashboard.lookml,
            __LINE_NUM: 266}], __FILE: app-marketing-google-ads/google_block_clicks.dashboard.lookml,
        __LINE_NUM: 264}]
    colors: ["#8ac8ca", "#7869df", "#6e98f9", "#d06180", "#dc9d4f", "#4bb86a", "#a4a6a9",
      "#a6b7ff", "#afe8fd", "#ea9895", "#f1e582"]
    series_colors: {}
    listen:
      Account: customer.account_descriptive_name
      Campaign: campaign.name
      Ad Group: ad_group.ad_group_name
      Period: fact.period
      Period Latest: fact.date_period_latest
    row: 20
    col: 0
    width: 8
    height: 5
  - title: Clicks by Day of Week and Hour of Day
    name: Clicks by Day of Week and Hour of Day
    model: google_ads
    explore: ad_impressions_ad_group_hour
    type: table
    fields: [fact.hour_of_day, fact.date_day_of_week, fact.total_clicks]
    pivots: [fact.date_day_of_week]
    fill_fields: [fact.date_day_of_week]
    sorts: [fact.date_day_of_week 0, fact.hour_of_day]
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
    conditional_formatting: [{type: high to low, value: !!null '', background_color: !!null '',
        font_color: !!null '', palette: {name: Red to Yellow to Green, colors: ["#F36254",
            "#FCF758", "#4FBC89"], __FILE: app-marketing-google-ads/google_block_clicks.dashboard.lookml,
          __LINE_NUM: 304}, bold: false, italic: false, strikethrough: false, fields: [
          fact.total_clicks], __FILE: app-marketing-google-ads/google_block_clicks.dashboard.lookml,
        __LINE_NUM: 303}]
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
        type: linear, unpinAxis: false, valueFormat: !!null '', series: [{id: fact.average_cost_per_click,
            name: Ad Stats Cost, axisId: fact.average_cost_per_click, __FILE: app-marketing-google-ads/google_block_clicks.dashboard.lookml,
            __LINE_NUM: 352}], __FILE: app-marketing-google-ads/google_block_clicks.dashboard.lookml,
        __LINE_NUM: 350}]
    listen:
      Account: customer.account_descriptive_name
      Campaign: campaign.name
      Ad Group: ad_group.ad_group_name
      Period: fact.period
      Period Latest: fact.date_period_latest
    row: 25
    col: 0
    width: 14
    height: 14
  - title: Clicks By State
    name: Clicks By State
    model: google_ads
    explore: ad_impressions_geo
    type: looker_map
    fields: [geo_us_state.state, fact.total_clicks]
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
    reverse_map_value_colors: false
    map: usa
    map_projection: ''
    quantize_colors: false
    series_types: {}
    map_latitude: 39.842286020743394
    map_longitude: -96.45996093750001
    map_zoom: 4
    colors: ["#F36254", "#FCF758", "#4FBC89"]
    listen:
      Account: customer.account_descriptive_name
      Campaign: campaign.name
      Ad Group: ad_group.ad_group_name
      Period: fact.period
      Period Latest: fact.date_period_latest
    row: 10
    col: 8
    width: 16
    height: 15
  - title: Clicks by Day of Week
    name: Clicks by Day of Week
    model: google_ads
    explore: period_fact
    type: looker_bar
    fields: [fact.date_day_of_week, fact.total_clicks]
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
        showLabels: false, showValues: false, tickDensity: default, tickDensityCustom: 5,
        type: linear, unpinAxis: false, valueFormat: !!null '', series: [{id: fact.average_cost_per_click,
            name: Ad Stats Cost, axisId: fact.average_cost_per_click, __FILE: app-marketing-google-ads/google_block_clicks.dashboard.lookml,
            __LINE_NUM: 473}], __FILE: app-marketing-google-ads/google_block_clicks.dashboard.lookml,
        __LINE_NUM: 471}]
    conditional_formatting: [{type: high to low, value: !!null '', background_color: !!null '',
        font_color: !!null '', palette: {name: Red to Yellow to Green, colors: ["#F36254",
            "#FCF758", "#4FBC89"], __FILE: app-marketing-google-ads/google_block_clicks.dashboard.lookml,
          __LINE_NUM: 478}, bold: false, italic: false, strikethrough: false, fields: !!null '',
        __FILE: app-marketing-google-ads/google_block_clicks.dashboard.lookml, __LINE_NUM: 477}]
    colors: ["#8ac8ca", "#7869df", "#6e98f9", "#d06180", "#dc9d4f", "#4bb86a", "#a4a6a9",
      "#a6b7ff", "#afe8fd", "#ea9895", "#f1e582"]
    series_colors: {}
    listen:
      Account: customer.account_descriptive_name
      Campaign: campaign.name
      Ad Group: ad_group.ad_group_name
      Period: fact.period
      Period Latest: fact.date_period_latest
    row: 25
    col: 14
    width: 10
    height: 7
  - title: Ad Group Clicks Change
    name: Ad Group Clicks Change
    model: google_ads
    explore: period_fact
    type: looker_bar
    fields: [ad_group.ad_group_name, campaign.name, fact.total_cost, fact.total_clicks,
      last_fact.total_cost, last_fact.total_clicks, fact.total_clicks_period_delta]
    filters:
      fact.total_clicks_period_delta_abs: ">0"
    sorts: [fact.total_clicks_period_delta_abs desc]
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
    hidden_fields: [campaign.name, fact.total_cost, last_fact.total_cost, fact.total_clicks_period_delta]
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '10'
    y_axes: [{label: '', maxValue: !!null '', minValue: !!null '', orientation: bottom,
        showLabels: true, showValues: false, tickDensity: default, tickDensityCustom: !!null '',
        type: linear, unpinAxis: false, valueFormat: !!null '', series: [{id: fact.average_cost_per_click,
            name: Period Fact, axisId: fact.average_cost_per_click, __FILE: app-marketing-google-ads/google_block_clicks.dashboard.lookml,
            __LINE_NUM: 538}, {id: last_fact.average_cost_per_click, name: Last Period
              Fact, axisId: last_fact.average_cost_per_click, __FILE: app-marketing-google-ads/google_block_clicks.dashboard.lookml,
            __LINE_NUM: 540}], __FILE: app-marketing-google-ads/google_block_clicks.dashboard.lookml,
        __LINE_NUM: 536}]
    series_colors: {}
    colors: ["#a6b7ff", "#7869df", "#ea9895", "#d06180", "#6e98f9", "#8ac8ca", "#dc9d4f",
      "#4bb86a", "#a4a6a9", "#a6b7ff", "#afe8fd", "#ea989"]
    x_axis_reversed: false
    y_axis_reversed: false
    listen:
      Account: customer.account_descriptive_name
      Campaign: campaign.name
      Ad Group: ad_group.ad_group_name
      Period: fact.period
      Period Latest: fact.date_period_latest
    row: 39
    col: 0
    width: 8
    height: 10
  - title: Keyword Clicks Change
    name: Keyword Clicks Change
    model: google_ads
    explore: period_fact
    type: looker_bar
    fields: [keyword.criteria, ad_group.ad_group_name, campaign.name, fact.total_cost,
      fact.total_clicks, last_fact.total_cost, last_fact.total_clicks, fact.total_clicks_period_delta]
    filters:
      fact.total_clicks_period_delta_abs: ">0"
    sorts: [fact.total_clicks_period_delta_abs desc]
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
    hidden_fields: [campaign.name, ad_group.ad_group_name, fact.total_cost, last_fact.total_cost,
      fact.total_clicks_period_delta]
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '10'
    y_axes: [{label: '', maxValue: !!null '', minValue: !!null '', orientation: bottom,
        showLabels: true, showValues: false, tickDensity: default, tickDensityCustom: !!null '',
        type: linear, unpinAxis: false, valueFormat: !!null '', series: [{id: fact.average_cost_per_click,
            name: Period Fact, axisId: fact.average_cost_per_click, __FILE: app-marketing-google-ads/google_block_clicks.dashboard.lookml,
            __LINE_NUM: 602}, {id: last_fact.average_cost_per_click, name: Last Period
              Fact, axisId: last_fact.average_cost_per_click, __FILE: app-marketing-google-ads/google_block_clicks.dashboard.lookml,
            __LINE_NUM: 604}], __FILE: app-marketing-google-ads/google_block_clicks.dashboard.lookml,
        __LINE_NUM: 600}]
    series_colors: {}
    colors: ["#a6b7ff", "#7869df", "#ea9895", "#d06180", "#6e98f9", "#8ac8ca", "#dc9d4f",
      "#4bb86a", "#a4a6a9", "#a6b7ff", "#afe8fd", "#ea989"]
    x_axis_reversed: false
    y_axis_reversed: false
    listen:
      Account: customer.account_descriptive_name
      Campaign: campaign.name
      Ad Group: ad_group.ad_group_name
      Period: fact.period
      Period Latest: fact.date_period_latest
    row: 39
    col: 8
    width: 8
    height: 10
  - title: Ad Clicks Change
    name: Ad Clicks Change
    model: google_ads
    explore: period_fact
    type: looker_bar
    fields: [ad.creative, ad_group.ad_group_name, campaign.name, fact.total_cost,
      fact.total_clicks, last_fact.total_cost, last_fact.total_clicks, fact.total_clicks_period_delta]
    filters:
      fact.total_clicks_period_delta_abs: ">0"
    sorts: [fact.total_clicks_period_delta_abs desc]
    limit: 50
    column_limit: 50
    query_timezone: America/Los_Angeles
    stacking: ''
    colors: ["#a6b7ff", "#7869df", "#ea9895", "#d06180", "#6e98f9", "#8ac8ca", "#dc9d4f",
      "#4bb86a", "#a4a6a9", "#a6b7ff", "#afe8fd", "#ea989"]
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
    y_axes: [{label: '', maxValue: !!null '', minValue: !!null '', orientation: bottom,
        showLabels: true, showValues: false, tickDensity: default, tickDensityCustom: !!null '',
        type: linear, unpinAxis: false, valueFormat: !!null '', series: [{id: fact.average_cost_per_click,
            name: Period Fact, axisId: fact.average_cost_per_click, __FILE: app-marketing-google-ads/google_block_clicks.dashboard.lookml,
            __LINE_NUM: 655}, {id: last_fact.average_cost_per_click, name: Last Period
              Fact, axisId: last_fact.average_cost_per_click, __FILE: app-marketing-google-ads/google_block_clicks.dashboard.lookml,
            __LINE_NUM: 657}], __FILE: app-marketing-google-ads/google_block_clicks.dashboard.lookml,
        __LINE_NUM: 653}]
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
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_fields: [ad_group.ad_group_name, campaign.name, fact.total_cost, last_fact.total_cost,
      fact.total_clicks_period_delta]
    listen:
      Account: customer.account_descriptive_name
      Campaign: campaign.name
      Ad Group: ad_group.ad_group_name
      Period: fact.period
      Period Latest: fact.date_period_latest
    row: 39
    col: 16
    width: 8
    height: 10
  - title: Clicks by Hour of Day
    name: Clicks by Hour of Day
    model: google_ads
    explore: ad_impressions_ad_group_hour
    type: looker_column
    fields: [fact.hour_of_day, fact.total_clicks]
    sorts: [fact.hour_of_day]
    limit: 500
    stacking: ''
    colors: ["#8ac8ca", "#7869df", "#6e98f9", "#d06180", "#dc9d4f", "#4bb86a", "#a4a6a9",
      "#a6b7ff", "#afe8fd", "#ea9895", "#f1e582"]
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
    y_axes: [{label: '', orientation: left, series: [{id: fact.total_clicks, name: Clicks,
            axisId: fact.total_clicks, __FILE: app-marketing-google-ads/google_block_clicks.dashboard.lookml,
            __LINE_NUM: 720}], showLabels: false, showValues: false, unpinAxis: false,
        tickDensity: default, type: linear, __FILE: app-marketing-google-ads/google_block_clicks.dashboard.lookml,
        __LINE_NUM: 720}]
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
    conditional_formatting: [{type: high to low, value: !!null '', background_color: !!null '',
        font_color: !!null '', palette: {name: Red to Yellow to Green, colors: ["#F36254",
            "#FCF758", "#4FBC89"], __FILE: app-marketing-google-ads/google_block_clicks.dashboard.lookml,
          __LINE_NUM: 768}, bold: false, italic: false, strikethrough: false, fields: !!null '',
        __FILE: app-marketing-google-ads/google_block_clicks.dashboard.lookml, __LINE_NUM: 767}]
    listen:
      Account: customer.account_descriptive_name
      Campaign: campaign.name
      Ad Group: ad_group.ad_group_name
      Period: fact.period
      Period Latest: fact.date_period_latest
    row: 32
    col: 14
    width: 10
    height: 7
  filters:
  - name: Account
    title: Account
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: google_ads
    explore: period_fact
    listens_to_filters: [Period, Period Latest]
    field: customer.account_descriptive_name
  - name: Campaign
    title: Campaign
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: google_ads
    explore: period_fact
    listens_to_filters: [Period, Period Latest, Account]
    field: campaign.name
  - name: Ad Group
    title: Ad Group
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: google_ads
    explore: period_fact
    listens_to_filters: [Period, Period Latest, Campaign, Account]
    field: ad_group.ad_group_name
  - name: Period
    title: Period
    type: field_filter
    default_value: 28 day
    allow_multiple_values: false
    required: true
    model: google_ads
    explore: period_fact
    listens_to_filters: []
    field: fact.period
  - name: Period Latest
    title: Period Latest
    type: field_filter
    default_value: 'Yes'
    allow_multiple_values: false
    required: true
    model: google_ads
    explore: period_fact
    listens_to_filters: []
    field: fact.date_period_latest
