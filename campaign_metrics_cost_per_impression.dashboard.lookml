- dashboard: campaign_metrics_cost_per_impression
  title: Google Adwords - Cost Per Impression
  extends: google_ads_base
  elements:
  - title: Cost Per Impression By State
    name: Cost Per Impression By State
    model: marketing_analytics
    explore: ad_impressions_geo
    type: looker_map
    fields: [geo_us_state.state, fact.average_cost_per_impression]
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
  - title: Ad Cost Per Impression Change
    name: Ad Cost Per Impression Change
    model: marketing_analytics
    explore: period_fact
    type: looker_bar
    fields: [campaign.name, ad_group.ad_group_name, ad.creative, fact.average_cost_per_impression,
      last_fact.average_cost_per_impression, fact.average_cost_per_impression_period_percent_change]
    filters:
      fact.average_cost_per_impression_period_percent_change_abs: NOT NULL
    sorts: [fact.average_cost_per_impression_period_percent_change_abs desc]
    limit: 50
    column_limit: 50
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
        type: linear, unpinAxis: false, valueFormat: !!null '', series: [{id: fact.average_cost_per_click,
            name: Period Fact, axisId: fact.average_cost_per_click}, {id: last_fact.average_cost_per_click,
            name: Last Period Fact, axisId: last_fact.average_cost_per_click}]}]
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '10'
    colors: ["#a6b7ff", "#7869df", "#ea9895", "#d06180", "#6e98f9", "#8ac8ca", "#dc9d4f",
      "#4bb86a", "#a4a6a9", "#a6b7ff", "#afe8fd", "#ea989"]
    series_types: {}
    series_colors:
      fact.average_cost_per_impression: "#FBB555"
      last_fact.average_cost_per_impression: "#FFD95F"
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_fields: [ad_group.ad_group_name, campaign.name, fact.average_cost_per_impression_period_percent_change]
    defaults_version: 1
    listen:
      Account: customer.account_descriptive_name
      Campaign: campaign.name
      Ad Group: ad_group.ad_group_name
      Period: fact.period
      Period Latest: fact.date_period_latest
    row: 37
    col: 16
    width: 8
    height: 11
  - title: Cost Per Impression by Device
    name: Cost Per Impression by Device
    model: marketing_analytics
    explore: ad_impressions_ad_group
    type: looker_bar
    fields: [fact.device_type, fact.average_cost_per_impression]
    filters:
      fact.total_cost: ">0"
    sorts: [fact.average_cost_per_impression desc]
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
        showLabels: false, showValues: false, tickDensity: default, tickDensityCustom: 5,
        type: linear, unpinAxis: false, valueFormat: !!null '', series: [{id: fact.average_cost_per_click,
            name: Ad Stats Cost, axisId: fact.average_cost_per_click}]}]
    x_axis_label: Device
    colors: ["#d06180", "#7869df", "#6e98f9", "#8ac8ca", "#dc9d4f", "#4bb86a", "#a4a6a9",
      "#a6b7ff", "#afe8fd", "#ea9895", "#f1e582"]
    series_types: {}
    series_colors:
      fact.average_cost_per_impression: "#ffc026"
    label_color: []
    defaults_version: 1
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
  - title: Cost Per Impression by Bid Strategy
    name: Cost Per Impression by Bid Strategy
    model: marketing_analytics
    explore: ad_impressions_keyword
    type: looker_bar
    fields: [keyword.bidding_strategy_type, fact.average_cost_per_impression]
    filters:
      fact.total_cost: ">0"
    sorts: [fact.average_cost_per_impression desc]
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
        showLabels: false, showValues: false, tickDensity: default, tickDensityCustom: 5,
        type: linear, unpinAxis: false, valueFormat: !!null '', series: [{id: fact.average_cost_per_click,
            name: Ad Stats Cost, axisId: fact.average_cost_per_click}]}]
    x_axis_label: Bid Strategy
    colors: ["#dc9d4f", "#7869df", "#6e98f9", "#8ac8ca", "#d06180", "#4bb86a", "#a4a6a9",
      "#a6b7ff", "#afe8fd", "#ea9895", "#f1e582"]
    series_types: {}
    series_colors:
      fact.average_cost_per_impression: "#ffc026"
    label_color: []
    defaults_version: 1
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
  - title: Cost Per Impression by Network
    name: Cost Per Impression by Network
    model: marketing_analytics
    explore: ad_impressions_ad_group
    type: looker_bar
    fields: [fact.ad_network_type, fact.average_cost_per_impression]
    filters:
      fact.average_cost_per_impression: ">0"
    sorts: [fact.ad_network_type]
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
        showLabels: false, showValues: false, tickDensity: default, tickDensityCustom: 5,
        type: linear, unpinAxis: false, valueFormat: !!null '', series: [{id: fact.average_cost_per_click,
            name: Ad Stats Cost, axisId: fact.average_cost_per_click}]}]
    x_axis_label: Network
    colors: ["#8ac8ca", "#7869df", "#6e98f9", "#d06180", "#dc9d4f", "#4bb86a", "#a4a6a9",
      "#a6b7ff", "#afe8fd", "#ea9895", "#f1e582"]
    series_types: {}
    series_colors:
      fact.average_cost_per_impression: "#ffc026"
    label_color: []
    defaults_version: 1
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
  - title: Ad Group Cost Per Impression Change
    name: Ad Group Cost Per Impression Change
    model: marketing_analytics
    explore: period_fact
    type: looker_bar
    fields: [campaign.name, ad_group.ad_group_name, fact.average_cost_per_impression,
      last_fact.average_cost_per_impression, fact.average_cost_per_impression_period_percent_change]
    filters:
      fact.average_cost_per_impression_period_percent_change_abs: NOT NULL
    sorts: [fact.average_cost_per_impression_period_percent_change_abs desc]
    limit: 500
    column_limit: 50
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
        type: linear, unpinAxis: false, valueFormat: !!null '', series: [{id: fact.average_cost_per_click,
            name: Period Fact, axisId: fact.average_cost_per_click}, {id: last_fact.average_cost_per_click,
            name: Last Period Fact, axisId: last_fact.average_cost_per_click}]}]
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '10'
    colors: ["#a6b7ff", "#7869df", "#ea9895", "#d06180", "#6e98f9", "#8ac8ca", "#dc9d4f",
      "#4bb86a", "#a4a6a9", "#a6b7ff", "#afe8fd", "#ea989"]
    series_types: {}
    series_colors:
      fact.average_cost_per_impression: "#ffc026"
      last_fact.average_cost_per_impression: "#ffdd66"
    hidden_fields: [campaign.name, fact.average_cost_per_impression_period_percent_change]
    defaults_version: 1
    listen:
      Account: customer.account_descriptive_name
      Campaign: campaign.name
      Ad Group: ad_group.ad_group_name
      Period: fact.period
      Period Latest: fact.date_period_latest
    row: 37
    col: 0
    width: 8
    height: 11
  - title: Keyword Cost Per Impression Change
    name: Keyword Cost Per Impression Change
    model: marketing_analytics
    explore: period_fact
    type: looker_bar
    fields: [campaign.name, ad_group.ad_group_name, keyword.criteria, fact.average_cost_per_impression,
      last_fact.average_cost_per_impression, fact.average_cost_per_impression_period_percent_change]
    filters:
      fact.average_cost_per_impression_period_percent_change_abs: NOT NULL
    sorts: [fact.average_cost_per_impression_period_percent_change_abs desc]
    limit: 500
    column_limit: 50
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
        type: linear, unpinAxis: false, valueFormat: !!null '', series: [{id: fact.average_cost_per_click,
            name: Period Fact, axisId: fact.average_cost_per_click}, {id: last_fact.average_cost_per_click,
            name: Last Period Fact, axisId: last_fact.average_cost_per_click}]}]
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '10'
    colors: ["#a6b7ff", "#7869df", "#ea9895", "#d06180", "#6e98f9", "#8ac8ca", "#dc9d4f",
      "#4bb86a", "#a4a6a9", "#a6b7ff", "#afe8fd", "#ea989"]
    series_types: {}
    series_colors:
      fact.average_cost_per_impression: "#ffc026"
      last_fact.average_cost_per_impression: "#ffdd66"
    hidden_fields: [campaign.name, ad_group.ad_group_name, fact.average_cost_per_impression_period_percent_change]
    defaults_version: 1
    listen:
      Account: customer.account_descriptive_name
      Campaign: campaign.name
      Ad Group: ad_group.ad_group_name
      Period: fact.period
      Period Latest: fact.date_period_latest
    row: 37
    col: 8
    width: 8
    height: 11
  - title: Cost Per Impression by Hour of Day
    name: Cost Per Impression by Hour of Day
    model: marketing_analytics
    explore: ad_impressions_ad_group_hour
    type: looker_column
    fields: [fact.hour_of_day, fact.average_cost_per_impression]
    sorts: [fact.hour_of_day]
    limit: 500
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
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
    y_axes: [{label: '', orientation: left, series: [{id: fact.total_clicks, name: Clicks,
            axisId: fact.total_clicks}], showLabels: false, showValues: false, unpinAxis: false,
        tickDensity: default, type: linear}]
    x_axis_label: Hour Of Day
    colors: ["#8ac8ca", "#7869df", "#6e98f9", "#d06180", "#dc9d4f", "#4bb86a", "#a4a6a9",
      "#a6b7ff", "#afe8fd", "#ea9895", "#f1e582"]
    series_types: {}
    series_colors:
      fact.average_cost_per_impression: "#ffc026"
    label_color: []
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
            "#FCF758", "#4FBC89"]}, bold: false, italic: false, strikethrough: false,
        fields: !!null ''}]
    defaults_version: 1
    listen:
      Account: customer.account_descriptive_name
      Campaign: campaign.name
      Ad Group: ad_group.ad_group_name
      Period: fact.period
      Period Latest: fact.date_period_latest
    row: 31
    col: 14
    width: 10
    height: 6
  - title: Cost Per Impression by Day of Week
    name: Cost Per Impression by Day of Week
    model: marketing_analytics
    explore: period_fact
    type: looker_bar
    fields: [fact.date_day_of_week, fact.average_cost_per_impression]
    fill_fields: [fact.date_day_of_week]
    sorts: [fact.date_day_of_week]
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
        showLabels: false, showValues: false, tickDensity: default, tickDensityCustom: 5,
        type: linear, unpinAxis: false, valueFormat: !!null '', series: [{id: fact.average_cost_per_click,
            name: Ad Stats Cost, axisId: fact.average_cost_per_click}]}]
    x_axis_label: ''
    colors: ["#8ac8ca", "#7869df", "#6e98f9", "#d06180", "#dc9d4f", "#4bb86a", "#a4a6a9",
      "#a6b7ff", "#afe8fd", "#ea9895", "#f1e582"]
    series_types: {}
    series_colors:
      fact.average_cost_per_impression: "#ffc026"
    label_color: []
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
            "#FCF758", "#4FBC89"]}, bold: false, italic: false, strikethrough: false,
        fields: !!null ''}]
    defaults_version: 1
    listen:
      Account: customer.account_descriptive_name
      Campaign: campaign.name
      Ad Group: ad_group.ad_group_name
      Period: fact.period
      Period Latest: fact.date_period_latest
    row: 25
    col: 14
    width: 10
    height: 6
  - title: Cost Per Impression To Date
    name: Cost Per Impression To Date
    model: marketing_analytics
    explore: period_fact
    type: looker_column
    fields: [fact.date_period_dynamic_grain, fact.total_conversions, fact.average_cost_per_conversion,
      fact.average_conversion_rate, fact.average_cost_per_click, fact.average_click_rate,
      fact.total_impressions, fact.average_cost_per_impression]
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
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: !!null '', orientation: left, series: [{axisId: fact.average_cost_per_conversion,
            id: fact.average_cost_per_conversion, name: Cost Per Conversion}], showLabels: true,
        showValues: true, maxValue: !!null '', minValue: !!null '', valueFormat: !!null '',
        unpinAxis: false, tickDensity: default, tickDensityCustom: !!null '', type: linear},
      {label: '', orientation: left, series: [{axisId: fact.total_conversions, id: fact.total_conversions,
            name: Conversions}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, type: linear}, {label: '', orientation: left, series: [
          {axisId: fact.average_conversion_rate, id: fact.average_conversion_rate,
            name: Conversion Rate}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, type: linear}, {label: '', orientation: left, series: [
          {axisId: fact.average_click_rate, id: fact.average_click_rate, name: Click
              Through Rate}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, type: linear}, {label: '', orientation: left, series: [
          {axisId: fact.average_cost_per_impression, id: fact.average_cost_per_impression,
            name: CPM}], showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        type: linear}, {label: !!null '', orientation: right, series: [{axisId: fact.average_cost_per_click,
            id: fact.average_cost_per_click, name: Cost per Click}], showLabels: true,
        showValues: true, maxValue: !!null '', minValue: !!null '', valueFormat: !!null '',
        unpinAxis: false, tickDensity: default, tickDensityCustom: !!null '', type: linear},
      {label: '', orientation: right, series: [{axisId: fact.total_impressions, id: fact.total_impressions,
            name: Impressions}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, type: linear}]
    hidden_series: [fact.total_conversions, fact.average_cost_per_conversion, fact.average_conversion_rate,
      fact.average_cost_per_click, fact.average_click_rate]
    colors: ["#7869df", "#6e98f9", "#8ac8ca", "#d06180", "#dc9d4f", "#4bb86a", "#a4a6a9",
      "#a6b7ff", "#afe8fd", "#ea9895", "#f1e582"]
    series_types:
      fact.total_conversions: line
      fact.average_cost_per_conversion: line
      fact.average_conversion_rate: line
      fact.average_click_rate: line
      fact.average_cost_per_click: line
      fact.total_clicks: line
      fact.total_impressions: line
      fact.average_cost_per_impression: line
    series_colors:
      fact.average_cost_per_impression: "#ffc026"
      fact.total_impressions: "#72D16D"
    series_labels:
      fact.total_conversions: Conversions
      fact.total_clicks: Clicks
      fact.average_conversion_rate: Conversion Rate
      fact.average_cost_per_conversion: Cost Per Conversion
    reference_lines: []
    column_spacing_ratio: 0
    column_group_spacing_ratio: 0
    show_dropoff: false
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
    height: 10
  - title: Cost Per Impression by Day of Week and Hour of Day
    name: Cost Per Impression by Day of Week and Hour of Day
    model: marketing_analytics
    explore: ad_impressions_ad_group_hour
    type: looker_grid
    fields: [fact.hour_of_day, fact.date_day_of_week, fact.average_cost_per_impression]
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
      fact.average_cost_per_click: "-"
    series_cell_visualizations:
      fact.average_cost_per_impression:
        is_active: false
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: !!null '',
        font_color: !!null '', palette: {name: Red to Yellow to Green, colors: ["#F36254",
            "#FCF758", "#4FBC89"]}, bold: false, italic: false, strikethrough: false,
        fields: [fact.average_cost_per_impression], color_application: {collection_id: legacy,
          palette_id: legacy_diverging2, options: {steps: 5, reverse: true}}}]
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
        type: linear, unpinAxis: false, valueFormat: !!null '', series: [{id: fact.average_cost_per_click,
            name: Ad Stats Cost, axisId: fact.average_cost_per_click}]}]
    defaults_version: 1
    listen:
      Account: customer.account_descriptive_name
      Campaign: campaign.name
      Ad Group: ad_group.ad_group_name
      Period: fact.period
      Period Latest: fact.date_period_latest
    row: 25
    col: 0
    width: 14
    height: 12
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
