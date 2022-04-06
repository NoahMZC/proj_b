connection: "noab_b_0404"

# include all the views
include: "/views/**/*.view"

datagroup: noab_b_0404_default_datagroup {
  sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "24 hour"
}

persist_with: noab_b_0404_default_datagroup

explore: bm_f_subway_passenger_dd {}

explore: bm_d_calender_dt {}

explore: bm_d_transfer_station {}

explore: bm_d_passenger_type_cd {}

explore: bm_d_time_range_cd {}

explore: bm_f_subway_card_dd {
  join: bm_d_calender_dt {
    type: inner
    sql_on: ${bm_d_calender_dt.dt_date} =${bm_f_subway_card_dd.dt_date} ;;
    relationship: many_to_one
  }
  join: year_before {
    type: inner
    sql_on: ${bm_f_subway_card_dd.dt_date} - INTERVAL '1' YEAR = ${year_before.bm_d_calender_dt_dt_date};;
    relationship: many_to_one
  }
}
