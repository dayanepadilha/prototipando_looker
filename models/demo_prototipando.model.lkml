connection: "demo_sura"

# include all the views
include: "/views/**/*.view.lkml"
include: "/dashboards/*.dashboard.lookml"

datagroup: demo_prototipando_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: demo_prototipando_default_datagroup

explore: looker_list_certa{
  group_label: "Prototipando Ideias - Looker"
  label: "Looker"
  join: temp_1 {
    type: left_outer
    relationship: many_to_many
    sql_on: ${temp_1.nao_muda} ;;
  }
}

explore: teste_natura {}
