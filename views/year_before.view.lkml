view: year_before {
  derived_table: {
    sql: -- raw sql results do not include filled-in values for 'bm_d_calender_dt.dt_date'


      SELECT
      (bm_d_calender_dt.dt ) AS bm_d_calender_dt_dt_date,
      COALESCE(SUM(CAST(bm_f_subway_card_dd.moving_passenger_cnt AS FLOAT64)), 0) AS calculation_2
      FROM `project_b_team.bm_f_subway_card_dd`
      AS bm_f_subway_card_dd
      INNER JOIN `project_b_team.bm_d_calender_dt`
      AS bm_d_calender_dt ON bm_d_calender_dt.dt =bm_f_subway_card_dd.dt
      GROUP BY
      1
      ORDER BY
      1 DESC
      ;;
  }


  dimension: id {
    primary_key: yes
    sql: ${TABLE}.bm_d_calender_dt_dt_date ;;
  }
  dimension: bm_d_calender_dt_dt_date {
    type: date
    datatype: date
    sql: ${TABLE}.bm_d_calender_dt_dt_date ;;
  }

  dimension: calculation_2 {
    type: number
    sql: ${TABLE}.calculation_2 ;;
  }

  set: detail {
    fields: [bm_d_calender_dt_dt_date, calculation_2]
  }
}
