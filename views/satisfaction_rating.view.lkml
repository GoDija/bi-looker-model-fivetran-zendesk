view: satisfaction_rating {
  sql_table_name: `dija-nucleous.raw_zendesk.satisfaction_rating`
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    hidden: yes
    type: number
    sql: ${TABLE}.id ;;
  }


  dimension_group: created {
    label: "Ticket Score Created at"
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.created_at ;;
  }


  dimension: score {
    label: "Ticket Score"
    type: string
    sql: ${TABLE}.score ;;
  }

  dimension: ticket_id {
    type: number
    sql: ${TABLE}.ticket_id ;;
  }


}
