# The name of this view in Looker is "System Activity History"
view: system_activity_history {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `alpine-dynamo-404312.looker_hackathon_q.system_activity_history` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Query Count" in Explore.

  dimension: query_count {
    type: number
    sql: ${TABLE}.Query_Count ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_query_count {
    type: sum
    sql: ${query_count} ;;  }
  measure: average_query_count {
    type: average
    sql: ${query_count} ;;  }

  dimension: query_created_date {
    type: string
    sql: ${TABLE}.Query_Created_Date ;;
  }

  dimension: query_fields_used {
    type: string
    sql: ${TABLE}.Query_Fields_Used ;;
  }

  dimension: query_id {
    type: number
    sql: ${TABLE}.Query_ID ;;
  }
  measure: count {
    type: count
  }
   dimension: used_or_unused {
    label: "Used or Un-Used"
     type: string
    sql:case when ${TABLE}.Query_Fields_Used is null then "Un-Used Field" else "Used Field" end  ;;
   }

}
