view: looker_list_certa {
  sql_table_name: `dayanepadilha-477-202302281139.prototipando_looker.looker_list` ;;

  dimension: cargo {
    type: string
    sql: ${TABLE}.cargo ;;
  }
  dimension: checkparceiro {
    label: "Check Parceiro"
    type: string
    sql: case when ${TABLE}.checkparceiro is null then "Sem Resposta" else ${TABLE}.checkparceiro end;;
  }
  dimension: contacts {
    label: "Contatos"
    type: string
    sql: ${TABLE}.contacts ;;
  }
  dimension_group: create {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.create_time ;;
  }

  dimension: create_max {
    type: date
    sql: max(${create_date}) ;;
  }


  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }
  dimension: empresa {
    label: "Empresa"
    type: string
    sql: case when upper(${TABLE}.empresa) is null then "Sem Resposta" else upper(${TABLE}.empresa) end;;
  }
  dimension: first_name {
    label: "Primeiro Nome"
    type: string
    sql: upper(${TABLE}.first_name) ;;
  }

  dimension: full_name {
    type: string
    sql: CONCAT(${first_name}, ' ', ${last_name}) ;;
  }
  dimension: guest_type {
    type: string
    sql: ${TABLE}.guest_type ;;
  }
  dimension: last_name {
    label: "Último Nome"
    type: string
    sql: upper(${TABLE}.last_name) ;;
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
    label: "Status"
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
    label: "Vai Presencial"
    type: string
    sql: case when ${TABLE}.vaipresencial is null then "Sem Resposta" else ${TABLE}.vaipresencial end;;
  }
  measure: count {
    label: "Total"
    type: count
    drill_fields: [full_name, empresa]
  }
  measure: count_filtro {
    label: "Total sem Resposta"
    type: count
    filters: [empresa: "Sem Resposta"]
  }
  measure: subtracao {
    label: "Total - Total sem Resposta"
    type: number
    sql: ${count}-${count_filtro} ;;
  }
}
