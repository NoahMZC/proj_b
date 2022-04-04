view: bm_d_time_range_cd {
  sql_table_name: `project_b_team.bm_d_time_range_cd`
    ;;

  dimension: cd {
    type: string
    sql: ${TABLE}.cd ;;
  }

  dimension: time_gb {
    type: string
    sql: ${TABLE}.time_gb ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
