include: "/let_s_break/orders.view"
view: orders_extended {
 extends: [orders]
sql_table_name: (select * from orders limit 1) ;;
dimension: order_extra_field {
  sql: 1 ;;
}
}
