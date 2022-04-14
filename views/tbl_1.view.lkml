# The name of this view in Looker is "Tbl 1"
view: tbl_1 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `example_bell_dataset_1.tbl_1`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Applicable To" in Explore.

  dimension: applicable_to {
    type: string
    sql: ${TABLE}.Applicable_to ;;
  }

  dimension: behavior {
    type: string
    sql: ${TABLE}.Behavior ;;
  }

  dimension: cnf_prometheus_release {
    type: string
    sql: ${TABLE}.CNF_Prometheus_Release ;;
  }

  dimension: data_type {
    type: string
    sql: ${TABLE}.Data_Type ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.Description ;;
  }

  dimension: document_change {
    type: string
    sql: ${TABLE}.Document_Change ;;
  }

  dimension: e_pdg {
    type: yesno
    sql: ${TABLE}.ePDG ;;
  }

  dimension: format {
    type: string
    sql: ${TABLE}.Format ;;
  }

  dimension: group_name {
    type: string
    sql: ${TABLE}.Group_Name ;;
  }

  dimension: gw_c {
    type: yesno
    sql: ${TABLE}.GW_C ;;
  }

  dimension: gw_u {
    type: yesno
    sql: ${TABLE}.GW_U ;;
  }

  dimension: index {
    type: string
    sql: ${TABLE}.Index ;;
  }

  dimension: kpi_kci_object {
    type: string
    sql: ${TABLE}.KPI_KCI_Object ;;
  }

  dimension: main_group {
    type: string
    sql: ${TABLE}.Main_Group ;;
  }

  dimension: notes {
    type: string
    sql: ${TABLE}.Notes ;;
  }

  dimension: object_index {
    type: number
    sql: ${TABLE}.Object_index ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_object_index {
    type: sum
    sql: ${object_index} ;;
  }

  measure: average_object_index {
    type: average
    sql: ${object_index} ;;
  }

  dimension: object_type {
    type: string
    sql: ${TABLE}.Object_type ;;
  }

  dimension: pgw {
    type: yesno
    sql: ${TABLE}.PGW ;;
  }

  dimension: prometheus_labels {
    type: string
    sql: ${TABLE}.Prometheus_Labels ;;
  }

  dimension: prometheus_metric {
    type: string
    sql: ${TABLE}.Prometheus_metric ;;
  }

  dimension: range {
    type: string
    sql: ${TABLE}.`Range` ;;
  }

  dimension: sae_gw {
    type: yesno
    sql: ${TABLE}.SAE_GW ;;
  }

  dimension: sgw {
    type: yesno
    sql: ${TABLE}.SGW ;;
  }

  dimension: ssg {
    type: yesno
    sql: ${TABLE}.SSG ;;
  }

  dimension: sw_release {
    type: string
    sql: ${TABLE}.SW_Release ;;
  }

  dimension: twag {
    type: yesno
    sql: ${TABLE}.TWAG ;;
  }

  dimension: unit {
    type: string
    sql: ${TABLE}.Unit ;;
  }

  measure: count {
    type: count
    drill_fields: [group_name]
  }
}
