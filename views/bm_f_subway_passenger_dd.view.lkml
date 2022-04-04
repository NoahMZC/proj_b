view: bm_f_subway_passenger_dd {
  sql_table_name: `project_b_team.bm_f_subway_passenger_dd`
    ;;

  dimension_group: dt {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.dt ;;
  }

  dimension: get_cnt {
    type: number
    sql: ${TABLE}.get_cnt ;;
  }

  dimension: get_off_cnt {
    type: number
    sql: ${TABLE}.get_off_cnt ;;
  }

  dimension: moving_passenger_cnt {
    type: number
    sql: ${TABLE}.moving_passenger_cnt ;;
  }

  dimension: passenger_type_gb {
    type: string
    sql: ${TABLE}.passenger_type_gb ;;
  }

  dimension: station_cd {
    type: string
    sql: ${TABLE}.station_cd ;;
  }

  dimension: subway_line_no_cd {
    type: string
    sql: ${TABLE}.subway_line_no_cd ;;
  }

  dimension: sunsusong_cnt {
    type: number
    sql: ${TABLE}.sunsusong_cnt ;;
  }

  dimension: time_gb_cd {
    type: string
    sql: ${TABLE}.time_gb_cd ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
