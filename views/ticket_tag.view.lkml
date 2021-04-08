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

  measure: count_tags {
    label: "Number of Tags"
    type: count_distinct
    sql: ${ticket_id} ;;
  }
}
