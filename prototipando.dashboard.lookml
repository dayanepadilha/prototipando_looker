---
- dashboard: prototipando_ideias__looker__gemini
  title: PROTOTIPANDO IDEIAS - LOOKER + GEMINI
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: jf4MbcIszroLAfcp3eZtjA
  elements:
  - title: prototipando
    name: prototipando
    model: demo_prototipando
    explore: looker_list
    type: single_value
    fields: [looker_list.count]
    sorts: [looker_list.count desc 0]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Total de Inscritos
    hidden_pivots: {}
    defaults_version: 1
    listen:
      Região: looker_list.region_code
    row: 1
    col: 0
    width: 6
    height: 4
  - title: Confirmados
    name: Confirmados
    model: demo_prototipando
    explore: looker_list
    type: single_value
    fields: [looker_list.count]
    filters:
      looker_list.rsvp_status: CONFIRMED
    sorts: [looker_list.count desc 0]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Total de Confirmados
    hidden_pivots: {}
    defaults_version: 1
    listen:
      Região: looker_list.region_code
    row: 1
    col: 6
    width: 6
    height: 4
  - title: New Tile
    name: New Tile
    model: demo_prototipando
    explore: looker_list
    type: single_value
    fields: [looker_list.count]
    filters:
      looker_list.vaipresencial: Sim
      looker_list.rsvp_status: CONFIRMED
    sorts: [looker_list.count desc 0]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Total de Confirmados - Presencial
    hidden_pivots: {}
    defaults_version: 1
    listen:
      Região: looker_list.region_code
    row: 1
    col: 12
    width: 6
    height: 4
  - title: Online
    name: Online
    model: demo_prototipando
    explore: looker_list
    type: single_value
    fields: [looker_list.count]
    filters:
      looker_list.vaipresencial: Não
      looker_list.rsvp_status: CONFIRMED
    sorts: [looker_list.count desc 0]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Total de Confirmados - Online
    hidden_pivots: {}
    defaults_version: 1
    listen:
      Região: looker_list.region_code
    row: 1
    col: 18
    width: 6
    height: 4
  - title: Total de Inscritos por Dia
    name: Total de Inscritos por Dia
    model: demo_prototipando
    explore: looker_list
    type: looker_line
    fields: [looker_list.count, looker_list.vaipresencial, looker_list.registration_date]
    pivots: [looker_list.vaipresencial]
    fill_fields: [looker_list.registration_date]
    filters:
      looker_list.vaipresencial: "-Sem Resposta"
    sorts: [looker_list.vaipresencial, looker_list.count desc 0]
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
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: 5d189dfc-4f46-46f3-822b-bfb0b61777b1
      options:
        steps: 5
    y_axes: [{label: '', orientation: left, series: [{axisId: Não - looker_list.count,
            id: Não - looker_list.count, name: Não}, {axisId: Sim - looker_list.count,
            id: Sim - looker_list.count, name: Sim}], showLabels: false, showValues: false,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    hide_legend: false
    series_colors: {}
    reference_lines: []
    ordering: desc
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    custom_color_enabled: true
    show_single_value_title: true
    single_value_title: Total de Confirmados - Online
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_pivots: {}
    defaults_version: 1
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
    listen:
      Região: looker_list.region_code
      Status da Inscrição: looker_list.rsvp_status
    row: 6
    col: 0
    width: 24
    height: 8
  - title: Nomes mais Inscritos
    name: Nomes mais Inscritos
    model: demo_prototipando
    explore: looker_list
    type: looker_wordcloud
    fields: [looker_list.count, looker_list.first_name]
    filters:
      looker_list.count: ">7"
    sorts: [looker_list.count desc]
    limit: 500
    column_limit: 50
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: 5d189dfc-4f46-46f3-822b-bfb0b61777b1
      options:
        steps: 5
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
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    y_axes: [{label: '', orientation: left, series: [{axisId: Não - looker_list.count,
            id: Não - looker_list.count, name: Não}, {axisId: Sim - looker_list.count,
            id: Sim - looker_list.count, name: Sim}], showLabels: false, showValues: false,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    hide_legend: false
    series_colors: {}
    reference_lines: []
    ordering: desc
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    custom_color_enabled: true
    show_single_value_title: true
    single_value_title: Total de Confirmados - Online
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_pivots: {}
    defaults_version: 1
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
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    font_size: 12
    up_color: false
    down_color: false
    total_color: false
    groupBars: true
    labelSize: 10pt
    showLegend: true
    truncate_column_names: false
    listen:
      Região: looker_list.region_code
      Status da Inscrição: looker_list.rsvp_status
    row: 15
    col: 12
    width: 12
    height: 8
  - title: Total de Inscritos por Empresa
    name: Total de Inscritos por Empresa
    model: demo_prototipando
    explore: looker_list
    type: looker_grid
    fields: [looker_list.count, looker_list.empresa]
    filters:
      looker_list.empresa: "-Sem Resposta"
    sorts: [looker_list.count desc]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: transparent
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: 5d189dfc-4f46-46f3-822b-bfb0b61777b1
      options:
        steps: 5
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: true
    minimum_column_width: 75
    series_labels:
      looker_list.count: Total de Inscritos
    series_cell_visualizations:
      looker_list.count:
        is_active: true
    x_axis_gridlines: false
    y_axis_gridlines: true
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
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    y_axes: [{label: '', orientation: left, series: [{axisId: Não - looker_list.count,
            id: Não - looker_list.count, name: Não}, {axisId: Sim - looker_list.count,
            id: Sim - looker_list.count, name: Sim}], showLabels: false, showValues: false,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    hide_legend: false
    series_colors: {}
    reference_lines: []
    ordering: desc
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    custom_color_enabled: true
    show_single_value_title: true
    single_value_title: Total de Confirmados - Online
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    hidden_pivots: {}
    defaults_version: 1
    hidden_fields: []
    hidden_points_if_no: []
    font_size: 12
    up_color: false
    down_color: false
    total_color: false
    groupBars: true
    labelSize: 10pt
    showLegend: true
    truncate_column_names: false
    listen:
      Região: looker_list.region_code
      Status da Inscrição: looker_list.rsvp_status
    row: 24
    col: 0
    width: 12
    height: 9
  - title: Total de Inscritos por Cargo
    name: Total de Inscritos por Cargo
    model: demo_prototipando
    explore: looker_list
    type: looker_grid
    fields: [looker_list.count, looker_list.cargo]
    filters:
      looker_list.cargo: "-NULL"
    sorts: [looker_list.count desc]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: transparent
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: 5d189dfc-4f46-46f3-822b-bfb0b61777b1
      options:
        steps: 5
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: true
    minimum_column_width: 75
    series_labels:
      looker_list.count: Total de Inscritos
    series_cell_visualizations:
      looker_list.count:
        is_active: true
    x_axis_gridlines: false
    y_axis_gridlines: true
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
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    y_axes: [{label: '', orientation: left, series: [{axisId: Não - looker_list.count,
            id: Não - looker_list.count, name: Não}, {axisId: Sim - looker_list.count,
            id: Sim - looker_list.count, name: Sim}], showLabels: false, showValues: false,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    hide_legend: false
    series_colors: {}
    reference_lines: []
    ordering: desc
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    custom_color_enabled: true
    show_single_value_title: true
    single_value_title: Total de Confirmados - Online
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    hidden_pivots: {}
    defaults_version: 1
    hidden_fields: []
    hidden_points_if_no: []
    font_size: 12
    up_color: false
    down_color: false
    total_color: false
    groupBars: true
    labelSize: 10pt
    showLegend: true
    truncate_column_names: false
    listen:
      Região: looker_list.region_code
      Status da Inscrição: looker_list.rsvp_status
    row: 24
    col: 12
    width: 12
    height: 9
  - title: Total de Confirmados - Parceiros
    name: Total de Confirmados - Parceiros
    model: demo_prototipando
    explore: looker_list
    type: looker_pie
    fields: [looker_list.count, looker_list.checkparceiro]
    filters:
      looker_list.checkparceiro: ''
      looker_list.rsvp_status: CONFIRMED
    sorts: [looker_list.checkparceiro, looker_list.count desc]
    limit: 500
    column_limit: 50
    value_labels: labels
    label_type: labVal
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: 5d189dfc-4f46-46f3-822b-bfb0b61777b1
      options:
        steps: 5
    series_colors:
      Não: "#1A73E8"
      Sim: "#12B5CB"
    series_labels:
      looker_list.count: Total de Inscritos
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    truncate_header: true
    size_to_fit: true
    minimum_column_width: 75
    series_cell_visualizations:
      looker_list.count:
        is_active: true
    table_theme: transparent
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    x_axis_gridlines: false
    y_axis_gridlines: true
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
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    y_axes: [{label: '', orientation: left, series: [{axisId: Não - looker_list.count,
            id: Não - looker_list.count, name: Não}, {axisId: Sim - looker_list.count,
            id: Sim - looker_list.count, name: Sim}], showLabels: false, showValues: false,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    hide_legend: false
    reference_lines: []
    ordering: desc
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    custom_color_enabled: true
    show_single_value_title: true
    single_value_title: Total de Confirmados - Online
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    hidden_pivots: {}
    defaults_version: 1
    hide_totals: false
    hide_row_totals: false
    hidden_fields: []
    hidden_points_if_no: []
    font_size: 12
    up_color: false
    down_color: false
    total_color: false
    groupBars: true
    labelSize: 10pt
    showLegend: true
    truncate_column_names: false
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
      Região: looker_list.region_code
    row: 15
    col: 0
    width: 12
    height: 8
  - name: ''
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: ''
    row: 14
    col: 0
    width: 24
    height: 1
  - name: " (2)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: ''
    row: 0
    col: 0
    width: 24
    height: 1
  - name: " (3)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: ''
    row: 23
    col: 0
    width: 24
    height: 1
  - name: " (4)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: ''
    row: 5
    col: 0
    width: 24
    height: 1
  filters:
  - name: Região
    title: Região
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: demo_prototipando
    explore: looker_list
    listens_to_filters: []
    field: looker_list.region_code
  - name: Status da Inscrição
    title: Status da Inscrição
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: dropdown_menu
      display: popover
    model: demo_prototipando
    explore: looker_list
    listens_to_filters: []
    field: looker_list.rsvp_status
