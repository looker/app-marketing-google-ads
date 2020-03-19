- dashboard: google_adwords_spend
  title: Google Adwords - Spend
  extends: google_ads_base
  elements:
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
    barColors: [red, blue]
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
    y_axes: [{label: '', maxValue: !!null '', minValue: !!null '', orientation: left,
        showLabels: false, showValues: false, tickDensity: default, tickDensityCustom: !!null '',
        type: linear, unpinAxis: false, valueFormat: !!null '', series: [{id: fact.average_cost_per_conversion,
            name: Cost per Conversion, axisId: fact.average_cost_per_conversion}]}]
    discontinuous_nulls: false
    focus_on_hover: false
    reference_lines: []
    colors: ["#4bb86a", "#8fe4a7", "#6e98f9", "#8ac8ca", "#d06180", "#dc9d4f", "#7869df",
      "#a4a6a9", "#a6b7ff", "#afe8fd", "#ea9895", "#f1e582"]
    series_colors: {}
    hidden_fields: [fact.total_cost, last_fact.total_cost]
    column_group_spacing_ratio: 0
    column_spacing_ratio: 0
    listen:
      Account: customer.account_descriptive_name
      Campaign: campaign.name
      Ad Group: ad_group.ad_group_name
      Period: fact.period
      Period Latest: fact.date_period_latest
    row: 0
    col: 0
    width: 16
    height: 11
  - title: Budget Utilization
    name: Budget Utilization
    model: marketing_analytics
    explore: campaign_budget_date_fact
    type: looker_column
    fields: [fact.percent_used_budget_tier, fact.total_cost, fact.date_period_dynamic_grain]
    pivots: [fact.percent_used_budget_tier]
    sorts: [fact.percent_used_budget_tier, fact.date_period_dynamic_grain]
    limit: 500
    column_limit: 50
    label: Campaign Budget Utilization
    stacking: normal
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
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_null_points: true
    point_style: none
    interpolation: linear
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    enable_conditional_formatting: false
    conditional_formatting_ignored_fields: []
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    column_spacing_ratio:
    colors: ["#85D67C", "#B1DB7A", "#E2DF78", "#E7AF75", "#EB9474", "#EE7772"]
    series_colors: {}
    hide_legend: true
    y_axes: [{label: '', maxValue: !!null '', minValue: !!null '', orientation: left,
        showLabels: false, showValues: true, tickDensity: default, tickDensityCustom: 5,
        type: linear, unpinAxis: false, valueFormat: !!null '', series: [{id: "[0.00%,20.00%)",
            name: "[0.00%,20.00%)", axisId: fact.total_cost}, {id: "[20.00%,40.00%)",
            name: "[20.00%,40.00%)", axisId: fact.total_cost}, {id: "[40.00%,60.00%)",
            name: "[40.00%,60.00%)", axisId: fact.total_cost}, {id: "[60.00%,80.00%)",
            name: "[60.00%,80.00%)", axisId: fact.total_cost}, {id: "[80.00%,100.00%)",
            name: "[80.00%,100.00%)", axisId: fact.total_cost}, {id: "[100.00%,inf)",
            name: "[100.00%,inf)", axisId: fact.total_cost}]}]
    listen:
      Account: customer.account_descriptive_name
      Campaign: campaign.name
      Period: fact.period
      Period Latest: fact.date_period_latest
    row: 0
    col: 16
    width: 8
    height: 11
  - title: Spend by Network
    name: Spend by Network
    model: marketing_analytics
    explore: ad_impressions_ad_group
    type: looker_bar
    fields: [fact.ad_network_type, fact.total_cost]
    filters:
      fact.total_cost: ">0"
    sorts: [fact.total_cost desc, fact.ad_network_type]
    limit: 500
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', maxValue: !!null '', minValue: !!null '', orientation: bottom,
        showLabels: false, showValues: false, tickDensity: default, tickDensityCustom: 5,
        type: linear, unpinAxis: false, valueFormat: !!null '', series: [{id: fact.total_cost,
            name: Ad Stats Cost, axisId: fact.total_cost}]}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    x_axis_label: Network
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    colors: ["#8ac8ca", "#7869df", "#6e98f9", "#d06180", "#dc9d4f", "#4bb86a", "#a4a6a9",
      "#a6b7ff", "#afe8fd", "#ea9895", "#f1e582"]
    series_types: {}
    point_style: none
    series_colors:
      fact.total_cost: "#4bb86a"
    show_value_labels: true
    label_density: 25
    label_color: []
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
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
  - title: Spend by Device
    name: Spend by Device
    model: marketing_analytics
    explore: ad_impressions_ad_group
    type: looker_bar
    fields: [fact.total_cost, fact.device_type]
    filters:
      fact.total_cost: ">0"
    sorts: [fact.total_cost desc]
    limit: 500
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', maxValue: !!null '', minValue: !!null '', orientation: bottom,
        showLabels: false, showValues: false, tickDensity: default, tickDensityCustom: 5,
        type: linear, unpinAxis: false, valueFormat: !!null '', series: [{id: fact.total_cost,
            name: Ad Stats Cost, axisId: fact.total_cost}]}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    x_axis_label: Device
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    colors: ["#d06180", "#7869df", "#6e98f9", "#8ac8ca", "#dc9d4f", "#4bb86a", "#a4a6a9",
      "#a6b7ff", "#afe8fd", "#ea9895", "#f1e582"]
    series_types: {}
    point_style: none
    series_colors:
      fact.total_cost: "#4bb86a"
    show_value_labels: true
    label_density: 25
    label_color: []
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    listen:
      Campaign: campaign.name
      Ad Group: ad_group.ad_group_name
      Period: fact.period
      Period Latest: fact.date_period_latest
    row: 11
    col: 8
    width: 8
    height: 6
  - title: Spend by Bid Strategy
    name: Spend by Bid Strategy
    model: marketing_analytics
    explore: ad_impressions_keyword
    type: looker_bar
    fields: [fact.total_cost, keyword.bidding_strategy_type]
    filters:
      fact.total_cost: ">0"
    sorts: [fact.total_cost desc]
    limit: 500
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', maxValue: !!null '', minValue: !!null '', orientation: bottom,
        showLabels: false, showValues: false, tickDensity: default, tickDensityCustom: 5,
        type: linear, unpinAxis: false, valueFormat: !!null '', series: [{id: fact.total_cost,
            name: Ad Stats Cost, axisId: fact.total_cost}]}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    x_axis_label: Bid Strategy
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    colors: ["#dc9d4f", "#7869df", "#6e98f9", "#8ac8ca", "#d06180", "#4bb86a", "#a4a6a9",
      "#a6b7ff", "#afe8fd", "#ea9895", "#f1e582"]
    series_types: {}
    point_style: none
    series_colors:
      fact.total_cost: "#4bb86a"
    show_value_labels: true
    label_density: 25
    label_color: []
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
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
  - title: Spend by Day of Week
    name: Spend by Day of Week
    model: marketing_analytics
    explore: period_fact
    type: looker_bar
    fields: [fact.date_day_of_week, fact.total_cost]
    fill_fields: [fact.date_day_of_week]
    sorts: [fact.date_day_of_week]
    limit: 500
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', maxValue: !!null '', minValue: !!null '', orientation: bottom,
        showLabels: false, showValues: false, tickDensity: default, tickDensityCustom: 5,
        type: linear, unpinAxis: false, valueFormat: !!null '', series: [{id: fact.total_cost,
            name: Ad Stats Cost, axisId: fact.total_cost}]}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    x_axis_label: ''
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    colors: ["#8ac8ca", "#7869df", "#6e98f9", "#d06180", "#dc9d4f", "#4bb86a", "#a4a6a9",
      "#a6b7ff", "#afe8fd", "#ea9895", "#f1e582"]
    series_types: {}
    point_style: none
    series_colors:
      fact.total_cost: "#4bb86a"
    show_value_labels: true
    label_density: 25
    label_color: []
    x_axis_scale: auto
    y_axis_combined: true
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
            "#FCF758", "#4FBC89"]}, bold: false, italic: false, strikethrough: false,
        fields: !!null ''}]
    listen:
      Account: customer.account_descriptive_name
      Campaign: campaign.name
      Ad Group: ad_group.ad_group_name
      Period: fact.period
      Period Latest: fact.date_period_latest
    row: 17
    col: 14
    width: 10
    height: 6
  - title: Spend by Hour of Day
    name: Spend by Hour of Day
    model: marketing_analytics
    explore: ad_impressions_ad_group_hour
    type: looker_column
    fields: [fact.total_cost, fact.hour_of_day]
    sorts: [fact.hour_of_day]
    limit: 500
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', maxValue: !!null '', minValue: !!null '', orientation: bottom,
        showLabels: false, showValues: false, tickDensity: default, tickDensityCustom: 5,
        type: linear, unpinAxis: false, valueFormat: !!null '', series: [{id: fact.total_cost,
            name: Ad Stats Cost, axisId: fact.total_cost}]}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    x_axis_label: Hour Of Day
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    colors: ["#8ac8ca", "#7869df", "#6e98f9", "#d06180", "#dc9d4f", "#4bb86a", "#a4a6a9",
      "#a6b7ff", "#afe8fd", "#ea9895", "#f1e582"]
    series_types: {}
    point_style: none
    series_colors:
      fact.total_cost: "#4bb86a"
    show_value_labels: true
    label_density: 25
    label_color: []
    x_axis_scale: auto
    y_axis_combined: true
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
            "#FCF758", "#4FBC89"]}, bold: false, italic: false, strikethrough: false,
        fields: !!null ''}]
    listen:
      Account: customer.account_descriptive_name
      Campaign: campaign.name
      Ad Group: ad_group.ad_group_name
      Period: fact.period
      Period Latest: fact.date_period_latest
    row: 23
    col: 14
    width: 10
    height: 6
  - title: Ad Spend Change
    name: Ad Spend Change
    model: marketing_analytics
    explore: period_fact
    type: looker_bar
    fields: [campaign.name, ad_group.ad_group_name, ad.creative, last_fact.total_cost,
      fact.total_cost, fact.total_cost_period_delta]
    filters:
      fact.total_cost_period_delta_abs: ">0"
    sorts: [fact.total_cost_period_delta desc]
    limit: 50
    query_timezone: America/Los_Angeles
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', maxValue: !!null '', minValue: !!null '', orientation: bottom,
        showLabels: false, showValues: false, tickDensity: default, tickDensityCustom: 5,
        type: linear, unpinAxis: false, valueFormat: !!null '', series: [{id: fact.total_cost,
            name: Cost, axisId: fact.total_cost}]}]
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
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '7'
    hide_legend: false
    legend_position: center
    colors: ["#a6b7ff", "#7869df", "#ea9895", "#d06180", "#6e98f9", "#8ac8ca", "#dc9d4f",
      "#4bb86a", "#a4a6a9", "#a6b7ff", "#afe8fd", "#ea989"]
    series_types: {}
    point_style: none
    series_colors:
      fact.total_cost: "#4bb86a"
      last_fact.total_cost: "#90eb94"
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
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
    hidden_fields: [campaign.name, ad_group.ad_group_name, fact.total_cost_period_delta]
    listen:
      Account: customer.account_descriptive_name
      Campaign: campaign.name
      Ad Group: ad_group.ad_group_name
      Period: fact.period
      Period Latest: fact.date_period_latest
    row: 29
    col: 0
    width: 12
    height: 7
  - title: Landing Page Spend Change
    name: Landing Page Spend Change
    model: marketing_analytics
    explore: period_fact
    type: looker_bar
    fields: [campaign.name, ad_group.ad_group_name, ad.creative_final_urls_domain_path,
      last_fact.total_cost, fact.total_cost, fact.total_cost_period_delta]
    filters:
      fact.total_cost_period_delta_abs: ">0"
    sorts: [fact.total_cost_period_delta desc]
    limit: 50
    query_timezone: America/Los_Angeles
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', maxValue: !!null '', minValue: !!null '', orientation: bottom,
        showLabels: false, showValues: false, tickDensity: default, tickDensityCustom: 5,
        type: linear, unpinAxis: false, valueFormat: !!null '', series: [{id: fact.total_cost,
            name: Cost, axisId: fact.total_cost}]}]
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
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '7'
    legend_position: center
    colors: ["#a6b7ff", "#7869df", "#ea9895", "#d06180", "#6e98f9", "#8ac8ca", "#dc9d4f",
      "#4bb86a", "#a4a6a9", "#a6b7ff", "#afe8fd", "#ea989"]
    series_types: {}
    point_style: none
    series_colors:
      last_fact.total_cost: "#90eb94"
      fact.total_cost: "#4bb86a"
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
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
    hidden_fields: [ad_group.ad_group_name, campaign.name, fact.total_cost_period_delta]
    listen:
      Account: customer.account_descriptive_name
      Campaign: campaign.name
      Ad Group: ad_group.ad_group_name
      Period: fact.period
      Period Latest: fact.date_period_latest
    row: 36
    col: 0
    width: 12
    height: 7
  - title: Keyword Spend Change
    name: Keyword Spend Change
    model: marketing_analytics
    explore: period_fact
    type: looker_column
    fields: [campaign.name, ad_group.ad_group_name, keyword.criteria, last_fact.total_cost,
      fact.total_cost, fact.total_cost_period_delta]
    filters:
      fact.total_cost_period_delta_abs: ">0"
    sorts: [fact.total_cost_period_delta desc]
    limit: 50
    query_timezone: America/Los_Angeles
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', maxValue: !!null '', minValue: !!null '', orientation: bottom,
        showLabels: false, showValues: false, tickDensity: default, tickDensityCustom: 5,
        type: linear, unpinAxis: false, valueFormat: !!null '', series: [{id: fact.total_cost,
            name: Cost, axisId: fact.total_cost}]}]
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
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '7'
    legend_position: center
    colors: ["#a6b7ff", "#7869df", "#ea9895", "#d06180", "#6e98f9", "#8ac8ca", "#dc9d4f",
      "#4bb86a", "#a4a6a9", "#a6b7ff", "#afe8fd", "#ea989"]
    series_types: {}
    point_style: none
    series_colors:
      last_fact.total_cost: "#90eb94"
      fact.total_cost: "#4bb86a"
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
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
    hidden_fields: [ad_group.ad_group_name, campaign.name, fact.total_cost_period_delta]
    listen:
      Account: customer.account_descriptive_name
      Campaign: campaign.name
      Ad Group: ad_group.ad_group_name
      Period: fact.period
      Period Latest: fact.date_period_latest
    row: 29
    col: 12
    width: 12
    height: 14
  - title: Spend by Day of Week and Hour of Day
    name: Spend by Day of Week and Hour of Day
    model: marketing_analytics
    explore: ad_impressions_ad_group_hour
    type: looker_grid
    fields: [fact.total_cost, fact.hour_of_day, fact.date_day_of_week]
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
      fact.total_cost:
        is_active: false
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: !!null '',
        font_color: !!null '', palette: {name: Red to Yellow to Green, colors: ["#F36254",
            "#FCF758", "#4FBC89"]}, bold: false, italic: false, strikethrough: false,
        fields: [fact.total_cost], color_application: {collection_id: legacy, palette_id: legacy_diverging2,
          options: {steps: 5, reverse: true}}}]
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
        type: linear, unpinAxis: false, valueFormat: !!null '', series: [{id: fact.total_cost,
            name: Ad Stats Cost, axisId: fact.total_cost}]}]
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
    height: 12
