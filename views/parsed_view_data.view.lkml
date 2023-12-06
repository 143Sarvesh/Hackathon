# The name of this view in Looker is "Parsed View Data"
view: parsed_view_data {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `alpine-dynamo-404312.looker_hackathon_q.parsed_view_data` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Description" in Explore.

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: field_name {
    type: string
    sql: ${TABLE}.field_name ;;
  }

  dimension: field_type {
    type: string
    sql: ${TABLE}.field_type ;;
  }

  dimension: model_name {
    type: string
    sql: ${TABLE}.model_name ;;
  }

  dimension: used_fields {
    type: string
    sql: ${TABLE}.used_fields ;;
  }

  dimension: view_name {
    type: string
    sql: ${TABLE}.view_name ;;
  }
  measure: count {
    type: count
    drill_fields: [model_name, view_name, field_name]
  }
}
