view: bl_subway_card_list {
  sql_table_name: `project_b_team.bl_subway_card_list`
    ;;

  dimension: get_cnt {
    type: number
    sql: ${TABLE}.get_cnt ;;
  }

  dimension: get_off_cnt {
    type: number
    sql: ${TABLE}.get_off_cnt ;;
  }

  dimension: reg_dt {
    type: number
    sql: ${TABLE}.reg_dt ;;
  }

  dimension: station_nm {
    type: string
    sql: ${TABLE}.station_nm ;;
  }

  dimension: subway_line_nm {
    type: string
    sql: ${TABLE}.subway_line_nm ;;
  }

  dimension: use_dt {
    type: number
    sql: ${TABLE}.use_dt ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
