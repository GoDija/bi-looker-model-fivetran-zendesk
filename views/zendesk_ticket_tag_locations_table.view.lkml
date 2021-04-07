view: zendesk_ticket_tag_locations_table {
  sql_table_name: `dija-nucleous.master_tables.zendesk_ticket_tag_locations_table`
    ;;

  dimension: site_location_name {
    label: "Ticket Location"
    type: string
    sql: ${TABLE}.site_location_name ;;
  }

  dimension: tag_name {
    hidden: yes
    type: string
    sql: ${TABLE}.tag_name ;;
  }

}
