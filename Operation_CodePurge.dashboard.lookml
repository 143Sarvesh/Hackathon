---
- dashboard: operation_codepurge
  title: Operation CodePurge
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: san9y0dBVkZM9ZTEXmy1wp
  elements:
  - title: Used vs Un-Used Field
    name: Used vs Un-Used Field
    model: hackathon_looker
    explore: parsed_view_data
    type: looker_pie
    fields: [parsed_view_data.used_or_unused_count_drill, system_activity_history.used_or_unused_field]
    sorts: [parsed_view_data.used_or_unused_count_drill desc 0]
    limit: 500
    column_limit: 50
    total: true
    dynamic_fields:
    - measure: count_of_query_fields_used
      based_on: system_activity_history.query_fields_used
      expression: ''
      label: Count of Query Fields Used
      type: count_distinct
      _kind_hint: measure
      _type_hint: number
    - measure: count_of_field_name
      based_on: parsed_view_data.field_name
      expression: ''
      label: Count of Field Name
      type: count_distinct
      _kind_hint: measure
      _type_hint: number
    - measure: count_of_used_fields
      based_on: parsed_view_data.used_fields
      expression: ''
      label: Count of Used Fields
      type: count_distinct
      _kind_hint: measure
      _type_hint: number
    value_labels: legend
    label_type: labPer
    series_colors:
      Used Field: "#4276BE"
      Un-Used Field: "#FFD95F"
    defaults_version: 1
    hidden_pivots: {}
    note_state: collapsed
    note_display: above
    note_text: '<br><p style="text-align:center"><font color="#008080" size="4"><b>Used
      vs Un-Used Fields</b></font></p>

      '
    title_hidden: true
    listen:
      Model Name: parsed_view_data.model_name
      View Name: parsed_view_data.view_name
    row: 3
    col: 5
    width: 5
    height: 7
  - title: List of Used / Un-Used
    name: List of Used / Un-Used
    model: hackathon_looker
    explore: parsed_view_data
    type: marketplace_viz_report_table::report_table-marketplace
    fields: [parsed_view_data.model_name, parsed_view_data.view_name, parsed_view_data.field_name,
      parsed_view_data.field_type]
    filters:
      parsed_view_data.field_name: ''
    sorts: [parsed_view_data.view_name, parsed_view_data.field_name, parsed_view_data.field_type]
    limit: 500
    column_limit: 50
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: false
    theme: contemporary
    customTheme: ''
    layout: auto
    minWidthForIndexColumns: true
    headerFontSize: 12
    bodyFontSize: 12
    showTooltip: true
    showHighlight: true
    columnOrder: {}
    rowSubtotals: false
    colSubtotals: false
    spanRows: true
    spanCols: true
    calculateOthers: true
    sortColumnsBy: pivots
    useViewName: false
    useHeadings: false
    useShortName: false
    useUnit: false
    groupVarianceColumns: false
    genericLabelForSubtotals: false
    indexColumn: false
    transposeTable: false
    label|parsed_view_data.model_name: Model Name
    heading|parsed_view_data.model_name: ''
    hide|parsed_view_data.model_name: false
    label|parsed_view_data.view_name: View Name
    heading|parsed_view_data.view_name: ''
    hide|parsed_view_data.view_name: false
    label|parsed_view_data.field_name: Field Name
    heading|parsed_view_data.field_name: ''
    hide|parsed_view_data.field_name: false
    label|parsed_view_data.field_type: Field Type
    heading|parsed_view_data.field_type: ''
    hide|parsed_view_data.field_type: false
    subtotalDepth: '1'
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
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
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
    defaults_version: 0
    minimum_column_width: 75
    column_order: ["$$$_row_numbers_$$$", parsed_view_data.view_name, parsed_view_data.model_name,
      parsed_view_data.field_name, parsed_view_data.description, parsed_view_data.field_type,
      system_activity_history.query_fields_used]
    note_state: expanded
    note_display: above
    note_text: '<br><p style="text-align:center"><font color="#008080" size="5"><b>List
      of Used / Un-Used</b></font></p>

      '
    title_hidden: true
    listen:
      Model Name: parsed_view_data.model_name
      View Name: parsed_view_data.view_name
    row: 10
    col: 0
    width: 24
    height: 9
  - title: Un-Used Fields (Copy)
    name: Un-Used Fields (Copy)
    model: hackathon_looker
    explore: parsed_view_data
    type: single_value
    fields: [parsed_view_data.view_name, count_of_view_name]
    sorts: [parsed_view_data.view_name]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - measure: count_of_query_fields_used
      based_on: system_activity_history.query_fields_used
      expression: ''
      label: Count of Query Fields Used
      type: count_distinct
      _kind_hint: measure
      _type_hint: number
    - measure: count_of_field_name
      based_on: parsed_view_data.field_name
      expression: ''
      label: Count of Field Name
      type: count_distinct
      _kind_hint: measure
      _type_hint: number
    - measure: count_of_used_fields
      based_on: parsed_view_data.used_fields
      expression: ''
      label: Count of Used Fields
      type: count_distinct
      _kind_hint: measure
      _type_hint: number
    - category: measure
      expression: ''
      label: Count of View Name
      based_on: parsed_view_data.view_name
      _kind_hint: measure
      measure: count_of_view_name
      type: count_distinct
      _type_hint: number
    - args:
      - count_of_view_name
      calculation_type: running_total
      category: table_calculation
      based_on: count_of_view_name
      label: Running total of  Count of View Name
      source_field: count_of_view_name
      table_calculation: running_total_of_count_of_view_name
      value_format:
      value_format_name:
      _kind_hint: measure
      _type_hint: number
      is_disabled: true
    - category: table_calculation
      expression: sum(${count_of_view_name})
      label: No of View name
      value_format:
      value_format_name:
      _kind_hint: measure
      table_calculation: no_of_view_name
      _type_hint: number
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#008080"
    single_value_title: No of Views
    value_labels: legend
    label_type: labPer
    defaults_version: 1
    hidden_pivots: {}
    hidden_fields: [count_of_view_name]
    listen:
      Model Name: parsed_view_data.model_name
      View Name: parsed_view_data.view_name
    row: 0
    col: 5
    width: 5
    height: 3
  - title: No of Model
    name: No of Model
    model: hackathon_looker
    explore: parsed_view_data
    type: single_value
    fields: [parsed_view_data.model_name, count_of_model_name]
    sorts: [count_of_model_name desc 0]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - measure: count_of_query_fields_used
      based_on: system_activity_history.query_fields_used
      expression: ''
      label: Count of Query Fields Used
      type: count_distinct
      _kind_hint: measure
      _type_hint: number
    - measure: count_of_field_name
      based_on: parsed_view_data.field_name
      expression: ''
      label: Count of Field Name
      type: count_distinct
      _kind_hint: measure
      _type_hint: number
    - measure: count_of_used_fields
      based_on: parsed_view_data.used_fields
      expression: ''
      label: Count of Used Fields
      type: count_distinct
      _kind_hint: measure
      _type_hint: number
    - measure: count_of_view_name
      based_on: parsed_view_data.view_name
      expression: ''
      label: Count of View Name
      type: count_distinct
      _kind_hint: measure
      _type_hint: number
    - measure: count_of_model_name
      based_on: parsed_view_data.model_name
      expression: ''
      label: Count of Model Name
      type: count_distinct
      _kind_hint: measure
      _type_hint: number
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#008080"
    single_value_title: No of Model
    value_labels: legend
    label_type: labPer
    defaults_version: 1
    hidden_pivots: {}
    hidden_fields:
    listen:
      Model Name: parsed_view_data.model_name
      View Name: parsed_view_data.view_name
    row: 0
    col: 0
    width: 5
    height: 3
  - title: Count of Field Name / View
    name: Count of Field Name / View
    model: hackathon_looker
    explore: parsed_view_data
    type: looker_column
    fields: [parsed_view_data.view_name, system_activity_history.used_or_unused_field,
      parsed_view_data.used_or_unused_count_drill]
    pivots: [system_activity_history.used_or_unused_field]
    filters: {}
    sorts: [system_activity_history.used_or_unused_field, parsed_view_data.view_name,
      parsed_view_data.used_or_unused_count_drill desc 0]
    limit: 500
    column_limit: 50
    total: true
    dynamic_fields:
    - measure: count_of_query_fields_used
      based_on: system_activity_history.query_fields_used
      expression: ''
      label: Count of Query Fields Used
      type: count_distinct
      _kind_hint: measure
      _type_hint: number
    - measure: count_of_field_name
      based_on: parsed_view_data.field_name
      expression: ''
      label: Count of Field Name
      type: count_distinct
      _kind_hint: measure
      _type_hint: number
    - measure: count_of_used_fields
      based_on: parsed_view_data.used_fields
      expression: ''
      label: Count of Used Fields
      type: count_distinct
      _kind_hint: measure
      _type_hint: number
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
    show_value_labels: true
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
    series_colors:
      Used Field: "#4276BE"
      Un-Used Field: "#FFD95F"
      Un-Used Field - parsed_view_data.used_or_unused_count_drill: "#FFD95F"
      Used Field - parsed_view_data.used_or_unused_count_drill: "#4276BE"
    value_labels: legend
    label_type: labPer
    defaults_version: 1
    hidden_pivots: {}
    hidden_fields:
    note_state: expanded
    note_display: above
    note_text: '<br><p style="text-align:center"><font color="#008080" size="5.5"><b>Count
      of Fields in Views</b></font></p>

      '
    title_hidden: true
    listen:
      View Name: parsed_view_data.view_name
      Model Name: parsed_view_data.model_name
    row: 0
    col: 10
    width: 14
    height: 10
  - title: Used vs Un-Used View
    name: Used vs Un-Used View
    model: hackathon_looker
    explore: parsed_view_data
    type: looker_pie
    fields: [parsed_view_data.used_or_unused_view, parsed_view_data.used_or_unused_count_drill2]
    filters: {}
    sorts: [parsed_view_data.used_or_unused_count_drill2 desc 0]
    limit: 500
    column_limit: 50
    total: true
    dynamic_fields:
    - measure: count_of_query_fields_used
      based_on: system_activity_history.query_fields_used
      expression: ''
      label: Count of Query Fields Used
      type: count_distinct
      _kind_hint: measure
      _type_hint: number
    - measure: count_of_field_name
      based_on: parsed_view_data.field_name
      expression: ''
      label: Count of Field Name
      type: count_distinct
      _kind_hint: measure
      _type_hint: number
    - measure: count_of_used_fields
      based_on: parsed_view_data.used_fields
      expression: ''
      label: Count of Used Fields
      type: count_distinct
      _kind_hint: measure
      _type_hint: number
    value_labels: legend
    label_type: labPer
    series_colors:
      Used Field: "#4276BE"
      Un-Used Field: "#FFD95F"
      Used View: "#4276BE"
      Un-Used View: "#FFD95F"
    defaults_version: 1
    hidden_pivots: {}
    note_state: collapsed
    note_display: above
    note_text: '<br><p style="text-align:center"><font color="#008080" size="4"><b>Used
      vs Un-Used View</b></font></p>

      '
    title_hidden: true
    listen:
      View Name: parsed_view_data.view_name
      Model Name: parsed_view_data.model_name
    row: 3
    col: 0
    width: 5
    height: 7
  filters:
  - name: Model Name
    title: Model Name
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: hackathon_looker
    explore: parsed_view_data
    listens_to_filters: [View Name]
    field: parsed_view_data.model_name
  - name: View Name
    title: View Name
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: hackathon_looker
    explore: parsed_view_data
    listens_to_filters: [Model Name]
    field: parsed_view_data.view_name
