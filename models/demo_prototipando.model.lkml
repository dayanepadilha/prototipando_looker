connection: "demo_sura"

# include all the views
include: "/views/**/*.view.lkml"

datagroup: demo_prototipando_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: demo_prototipando_default_datagroup

