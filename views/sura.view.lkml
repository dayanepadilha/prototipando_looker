view: sura {
  sql_table_name: `dayanepadilha-477-202302281139.demo_sura.sura` ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }
  dimension: apellido {
    type: string
    sql: ${TABLE}.Apellido ;;
  }
  dimension: cantidad {
    type: number
    sql: ${TABLE}.Cantidad ;;
  }
  dimension: codigo {
    type: number
    sql: ${TABLE}.Codigo ;;
  }
  dimension: codigo_dx {
    type: string
    sql: ${TABLE}.Codigo_DX ;;
  }
  dimension_group: fecha_de_agendamiento {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Fecha_de_agendamiento ;;
  }
  dimension_group: fecha_de_generacion_de_la_orden {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Fecha_de_generacion_de_la_orden ;;
  }
  dimension: id_profesional {
    type: number
    sql: ${TABLE}.ID_profesional ;;
  }
  dimension: justificacion_clinica {
    type: string
    sql: ${TABLE}.Justificacion_clinica ;;
  }
  dimension: nombre_ {
    type: string
    sql: ${TABLE}.Nombre_ ;;
  }
  dimension: numero_de_autorizacion {
    type: string
    sql: ${TABLE}.Numero_de_autorizacion ;;
  }
  dimension: numero_de_orden {
    type: number
    sql: ${TABLE}.Numero_de_orden ;;
  }
  dimension: orden {
    type: string
    sql: ${TABLE}.Orden ;;
  }
  dimension: plan {
    type: string
    sql: ${TABLE}.Plan ;;
  }
  dimension: profesional_que_prescribe {
    type: string
    sql: ${TABLE}.Profesional_que_prescribe ;;
  }
  dimension: segundo_apellido {
    type: string
    sql: ${TABLE}.Segundo_apellido ;;
  }
  dimension: segundo_nombre {
    type: string
    sql: ${TABLE}.Segundo_Nombre ;;
  }
  dimension: tipo_de_orden {
    type: string
    sql: ${TABLE}.Tipo_de_orden ;;
  }
  dimension: tipo_id {
    type: string
    sql: ${TABLE}.Tipo_ID ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
