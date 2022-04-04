connection: "noab_b_0404"

# include all the views
include: "/views/**/*.view"

datagroup: noab_b_0404_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: noab_b_0404_default_datagroup

explore: bm_f_subway_passenger_dd {}

explore: bm_d_calender_dt {}

explore: bm_d_transfer_station {}

explore: bm_d_passenger_type_cd {}

explore: bm_d_time_range_cd {}

explore: bm_f_subway_card_dd {}
