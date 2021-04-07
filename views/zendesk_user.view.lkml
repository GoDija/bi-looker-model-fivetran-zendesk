view: zendesk_user {
  sql_table_name: `dija-nucleous.raw_zendesk.user`
    ;;
  drill_fields: [id]

  dimension: id {
    label: "User Id"
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }


  dimension: active {
    label: "Is User Active (T/F)"
    type: yesno
    sql: ${TABLE}.active ;;
  }

  dimension: alias {
    label: "User Alias"
    type: string
    sql: ${TABLE}.alias ;;
  }

  dimension: authenticity_token {
    hidden: yes
    type: string
    sql: ${TABLE}.authenticity_token ;;
  }

  dimension: chat_only {
    hidden: yes
    type: yesno
    sql: ${TABLE}.chat_only ;;
  }

  dimension_group: created {
    label: "Date User Created"
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

  dimension: custom_do_you_want_notification_ {
    hidden: yes
    type: string
    sql: ${TABLE}.custom_do_you_want_notification_ ;;
  }

  dimension: custom_role_id {
    hidden: yes
    type: number
    sql: ${TABLE}.custom_role_id ;;
  }

  dimension: details {
    hidden: yes
    type: string
    sql: ${TABLE}.details ;;
  }

  dimension: email {
    label: "User Email"
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: external_id {
    hidden: yes
    type: string
    sql: ${TABLE}.external_id ;;
  }

  dimension_group: last_login {
    label: "Date User Last Login"
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
    sql: ${TABLE}.last_login_at ;;
  }

  dimension: locale {
    label: "User Location"
    type: string
    sql: ${TABLE}.locale ;;
  }

  dimension: locale_id {
    hidden: yes
    type: number
    sql: ${TABLE}.locale_id ;;
  }

  dimension: moderator {
    hidden: yes
    type: yesno
    sql: ${TABLE}.moderator ;;
  }

  dimension: name {
    label: "User Name"
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: notes {
    hidden: yes
    type: string
    sql: ${TABLE}.notes ;;
  }

  dimension: only_private_comments {
    hidden: yes
    type: yesno
    sql: ${TABLE}.only_private_comments ;;
  }

  dimension: organization_id {
    hidden: yes
    type: number
    sql: ${TABLE}.organization_id ;;
  }

  dimension: phone {
    label: "User Phone"
    type: string
    sql: ${TABLE}.phone ;;
  }


  dimension: restricted_agent {
    label: "Is User Restricted Agent (T/F)"
    type: yesno
    sql: ${TABLE}.restricted_agent ;;
  }

  dimension: role {
    label: "User Role"
    type: string
    sql: ${TABLE}.role ;;
  }

  dimension: shared {
    hidden: yes
    type: yesno
    sql: ${TABLE}.shared ;;
  }

  dimension: shared_agent {
    hidden: yes
    type: yesno
    sql: ${TABLE}.shared_agent ;;
  }

  dimension: signature {
    hidden: yes
    type: string
    sql: ${TABLE}.signature ;;
  }

  dimension: suspended {
    hidden: yes
    type: yesno
    sql: ${TABLE}.suspended ;;
  }

  dimension: ticket_restriction {
    hidden: yes
    type: string
    sql: ${TABLE}.ticket_restriction ;;
  }

  dimension: time_zone {
    hidden: yes
    type: string
    sql: ${TABLE}.time_zone ;;
  }

  dimension: two_factor_auth_enabled {
    hidden: yes
    type: yesno
    sql: ${TABLE}.two_factor_auth_enabled ;;
  }


  dimension: url {
    hidden: yes
    type: string
    sql: ${TABLE}.url ;;
  }

  dimension: verified {
    hidden: yes
    type: yesno
    sql: ${TABLE}.verified ;;
  }

}
