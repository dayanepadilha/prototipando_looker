view: looker_list {
  sql_table_name: `dayanepadilha-477-202302281139.prototipando_looker.looker_list` ;;

  dimension: cargo {
    type: string
    sql: ${TABLE}.cargo ;;
  }
  dimension: checkparceiro {
    type: string
    sql: ${TABLE}.checkparceiro ;;
  }
  dimension: contacts {
    type: string
    sql: ${TABLE}.contacts ;;
  }
  dimension_group: create {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.create_time ;;
  }
  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }
  dimension: empresa {
    type: string
    sql: ${TABLE}.empresa ;;
  }
  dimension: first_name {
    type: string
    sql: ${TABLE}.first_name ;;
  }
  dimension: full_name {
    type: string
    sql: upper(CONCAT(${first_name}, ' ', ${last_name})) ;;
  }
  dimension: guest_type {
    type: string
    sql: ${TABLE}.guest_type ;;
  }
  dimension: last_name {
    type: string
    sql: ${TABLE}.last_name ;;
  }
  dimension: marketing_opt_in {
    type: string
    sql: ${TABLE}.marketing_opt_in ;;
  }
  dimension: personal_code {
    type: string
    sql: ${TABLE}.personal_code ;;
  }
  dimension: region_code {
    type: string
    sql: ${TABLE}.region_code ;;
  }
  dimension: registration_code {
    type: string
    sql: ${TABLE}.registration_code ;;
  }
  dimension_group: registration {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.registration_time ;;
  }
  dimension: rsvp_status {
    type: string
    sql: ${TABLE}.rsvp_status ;;
  }
  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }
  dimension: subscribers {
    type: string
    sql: ${TABLE}.subscribers ;;
  }
  dimension_group: update {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.update_time ;;
  }
  dimension: uso_de_imagem {
    type: string
    sql: ${TABLE}.uso_de_imagem ;;
  }
  dimension: vaipresencial {
    type: string
    sql: ${TABLE}.vaipresencial ;;
  }
  measure: count {
    type: count
    drill_fields: [last_name, first_name]
  }
}
