---
- dashboard: 'du_testttttttttttttttttt'
  title: ダッシュボードテスト
  layout: newspaper
  preferred_viewer: dashboards-next
  description: LookMLによるダッシュボードのサンプル
  preferred_slug: tL8L691TchJ3iwpmEOWd7A
  elements:
  - title: グループ着信
    name: グループ着信
    model: infinitalk_dashboard
    explore: group_service_reports
    type: looker_line
    fields: [group_service_reports.group_metrics__enterqueue, group_service_reports.group_metrics__connect,
      group_service_reports.group_metrics__abandoned, group_service_reports.group_metrics__overflows,
      group_service_reports.group_metrics__timeouts, group_service_reports.day_date]
    fill_fields: [group_service_reports.day_date]
    sorts: [group_service_reports.day_date desc]
    limit: 500
    column_limit: 50
    analysis_config:
      forecasting:
      - confidence_interval: 0.8
        field_name: group_report_all2.group_metrics__enterqueue
        forecast_n: 4
        forecast_interval: week
      - confidence_interval: 0.8
        field_name: group_report_all2.group_metrics__connect
        forecast_n: 4
        forecast_interval: week
      - confidence_interval: 0.8
        field_name: group_report_all2.group_metrics__abandoned
        forecast_n: 4
        forecast_interval: week
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
    label_density: 25
    x_axis_scale: time
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    x_axis_zoom: true
    y_axis_zoom: true
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '50'
    font_size: '9'
    reference_lines: [{reference_type: line, line_value: mean, range_start: max, range_end: min,
        margin_top: deviation, margin_value: mean, margin_bottom: deviation, label_position: right,
        color: "#000000"}]
    trend_lines: []
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_cell_visualizations:
      group_report_all2.group_metrics__talk_time:
        is_active: false
    hidden_pivots: {}
    defaults_version: 1
    column_order: [group_service_reports.day_date, group_report_all2.group_disp_name,
      group_service_reports.group_metrics__enterqueue, group_service_reports.group_metrics__connect,
      group_service_reports.group_metrics__abandoned, group_report_all2.group_metrics__nonresponses,
      group_service_reports.group_metrics__overflows, group_service_reports.group_metrics__timeouts,
      group_report_all2.group_metrics__talk_time, group_report_all2.group_metrics__max_call_wait,
      group_report_all2.service_metrics__waiting_time_max, group_report_all2.service_metrics__abandonment_time_max,
      group_report_all2.group_metrics__max_line, group_report_all2__agents.disp_status0_time,
      group_report_all2__agents.hold_count, group_report_all2__agents.hold_time, group_report_all2__agents.disp_status1_time,
      group_report_all2__agents.disp_status2_time, group_report_all2__agents.disp_status3_time,
      group_report_all2__agents.disp_status4_time, group_report_all2__agents.disp_status5_time,
      group_report_all2__agents.disp_status6_time, group_report_all2__agents.disp_status7_time]
    y_axes: []
    listen:
      filter_acd_group_name: group_service_reports.group_disp_name
      filter_date Date: group_service_reports.day_date
    row: 0
    col: 0
    width: 9
    height: 6
  - title: 応答待ち時間分布
    name: 応答待ち時間分布
    model: infinitalk_dashboard
    explore: group_service_reports
    type: looker_pie
    fields: [group_service_reports__waiting_distribution.bin, group_service_reports__waiting_distribution.count]
    sorts: [group_service_reports__waiting_distribution.bin]
    limit: 500
    column_limit: 50
    value_labels: labels
    label_type: per
    inner_radius: 50
    start_angle:
    end_angle:
    color_application: undefined
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
    size_by_field: group_report_all2__waiting_distribution.count
    plot_size_by_field: false
    x_axis_zoom: true
    y_axis_zoom: true
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: circle
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    cluster_points: false
    quadrants_enabled: false
    quadrant_properties:
      '0':
        color: ''
        label: Quadrant 1
      '1':
        color: ''
        label: Quadrant 2
      '2':
        color: ''
        label: Quadrant 3
      '3':
        color: ''
        label: Quadrant 4
    custom_quadrant_point_x: 5
    custom_quadrant_point_y: 5
    custom_x_column: ''
    custom_y_column: ''
    custom_value_label_column: ''
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    up_color: false
    down_color: false
    total_color: false
    leftAxisLabelVisible: false
    leftAxisLabel: ''
    rightAxisLabelVisible: false
    rightAxisLabel: ''
    smoothedBars: false
    orientation: automatic
    labelPosition: left
    percentType: total
    percentPosition: inline
    valuePosition: right
    labelColorEnabled: false
    labelColor: "#FFF"
    y_axes: []
    listen:
      filter_acd_group_name: group_service_reports.group_disp_name
      filter_date Date: group_service_reports.day_date
    row: 12
    col: 0
    width: 8
    height: 6
  - title: 放棄時間分布
    name: 放棄時間分布
    model: infinitalk_dashboard
    explore: group_service_reports
    type: looker_pie
    fields: [group_service_reports__abandonment_distribution.bin, group_service_reports__abandonment_distribution.count]
    sorts: [group_service_reports__abandonment_distribution.count desc 0]
    limit: 500
    column_limit: 50
    value_labels: legend
    label_type: labPer
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
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    show_null_points: true
    hidden_pivots: {}
    y_axes: []
    listen:
      filter_acd_group_name: group_service_reports.group_disp_name
      filter_date Date: group_service_reports.day_date
    row: 12
    col: 8
    width: 8
    height: 6
  - title: グループ着信指標
    name: グループ着信指標
    model: infinitalk_dashboard
    explore: group_service_reports
    type: looker_line
    fields: [group_service_reports.day_date, group_service_reports.group_metrics__enterqueue,
      group_service_reports.group_metrics__connect, group_service_reports.group_metrics__abandoned,
      group_service_reports.callResponseRate, group_service_reports.abandonmentRate]
    fill_fields: [group_service_reports.day_date]
    sorts: [group_service_reports.day_date desc]
    limit: 500
    column_limit: 50
    analysis_config:
      forecasting:
      - confidence_interval: 0.8
        field_name: group_report_all2.abandonmentRate
        forecast_n: 20
        forecast_interval: day
      - confidence_interval: 0.8
        field_name: group_report_all2.callResponseRate
        forecast_n: 20
        forecast_interval: day
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
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    y_axes: [{label: '', orientation: left, series: [{axisId: group_report_all2.group_metrics__incomings,
            id: group_report_all2.group_metrics__incomings, name: 着信数}, {axisId: group_service_reports.group_metrics__enterqueue,
            id: group_service_reports.group_metrics__enterqueue, name: 業務グループ着信数},
          {axisId: group_service_reports.group_metrics__connect, id: group_service_reports.group_metrics__connect,
            name: 接続数}, {axisId: group_service_reports.group_metrics__abandoned, id: group_service_reports.group_metrics__abandoned,
            name: 放棄呼}], showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}, {label: !!null '', orientation: right,
        series: [{axisId: group_service_reports.callResponseRate, id: group_service_reports.callResponseRate,
            name: 応答率}, {axisId: group_service_reports.abandonmentRate, id: group_service_reports.abandonmentRate,
            name: 放棄率}], showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    hidden_series: []
    defaults_version: 1
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_pivots: {}
    listen:
      filter_acd_group_name: group_service_reports.group_disp_name
      filter_date Date: group_service_reports.day_date
    row: 12
    col: 16
    width: 8
    height: 6
  - title: 時間帯別の業務グループ指標
    name: 時間帯別の業務グループ指標
    model: infinitalk_dashboard
    explore: group_service_reports
    type: looker_column
    fields: [group_service_reports.hour_of_day, group_service_reports.group_metrics__connect,
      group_service_reports.group_metrics__abandoned, group_service_reports.group_metrics__overflows,
      group_service_reports.group_metrics__timeouts, group_service_reports.abandonmentRate]
    sorts: [group_service_reports.hour_of_day]
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
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: group_service_reports.group_metrics__connect,
            id: group_service_reports.group_metrics__connect, name: 応答数}, {axisId: group_service_reports.group_metrics__abandoned,
            id: group_service_reports.group_metrics__abandoned, name: 放棄呼}, {axisId: group_service_reports.group_metrics__overflows,
            id: group_service_reports.group_metrics__overflows, name: オーバーフロー数}, {
            axisId: group_service_reports.group_metrics__timeouts, id: group_service_reports.group_metrics__timeouts,
            name: タイムアウト数}], showLabels: true, showValues: true, maxValue: !!null '',
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear},
      {label: !!null '', orientation: right, series: [{axisId: group_service_reports.abandonmentRate,
            id: group_service_reports.abandonmentRate, name: 放棄率}], showLabels: true,
        showValues: true, maxValue: 1, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    series_types:
      group_service_reports.abandonmentRate: line
    advanced_vis_config: |-
      {
        chart: {},
        series: [{
          name: '応答数'
        }, {
          name: '放棄呼'
        }, {
          name: 'オーバーフロー数'
        }, {
          name: 'タイムアウト数'
        }, {
          name: '放棄率'
        }]
      }
    hidden_pivots: {}
    defaults_version: 1
    listen:
      filter_acd_group_name: group_service_reports.group_disp_name
      filter_date Date: group_service_reports.day_date
    row: 18
    col: 0
    width: 8
    height: 6
  - title: コールセンター稼働率
    name: コールセンター稼働率
    model: infinitalk_dashboard
    explore: agent_reports
    type: looker_line
    fields: [agent_reports.active_agents2, agent_reports.css_operational_efficiency,
      agent_reports__group_metrics.incoming_occupancy_rate, agent_reports.day_week]
    fill_fields: [agent_reports.day_week]
    sorts: [agent_reports.day_week desc]
    limit: 500
    column_limit: 50
    analysis_config:
      forecasting:
      - field_name: agent_15_reports2.css_operational_efficiency
        forecast_n: 12
        forecast_interval: week
      - field_name: agent_15_reports2.incoming_occupancy_rate
        forecast_n: 12
        forecast_interval: week
      - field_name: agent_15_reports2.active_agents2
        forecast_n: 12
        forecast_interval: week
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
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    y_axes: [{label: !!null '', orientation: left, series: [{axisId: agent_reports.active_agents2,
            id: agent_reports.active_agents2, name: 稼働人数2}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear},
      {label: !!null '', orientation: right, series: [{axisId: agent_reports.css_operational_efficiency,
            id: agent_reports.css_operational_efficiency, name: CSS稼動率(COPC)}, {axisId: agent_reports__group_metrics.incoming_occupancy_rate,
            id: agent_reports__group_metrics.incoming_occupancy_rate, name: 着信業務占有率(COPC)}],
        showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    font_size: '12'
    series_types:
      agent_reports.active_agents2: column
    defaults_version: 1
    hidden_pivots: {}
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    value_labels: legend
    label_type: labPer
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    ordering: none
    show_null_labels: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    leftAxisLabelVisible: false
    leftAxisLabel: ''
    rightAxisLabelVisible: false
    rightAxisLabel: ''
    smoothedBars: false
    orientation: automatic
    labelPosition: left
    percentType: total
    percentPosition: inline
    valuePosition: right
    labelColorEnabled: false
    labelColor: "#FFF"
    listen:
      filter_date Date: agent_reports.day_date
      filter_acd_group_name: agent_reports__group_metrics.group_disp_name
    row: 18
    col: 8
    width: 8
    height: 6
  - title: AHT推移
    name: AHT推移
    model: infinitalk_dashboard
    explore: agent_reports
    type: looker_line
    fields: [agent_reports__group_metrics.aht_incoming, agent_reports__group_metrics.aht_outgoing,
      agent_reports__group_metrics.aht_total, agent_reports.day_week]
    fill_fields: [agent_reports.day_week]
    sorts: [agent_reports.day_week desc]
    limit: 500
    column_limit: 50
    analysis_config:
      forecasting:
      - confidence_interval: 0.8
        field_name: agent_15_reports2__group_met.aht_total
        forecast_n: 12
        forecast_interval: week
      - confidence_interval: 0.8
        field_name: agent_15_reports2__group_met.aht_outgoing
        forecast_n: 12
        forecast_interval: week
      - confidence_interval: 0.8
        field_name: agent_15_reports2__group_met.aht_incoming
        forecast_n: 12
        forecast_interval: week
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
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    color_application: undefined
    y_axes: [{label: '', orientation: left, series: [{axisId: agent_reports__group_metrics.aht_incoming,
            id: エヌティーエイチ - agent_15_reports2__group_met.aht_incoming, name: 'エヌティーエイチ
              - Agent 15 Reports2: Group Met AHT着信業務 (COPC)'}, {axisId: agent_reports__group_metrics.aht_incoming,
            id: がくぶん特選館 - agent_15_reports2__group_met.aht_incoming, name: 'がくぶん特選館
              - Agent 15 Reports2: Group Met AHT着信業務 (COPC)'}, {axisId: agent_reports__group_metrics.aht_outgoing,
            id: エヌティーエイチ - agent_15_reports2__group_met.aht_outgoing, name: 'エヌティーエイチ
              - Agent 15 Reports2: Group Met AHT発信業務 (COPC)'}, {axisId: agent_reports__group_metrics.aht_outgoing,
            id: がくぶん特選館 - agent_15_reports2__group_met.aht_outgoing, name: 'がくぶん特選館
              - Agent 15 Reports2: Group Met AHT発信業務 (COPC)'}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, type: linear}]
    size_by_field: agent_15_reports2__group_met.total_incoming
    x_axis_zoom: true
    y_axis_zoom: false
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '1'
    hide_legend: false
    font_size: '12'
    trellis_rows: 2
    swap_axes: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    show_row_numbers: true
    transpose: false
    truncate_text: true
    truncate_header: false
    size_to_fit: true
    minimum_column_width: 75
    series_cell_visualizations:
      agent_15_reports2__group_met.aht_incoming:
        is_active: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    ordering: none
    show_null_labels: false
    show_dropoff: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    cluster_points: false
    quadrants_enabled: false
    quadrant_properties:
      '0':
        color: ''
        label: Quadrant 1
      '1':
        color: ''
        label: Quadrant 2
      '2':
        color: ''
        label: Quadrant 3
      '3':
        color: ''
        label: Quadrant 4
    custom_quadrant_point_x: 5
    custom_quadrant_point_y: 5
    custom_x_column: ''
    custom_y_column: ''
    custom_value_label_column: ''
    defaults_version: 1
    value_labels: legend
    label_type: labPer
    hidden_pivots: {}
    hide_totals: false
    hide_row_totals: false
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    truncate_column_names: false
    groupBars: true
    labelSize: 10pt
    showLegend: true
    listen:
      filter_date Date: agent_reports.day_date
      filter_acd_group_name: agent_reports__group_metrics.group_disp_name
    row: 18
    col: 16
    width: 8
    height: 6
  - title: 外線着信推移
    name: 外線着信推移
    model: infinitalk_dashboard
    explore: agent_reports
    type: looker_line
    fields: [agent_reports__group_metrics.total_incoming, agent_reports__group_metrics.incoming_occupancy_rate,
      agent_reports.active_agents2, agent_reports.day_week]
    fill_fields: [agent_reports.day_week]
    sorts: [agent_reports.day_week desc]
    limit: 500
    column_limit: 50
    analysis_config:
      forecasting:
      - confidence_interval: 0.8
        field_name: agent_15_reports2__group_met.total_incoming
        forecast_n: 12
        forecast_interval: week
      - confidence_interval: 0.8
        field_name: agent_15_reports2.incoming_occupancy_rate
        forecast_n: 12
        forecast_interval: week
      - confidence_interval: 0.8
        field_name: agent_15_reports2.active_agents2
        forecast_n: 12
        forecast_interval: week
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
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: monotone
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: 5d189dfc-4f46-46f3-822b-bfb0b61777b1
      options:
        steps: 5
        reverse: false
    y_axes: [{label: '', orientation: left, series: [{axisId: agent_reports__group_metrics.total_incoming,
            id: agent_reports__group_metrics.total_incoming, name: 外線着信数a}, {axisId: agent_15_reports2__group_met.outgoing_num,
            id: agent_15_reports2__group_met.outgoing_num, name: 外線発信数a}, {axisId: agent_15_reports2__group_met.exten_count,
            id: agent_15_reports2__group_met.exten_count, name: 業務グループ以外着信数}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, type: linear}, {
        label: '', orientation: left, series: [{axisId: agent_reports.active_agents2,
            id: agent_reports.active_agents2, name: 稼働人数2}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: default, type: linear}, {label: '', orientation: right,
        series: [{axisId: agent_reports__group_metrics.incoming_occupancy_rate, id: agent_reports__group_metrics.incoming_occupancy_rate,
            name: 着信業務占有率(COPC)}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, type: linear}]
    size_by_field: agent_15_reports2__group_met.total_incoming
    x_axis_zoom: true
    y_axis_zoom: true
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '1'
    hide_legend: false
    font_size: '12'
    trellis_rows: 2
    series_types:
      agent_reports.active_agents2: column
    series_colors: {}
    swap_axes: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    show_row_numbers: true
    transpose: false
    truncate_text: true
    truncate_header: false
    size_to_fit: true
    minimum_column_width: 75
    series_cell_visualizations:
      agent_15_reports2__group_met.aht_incoming:
        is_active: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    ordering: none
    show_null_labels: false
    show_dropoff: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    cluster_points: false
    quadrants_enabled: false
    quadrant_properties:
      '0':
        color: ''
        label: Quadrant 1
      '1':
        color: ''
        label: Quadrant 2
      '2':
        color: ''
        label: Quadrant 3
      '3':
        color: ''
        label: Quadrant 4
    custom_quadrant_point_x: 5
    custom_quadrant_point_y: 5
    custom_x_column: ''
    custom_y_column: ''
    custom_value_label_column: ''
    defaults_version: 1
    value_labels: legend
    label_type: labPer
    hidden_pivots: {}
    hide_totals: false
    hide_row_totals: false
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    truncate_column_names: false
    groupBars: true
    labelSize: 10pt
    showLegend: true
    listen:
      filter_date Date: agent_reports.day_date
      filter_acd_group_name: agent_reports__group_metrics.group_disp_name
    row: 24
    col: 0
    width: 8
    height: 6
  - title: 応答待ち時間分布2
    name: 応答待ち時間分布2
    model: infinitalk_dashboard
    explore: group_service_reports
    type: looker_bar
    fields: [group_service_reports__waiting_distribution.bin, group_service_reports__waiting_distribution.count,
      group_service_reports.group_disp_name]
    pivots: [group_service_reports__waiting_distribution.bin]
    sorts: [group_service_reports__waiting_distribution.bin, group_service_reports__waiting_distribution.count
        desc 0]
    limit: 100
    column_limit: 50
    row_total: right
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
    stacking: percent
    limit_displayed_rows: false
    legend_position: center
    point_style: circle
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application: undefined
    size_by_field: group_report_all2__waiting_distribution.count
    x_axis_zoom: true
    y_axis_zoom: true
    hide_legend: true
    font_size: '12'
    swap_axes: false
    show_null_points: true
    cluster_points: false
    quadrants_enabled: false
    quadrant_properties:
      '0':
        color: ''
        label: Quadrant 1
      '1':
        color: ''
        label: Quadrant 2
      '2':
        color: ''
        label: Quadrant 3
      '3':
        color: ''
        label: Quadrant 4
    custom_quadrant_point_x: 5
    custom_quadrant_point_y: 5
    custom_x_column: ''
    custom_y_column: ''
    custom_value_label_column: ''
    show_dropoff: false
    charts_across: 3
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_pivots:
      "$$$_row_total_$$$":
        is_entire_pivot_hidden: true
    interpolation: linear
    defaults_version: 1
    leftAxisLabelVisible: false
    leftAxisLabel: ''
    rightAxisLabelVisible: false
    rightAxisLabel: ''
    smoothedBars: false
    orientation: automatic
    labelPosition: left
    percentType: total
    percentPosition: inline
    valuePosition: right
    labelColorEnabled: false
    labelColor: "#FFF"
    up_color: false
    down_color: false
    total_color: false
    groupBars: true
    labelSize: 10pt
    showLegend: true
    map: usa
    map_projection: ''
    y_axes: []
    listen:
      filter_acd_group_name: group_service_reports.group_disp_name
      filter_date Date: group_service_reports.day_date
    row: 24
    col: 8
    width: 8
    height: 6
  - title: 放棄時間分布2
    name: 放棄時間分布2
    model: infinitalk_dashboard
    explore: group_service_reports
    type: looker_bar
    fields: [group_service_reports.group_disp_name, group_service_reports__abandonment_distribution.bin,
      group_service_reports__abandonment_distribution.count]
    pivots: [group_service_reports__abandonment_distribution.bin]
    sorts: [group_service_reports__abandonment_distribution.bin, group_service_reports__abandonment_distribution.count
        desc 10]
    limit: 100
    column_limit: 50
    row_total: right
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
    stacking: percent
    limit_displayed_rows: false
    legend_position: center
    point_style: circle
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application: undefined
    size_by_field: group_report_all2__waiting_distribution.count
    x_axis_zoom: true
    y_axis_zoom: true
    hide_legend: true
    font_size: '12'
    swap_axes: false
    show_null_points: true
    cluster_points: false
    quadrants_enabled: false
    quadrant_properties:
      '0':
        color: ''
        label: Quadrant 1
      '1':
        color: ''
        label: Quadrant 2
      '2':
        color: ''
        label: Quadrant 3
      '3':
        color: ''
        label: Quadrant 4
    custom_quadrant_point_x: 5
    custom_quadrant_point_y: 5
    custom_x_column: ''
    custom_y_column: ''
    custom_value_label_column: ''
    show_dropoff: false
    charts_across: 3
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_pivots:
      undefined:
        is_entire_pivot_hidden: true
      "$$$_row_total_$$$":
        is_entire_pivot_hidden: true
    interpolation: linear
    defaults_version: 1
    leftAxisLabelVisible: false
    leftAxisLabel: ''
    rightAxisLabelVisible: false
    rightAxisLabel: ''
    smoothedBars: false
    orientation: automatic
    labelPosition: left
    percentType: total
    percentPosition: inline
    valuePosition: right
    labelColorEnabled: false
    labelColor: "#FFF"
    up_color: false
    down_color: false
    total_color: false
    groupBars: true
    labelSize: 10pt
    showLegend: true
    map: usa
    map_projection: ''
    y_axes: []
    listen:
      filter_acd_group_name: group_service_reports.group_disp_name
      filter_date Date: group_service_reports.day_date
    row: 24
    col: 16
    width: 8
    height: 6
  - title: 時間帯別発着信数
    name: 時間帯別発着信数
    model: infinitalk_dashboard
    explore: agent_reports
    type: looker_bar
    fields: [agent_reports.hour_of_day, agent_reports__group_metrics.total_incoming,
      agent_reports__group_metrics.outgoing_num, agent_reports__group_metrics.exten_count]
    sorts: [agent_reports.hour_of_day]
    limit: 500
    column_limit: 50
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
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    x_axis_zoom: true
    y_axis_zoom: true
    defaults_version: 1
    y_axes: []
    listen:
      filter_date Date: agent_reports.day_date
      filter_acd_group_name: agent_reports__group_metrics.group_disp_name
    row: 0
    col: 9
    width: 7
    height: 6
  - title: エージェント別通話数
    name: エージェント別通話数
    model: infinitalk_dashboard
    explore: agent_reports
    type: looker_grid
    fields: [agent_reports.agent_name, agent_reports__group_metrics.total_incoming,
      agent_reports__group_metrics.outgoing_num, agent_reports__group_metrics.exten_count]
    sorts: [agent_reports__group_metrics.total_incoming desc 0]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
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
    truncate_header: false
    minimum_column_width: 75
    series_cell_visualizations:
      agent_15_reports2__group_met.total_incoming:
        is_active: true
      agent_15_reports2__group_met.outgoing_num:
        is_active: true
      agent_15_reports2__group_met.exten_count:
        is_active: true
      agent_15_reports2__group_metrics.total_incoming:
        is_active: true
      agent_15_reports2__group_metrics.outgoing_num:
        is_active: true
      agent_15_reports2__group_metrics.exten_count:
        is_active: true
    conditional_formatting: []
    x_axis_gridlines: false
    y_axis_gridlines: true
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
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    y_axes: []
    listen:
      filter_date Date: agent_reports.day_date
      filter_acd_group_name: agent_reports__group_metrics.group_disp_name
    row: 0
    col: 16
    width: 8
    height: 6
  - title: 業務グループ別着信数
    name: 業務グループ別着信数
    model: infinitalk_dashboard
    explore: agent_reports
    type: looker_grid
    fields: [agent_reports__group_metrics.group_disp_name, agent_reports__group_metrics.total_incoming,
      agent_reports__group_metrics.outgoing_num, agent_reports__group_metrics.exten_count]
    sorts: [agent_reports__group_metrics.total_incoming desc 0]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_cell_visualizations:
      agent_15_reports2__group_met.total_incoming:
        is_active: true
      agent_15_reports2__group_met.outgoing_num:
        is_active: true
      agent_15_reports2__group_met.exten_count:
        is_active: true
      agent_15_reports2__group_metrics.total_incoming:
        is_active: true
      agent_15_reports2__group_metrics.outgoing_num:
        is_active: true
      agent_15_reports2__group_metrics.exten_count:
        is_active: true
    x_axis_gridlines: false
    y_axis_gridlines: true
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
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    y_axes: []
    listen:
      filter_date Date: agent_reports.day_date
      filter_acd_group_name: agent_reports__group_metrics.group_disp_name
    row: 6
    col: 0
    width: 8
    height: 6
  - title: 外線着信比率
    name: 外線着信比率
    model: infinitalk_dashboard
    explore: agent_reports
    type: looker_pie
    fields: [agent_reports__group_metrics.group_disp_name, agent_reports__group_metrics.total_incoming]
    sorts: [agent_reports__group_metrics.total_incoming desc 0]
    limit: 50
    column_limit: 50
    value_labels: legend
    label_type: labPer
    inner_radius: 60
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
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    y_axes: []
    listen:
      filter_date Date: agent_reports.day_date
      filter_acd_group_name: agent_reports__group_metrics.group_disp_name
    row: 6
    col: 8
    width: 8
    height: 6
  - title: 業務グループ別着信数TOP10
    name: 業務グループ別着信数TOP10
    model: infinitalk_dashboard
    explore: agent_reports
    type: looker_column
    fields: [agent_reports__group_metrics.total_incoming, agent_reports.agent_name,
      agent_reports__group_metrics.group_disp_name]
    pivots: [agent_reports__group_metrics.group_disp_name]
    sorts: [agent_reports__group_metrics.group_disp_name, agent_reports__group_metrics.total_incoming
        desc 115]
    limit: 500
    column_limit: 500
    row_total: right
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
    stacking: normal
    limit_displayed_rows: true
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: desc
    show_null_labels: false
    show_totals_labels: true
    show_silhouette: false
    totals_color: "#808080"
    x_axis_zoom: true
    y_axis_zoom: true
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '10'
    column_group_spacing_ratio:
    value_labels: legend
    label_type: labPer
    inner_radius: 60
    defaults_version: 1
    hidden_pivots:
      "$$$_row_total_$$$":
        is_entire_pivot_hidden: true
    y_axes: []
    listen:
      filter_date Date: agent_reports.day_date
      filter_acd_group_name: agent_reports__group_metrics.group_disp_name
    row: 6
    col: 16
    width: 8
    height: 6
  filters:
  - name: filter_date Date
    title: filter_date Date
    type: field_filter
    default_value: after 2 years ago
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: infinitalk_dashboard
    explore: group_service_reports
    listens_to_filters: []
    field: group_service_reports.day_date
  - name: filter_acd_group_name
    title: 業務グループ名
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: infinitalk_dashboard
    explore: group_service_reports
    listens_to_filters: []
    field: group_service_reports.group_disp_name
