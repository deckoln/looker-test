- dashboard: dutestttttttttt
  title: du-testttttttttt
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: eOvn13lcMGGgBaFqVfOZuQ
  elements:
  - type: extension
    extension_id: infinitalk_dashboard_test_02::dashboard-summarization
    title: Dashboard Summarizationnnnnnnn
    name: Dashboard Summarizationnnnnnnn
    row: 9
    col: 0
    width: 11
    height: 13
  - title: ssssssssssss
    name: nameeeeeeeeeeeeeeeeeeeeee (コピー)
    model: infinitalk_dashboard_develop
    explore: agent_reports
    type: pj_query_insight_develop::query_insights
    fields: [agent_reports.day_date, agent_reports.css_operational_efficiency, agent_reports__group_metrics.total_incoming,
      agent_reports__group_metrics.outgoing_num]
    filters:
      agent_reports.day_date: after 1 year ago
    sorts: [agent_reports.day_date desc]
    limit: 5
    column_limit: 50
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: false
    textColor: [ddd]
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
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    defaults_version: 0
    row: 0
    col: 0
    width: 11
    height: 9
  filters:
  - name: Ast Acctid
    title: Ast Acctid
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: range_slider
      display: inline
    model: infinitalk_dashboard
    explore: call_logs
    listens_to_filters: []
    field: call_logs.ast_acctid
