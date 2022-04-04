view: bl_subway_passenger_list {
  sql_table_name: `project_b_team.bl_subway_passenger_list`
    ;;

  dimension: cnt06 {
    type: number
    sql: ${TABLE}.cnt06 ;;
  }

  dimension: cnt07 {
    type: number
    sql: ${TABLE}.cnt07 ;;
  }

  dimension: cnt08 {
    type: number
    sql: ${TABLE}.cnt08 ;;
  }

  dimension: cnt09 {
    type: number
    sql: ${TABLE}.cnt09 ;;
  }

  dimension: cnt10 {
    type: number
    sql: ${TABLE}.cnt10 ;;
  }

  dimension: cnt11 {
    type: number
    sql: ${TABLE}.cnt11 ;;
  }

  dimension: cnt12 {
    type: number
    sql: ${TABLE}.cnt12 ;;
  }

  dimension: cnt13 {
    type: number
    sql: ${TABLE}.cnt13 ;;
  }

  dimension: cnt14 {
    type: number
    sql: ${TABLE}.cnt14 ;;
  }

  dimension: cnt15 {
    type: number
    sql: ${TABLE}.cnt15 ;;
  }

  dimension: cnt16 {
    type: number
    sql: ${TABLE}.cnt16 ;;
  }

  dimension: cnt17 {
    type: number
    sql: ${TABLE}.cnt17 ;;
  }

  dimension: cnt18 {
    type: number
    sql: ${TABLE}.cnt18 ;;
  }

  dimension: cnt19 {
    type: number
    sql: ${TABLE}.cnt19 ;;
  }

  dimension: cnt20 {
    type: number
    sql: ${TABLE}.cnt20 ;;
  }

  dimension: cnt21 {
    type: number
    sql: ${TABLE}.cnt21 ;;
  }

  dimension: cnt22 {
    type: number
    sql: ${TABLE}.cnt22 ;;
  }

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

  dimension: get_get_off_gb {
    type: string
    sql: ${TABLE}.get_get_off_gb ;;
  }

  dimension: over23 {
    type: number
    sql: ${TABLE}.over23 ;;
  }

  dimension: passenger_type_gb {
    type: string
    sql: ${TABLE}.passenger_type_gb ;;
  }

  dimension: seq {
    type: number
    sql: ${TABLE}.seq ;;
  }

  dimension: station_nm {
    type: string
    sql: ${TABLE}.station_nm ;;
  }

  dimension: station_no {
    type: number
    sql: ${TABLE}.station_no ;;
  }

  dimension: subway_line_no {
    type: number
    sql: ${TABLE}.subway_line_no ;;
  }

  dimension: until06 {
    type: number
    sql: ${TABLE}.until06 ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
