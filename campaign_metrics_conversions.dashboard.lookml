- dashboard: campaign_metrics_conversions
  extends: google_ads_base
  title: Google Adwords - Conversions
  elements:
  - title: Conversions To Date
    name: Conversions To Date
    model: marketing_analytics
    explore: period_fact
    type: looker_column
    fields: [fact.date_period_dynamic_grain, fact.total_conversions, fact.average_cost_per_conversion,
      fact.average_conversion_rate, fact.average_cost_per_click, fact.average_click_rate]
    sorts: [fact.date_period_dynamic_grain]
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_null_points: false
    point_style: none
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
    series_types:
      fact.average_cost_per_conversion: line
      fact.average_conversion_rate: line
      fact.average_click_rate: line
      fact.average_cost_per_click: line
      fact.total_conversions: line
    show_dropoff: false
    y_axes: [{label: !!null '', maxValue: !!null '', minValue: !!null '', orientation: left,
        showLabels: true, showValues: true, tickDensity: default, tickDensityCustom: !!null '',
        type: linear, unpinAxis: false, valueFormat: !!null '', series: [{id: fact.average_cost_per_conversion,
            name: Cost Per Conversion, axisId: fact.average_cost_per_conversion}]},
      {label: !!null '', maxValue: !!null '', minValue: !!null '', orientation: right,
        showLabels: true, showValues: true, tickDensity: default, tickDensityCustom: !!null '',
        type: linear, unpinAxis: false, valueFormat: !!null '', series: [{id: fact.total_conversions,
            name: Conversions, axisId: fact.total_conversions}]}]
    discontinuous_nulls: false
    focus_on_hover: false
    reference_lines: []
    colors: ["#7869df", "#6e98f9", "#8ac8ca", "#d06180", "#dc9d4f", "#4bb86a", "#a4a6a9",
      "#a6b7ff", "#afe8fd", "#ea9895", "#f1e582"]
    series_colors: {}
    hidden_series: [fact.average_conversion_rate, fact.average_click_rate, fact.average_cost_per_click]
    series_labels:
      fact.total_conversions: Conversions
      fact.total_clicks: Clicks
      fact.average_conversion_rate: Conversion Rate
      fact.average_cost_per_conversion: Cost Per Conversion
    hidden_fields: []
    column_group_spacing_ratio:
    column_spacing_ratio:
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
  - title: Conversions by Day of Week
    name: Conversions by Day of Week
    model: marketing_analytics
    explore: period_fact
    type: looker_bar
    fields: [fact.date_day_of_week, fact.total_conversions]
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
        type: linear, unpinAxis: false, valueFormat: !!null '', series: [{id: fact.total_conversions,
            name: Ad Stats Cost, axisId: fact.total_conversions}]}]
    conditional_formatting: [{type: high to low, value: !!null '', background_color: !!null '',
        font_color: !!null '', palette: {name: Red to Yellow to Green, colors: ["#F36254",
            "#FCF758", "#4FBC89"]}, bold: false, italic: false, strikethrough: false,
        fields: !!null ''}]
    colors: ["#7869df", "#6e98f9", "#8ac8ca", "#d06180", "#dc9d4f", "#4bb86a", "#a4a6a9",
      "#a6b7ff", "#afe8fd", "#ea9895", "#f1e582"]
    series_colors: {}
    listen:
      Account: customer.account_descriptive_name
      Campaign: campaign.name
      Ad Group: ad_group.ad_group_name
      Period: fact.period
      Period Latest: fact.date_period_latest
    row: 17
    col: 14
    width: 10
    height: 7
  - title: Conversions by Hour of Day
    name: Conversions by Hour of Day
    model: marketing_analytics
    explore: ad_impressions_ad_group_hour
    type: looker_column
    fields: [fact.total_conversions, fact.hour_of_day]
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
    y_axes: [{label: '', maxValue: !!null '', minValue: !!null '', orientation: bottom,
        showLabels: false, showValues: false, tickDensity: default, tickDensityCustom: 5,
        type: linear, unpinAxis: false, valueFormat: !!null '', series: [{id: fact.total_conversions,
            name: Ad Stats Cost, axisId: fact.total_conversions}]}]
    conditional_formatting: [{type: high to low, value: !!null '', background_color: !!null '',
        font_color: !!null '', palette: {name: Red to Yellow to Green, colors: ["#F36254",
            "#FCF758", "#4FBC89"]}, bold: false, italic: false, strikethrough: false,
        fields: !!null ''}]
    colors: ["#7869df", "#6e98f9", "#8ac8ca", "#d06180", "#dc9d4f", "#4bb86a", "#a4a6a9",
      "#a6b7ff", "#afe8fd", "#ea9895", "#f1e582"]
    series_colors: {}
    listen:
      Account: customer.account_descriptive_name
      Campaign: campaign.name
      Ad Group: ad_group.ad_group_name
      Period: fact.period
      Period Latest: fact.date_period_latest
    row: 24
    col: 14
    width: 10
    height: 7
  - title: Creative Conversions Change
    name: Creative Conversions Change
    model: marketing_analytics
    explore: period_fact
    type: looker_bar
    fields: [campaign.name, ad_group.ad_group_name, ad.creative, fact.total_cost,
      fact.total_conversions, last_fact.total_cost, last_fact.total_conversions, fact.total_conversions_period_delta]
    filters:
      fact.total_conversions_period_delta_abs: ">0"
    sorts: [fact.total_conversions_period_delta_abs desc]
    limit: 50
    column_limit: 50
    query_timezone: America/Los_Angeles
    stacking: ''
    show_value_labels: true
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
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
    table_theme: gray
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '10'
    hidden_fields: [campaign.name, ad_group.ad_group_name, fact.total_cost, last_fact.total_cost,
      fact.total_conversions_period_delta]
    y_axes: [{label: '', maxValue: !!null '', minValue: !!null '', orientation: bottom,
        showLabels: false, showValues: false, tickDensity: default, tickDensityCustom: !!null '',
        type: linear, unpinAxis: false, valueFormat: !!null '', series: !!null ''}]
    hide_legend: false
    colors: ["#a6b7ff", "#7869df", "#ea9895", "#d06180", "#6e98f9", "#8ac8ca", "#dc9d4f",
      "#4bb86a", "#a4a6a9", "#a6b7ff", "#afe8fd", "#ea989"]
    series_colors: {}
    listen:
      Account: customer.account_descriptive_name
      Campaign: campaign.name
      Ad Group: ad_group.ad_group_name
      Period: fact.period
      Period Latest: fact.date_period_latest
    row: 31
    col: 0
    width: 12
    height: 7
  - title: Landing Pages Conversions Change
    name: Landing Pages Conversions Change
    model: marketing_analytics
    explore: period_fact
    type: looker_bar
    fields: [campaign.name, ad_group.ad_group_name, ad.creative_final_urls_domain_path,
      fact.total_cost, fact.total_conversions, last_fact.total_cost, last_fact.total_conversions,
      fact.total_conversions_period_delta]
    filters:
      fact.total_conversions_period_delta_abs: ">0"
    sorts: [fact.total_conversions_period_delta_abs desc]
    limit: 50
    column_limit: 50
    query_timezone: America/Los_Angeles
    stacking: ''
    show_value_labels: true
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
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
    table_theme: gray
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '10'
    hidden_fields: [campaign.name, ad_group.ad_group_name, fact.total_cost, last_fact.total_cost,
      fact.total_conversions_period_delta]
    colors: ["#a6b7ff", "#7869df", "#ea9895", "#d06180", "#6e98f9", "#8ac8ca", "#dc9d4f",
      "#4bb86a", "#a4a6a9", "#a6b7ff", "#afe8fd", "#ea989"]
    series_colors: {}
    y_axes: [{label: '', maxValue: !!null '', minValue: !!null '', orientation: bottom,
        showLabels: false, showValues: false, tickDensity: default, tickDensityCustom: !!null '',
        type: linear, unpinAxis: false, valueFormat: !!null '', series: !!null ''}]
    listen:
      Account: customer.account_descriptive_name
      Campaign: campaign.name
      Ad Group: ad_group.ad_group_name
      Period: fact.period
      Period Latest: fact.date_period_latest
    row: 38
    col: 0
    width: 12
    height: 7
  - title: Ad Group Conversions Change
    name: Ad Group Conversions Change
    model: marketing_analytics
    explore: period_fact
    type: looker_bar
    fields: [campaign.name, ad_group.ad_group_name, keyword.criteria, fact.total_cost,
      fact.total_conversions, last_fact.total_cost, last_fact.total_conversions, fact.total_conversions_period_delta]
    filters:
      fact.total_conversions_period_delta_abs: ">0"
    sorts: [fact.total_conversions_period_delta_abs desc]
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
      fact.total_conversions_period_delta]
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '10'
    y_axes: [{label: '', maxValue: !!null '', minValue: !!null '', orientation: bottom,
        showLabels: true, showValues: false, tickDensity: default, tickDensityCustom: !!null '',
        type: linear, unpinAxis: false, valueFormat: !!null '', series: !!null ''}]
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
    row: 31
    col: 12
    width: 12
    height: 14
  - title: Conversions by Network
    name: Conversions by Network
    model: marketing_analytics
    explore: ad_impressions_ad_group
    type: looker_bar
    fields: [fact.ad_network_type, fact.total_conversions]
    filters:
      fact.total_conversions: ">0"
    sorts: [fact.total_conversions desc, fact.ad_network_type]
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
        type: linear, unpinAxis: false, valueFormat: !!null '', series: [{id: fact.total_conversions,
            name: Ad Stats Cost, axisId: fact.total_conversions}]}]
    x_axis_label: Network
    colors: ["#8ac8ca", "#7869df", "#6e98f9", "#d06180", "#dc9d4f", "#4bb86a", "#a4a6a9",
      "#a6b7ff", "#afe8fd", "#ea9895", "#f1e582"]
    series_types: {}
    series_colors:
      fact.total_conversions: "#7869df"
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
    height: 6
  - title: Conversions by Device
    name: Conversions by Device
    model: marketing_analytics
    explore: ad_impressions_ad_group
    type: looker_bar
    fields: [fact.total_conversions, fact.device_type]
    filters:
      fact.total_conversions: ">0"
    sorts: [fact.total_conversions desc]
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
        type: linear, unpinAxis: false, valueFormat: !!null '', series: [{id: fact.total_conversions,
            name: Ad Stats Cost, axisId: fact.total_conversions}]}]
    x_axis_label: Device
    colors: ["#d06180", "#8ac8ca", "#7869df", "#6e98f9", "#d06180", "#dc9d4f", "#4bb86a",
      "#a4a6a9", "#a6b7ff", "#afe8fd", "#ea9895", "#f1e58"]
    series_types: {}
    series_colors:
      fact.total_conversions: "#7869df"
    label_color: []
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
    row: 11
    col: 8
    width: 8
    height: 6
  - title: Conversions by Bid Strategy
    name: Conversions by Bid Strategy
    model: marketing_analytics
    explore: ad_impressions_keyword
    type: looker_bar
    fields: [fact.total_conversions, keyword.bidding_strategy_type]
    filters:
      fact.total_conversions: ">0"
    sorts: [fact.total_conversions desc]
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
        type: linear, unpinAxis: false, valueFormat: !!null '', series: [{id: fact.total_conversions,
            name: Ad Stats Cost, axisId: fact.total_conversions}]}]
    x_axis_label: Bid Strategy
    colors: ["#dc9d4f", "#8ac8ca", "#7869df", "#6e98f9", "#d06180", "#4bb86a", "#a4a6a9",
      "#a6b7ff", "#afe8fd", "#ea9895", "#f1e582"]
    series_types: {}
    series_colors:
      fact.total_conversions: "#7869df"
    label_color: []
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
    row: 11
    col: 16
    width: 8
    height: 6
  - title: Conversions by Day of Week and Hour of Day
    name: Conversions by Day of Week and Hour of Day
    model: marketing_analytics
    explore: ad_impressions_ad_group_hour
    type: looker_grid
    fields: [fact.total_conversions, fact.hour_of_day, fact.date_day_of_week]
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
      fact.total_conversions: Conversions
    series_cell_visualizations:
      fact.total_conversions:
        is_active: false
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: !!null '',
        font_color: !!null '', palette: {name: Red to Yellow to Green, colors: ["#F36254",
            "#FCF758", "#4FBC89"]}, bold: false, italic: false, strikethrough: false,
        fields: [fact.total_conversions], color_application: {collection_id: legacy,
          palette_id: legacy_diverging2, options: {steps: 5, reverse: false}}}]
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
    row: 17
    col: 0
    width: 14
    height: 14
