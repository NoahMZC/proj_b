view: bm_f_subway_card_dd {
  sql_table_name: `project_b_team.bm_f_subway_card_dd`
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
    sql: ${TABLE}.get_cnt/10000 ;;
  }

  dimension: get_off_cnt {
    type: number
    sql: ${TABLE}.get_off_cnt/10000 ;;
  }

  dimension: moving_passenger_cnt {
    type: number
    sql: ${TABLE}.moving_passenger_cnt/10000 ;;
  }

  dimension: station_nm {
    type: string
    sql: ${TABLE}.station_nm ;;
  }

  dimension: subway_line_nm {
    type: string
    sql: ${TABLE}.subway_line_nm ;;
  }

  dimension: sunsusong_cnt {
    type: number
    sql: ${TABLE}.sunsusong_cnt/10000 ;;
  }

  measure: dynamic_filter_value{
    type: max
    sql: 1 ;;
    html: <p style =
              "color: #000000;
              font-size:30%;
              text-align:center">
              기간 : {% if _filters['dt_date']%}
                          {{_filters['dt_date']}}
                          {% else %} 전체 {% endif %}


      &nbsp;&nbsp;&nbsp;
      호선 : {% if _filters['subway_line_nm']%}
      {{_filters['subway_line_nm']}}
      {% else %} 전체 {% endif %}
      &nbsp;&nbsp;&nbsp;
      </p>;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
