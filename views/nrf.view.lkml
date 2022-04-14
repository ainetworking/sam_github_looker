# The name of this view in Looker is "Nrf"
view: nrf {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `example_bell_dataset_1.nrf`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Pod 7cf6v Count" in Explore.

  dimension: pod_7cf6v_count {
    type: number
    sql: ${TABLE}.pod_7cf6v_count ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_pod_7cf6v_count {
    type: sum
    sql: ${pod_7cf6v_count} ;;
  }

  measure: average_pod_7cf6v_count {
    type: average
    sql: ${pod_7cf6v_count} ;;
  }

  dimension: pod_vv4z5_count {
    type: number
    sql: ${TABLE}.pod_vv4z5_count ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: time {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.time ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
