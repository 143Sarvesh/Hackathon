# The name of this view in Looker is "Merged"
view: merged {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `alpine-dynamo-404312.looker_hackathon_q.merged` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Dashboard Title" in Explore.

  dimension: dashboard_title {
    type: string
    sql: ${TABLE}.dashboard_title ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: element_title {
    type: string
    sql: ${TABLE}.element_title ;;
  }

  dimension: element_type {
    type: string
    sql: ${TABLE}.element_type ;;
  }

  dimension: field_content_type {
    type: string
    sql: ${TABLE}.field_content_type ;;
  }

  dimension: field_name {
    type: string
    sql: ${TABLE}.field_name ;;
  }

  dimension: field_type {
    type: string
    sql: ${TABLE}.field_type ;;
  }

  dimension: is_derived_table_native {
    type: string
    sql: ${TABLE}.is_derived_table_native ;;
  }

  dimension: query_view {
    type: string
    sql: ${TABLE}.query_view ;;
  }

  dimension: sql {
    type: string
    sql: ${TABLE}.sql ;;
  }

  dimension: sql_table_name {
    type: string
    sql: ${TABLE}.sql_table_name ;;
  }

  dimension: used_fields {
    type: string
    sql: ${TABLE}.used_fields ;;
  }

  dimension: view_is_derived_table {
    type: string
    sql: ${TABLE}.view_is_derived_table ;;
  }

  dimension: view_name {
    type: string
    sql: ${TABLE}.view_name ;;
  }

  dimension: vis_name {
    type: string
    sql: ${TABLE}.vis_name ;;
  }
  measure: count {
    type: count
    drill_fields: [vis_name, field_name, sql_table_name, view_name]
  }
}
