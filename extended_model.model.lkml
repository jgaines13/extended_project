connection: "thelook"
include: "*.view.lkml"         # include all views in this project
include: "*.dashboard.lookml"  # include all dashboards in this project

include: "/let_s_break/let_s_break.model.lkml"
include: "/let_s_break/*.view"
# # Select the views that should be a part of this model,
# # and define the joins that connect them together.
#
explore: order_items_extended_broke{
  extends: [order_items]
  view_name: order_items
  from: order_items
  join: inventory_items {
    relationship: many_to_one
    type: left_outer
    sql_on: ${inventory_items.id} = ${order_items.inventory_item_id} ;;
  }
}
