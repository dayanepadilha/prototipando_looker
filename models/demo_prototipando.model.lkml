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
}
