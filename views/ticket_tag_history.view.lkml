view: ticket_tag_history {
  sql_table_name: `dija-nucleous.raw_zendesk.ticket_tag_history`
    ;;


  dimension: tag {
    label: "Ticket Tag"
    type: string
    sql: ${TABLE}.tag ;;
  }

  dimension: numeric_tag {
    type: yesno
    sql: REGEXP_CONTAINS(${tag},r'[^\d]+')=false
  }

  dimension: tagged {
    label: "Is Tagged (T/F)"
    type: yesno
    sql: ${TABLE}.tagged ;;
  }

  dimension: ticket_id {
    type: number
    sql: ${TABLE}.ticket_id ;;
  }

  dimension_group: updated {
    label: "Tag Date"
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
    sql: ${TABLE}.updated ;;
  }

  dimension: user_id {
    label: "User Id"
    type: number
    hidden: yes
    sql: ${TABLE}.user_id ;;
  }

  measure: count {
    type: count
    hidden: yes
    drill_fields: [user.id, user.name]
  }
}
