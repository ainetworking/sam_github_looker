# Define the database connection to be used for this model.
connection: "sam_test_bq_conn"

# include all the views
include: "/views/**/*.view"
include: "/dashboards/**/*.dashboard.lookml"

# Datagroups define a caching policy for an Explore. To learn more,
# use the Quick Help panel on the right to see documentation.

datagroup: sam_github_looker_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: sam_github_looker_default_datagroup

explore: example_bell_dataset_tbl_1 {}

explore: nrf {
  join: upf {
    type:  left_outer
    sql_on: ${nrf.time_time} = ${upf.time_time} ;;
    relationship: one_to_one
  }
}
