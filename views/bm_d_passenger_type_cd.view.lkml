view: bm_d_passenger_type_cd {
  sql_table_name: `project_b_team.bm_d_passenger_type_cd`
    ;;

  dimension: cd {
    type: string
    sql: ${TABLE}.cd ;;
  }

  dimension: passenger_type {
    type: string
    sql: ${TABLE}.passenger_type ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
