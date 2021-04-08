view: ticket_tag {
  sql_table_name: `dija-nucleous.raw_zendesk.ticket_tag`
    ;;


  dimension: tag {
    label: "Ticket Tag"
    type: string
    sql: ${TABLE}.tag ;;
  }

  dimension: ticket_id {
    hidden: yes
    type: number
    sql: ${TABLE}.ticket_id ;;
  }

  dimension: is_not_numeric_tag {
    type: string
    sql: REGEXP_CONTAINS(${tag},r'[^\d]+');;
  }



  measure: count_tags {
    label: "Number of Tags"
    type: count_distinct
    sql: ${ticket_id} ;;
  }
}
