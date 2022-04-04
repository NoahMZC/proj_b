view: bm_d_calender_dt {
  sql_table_name: `project_b_team.bm_d_calender_dt`
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

  dimension: holiday_gb {
    type: string
    sql: ${TABLE}.holiday_gb ;;
  }

  dimension: week {
    type: string
    sql: ${TABLE}.week ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
