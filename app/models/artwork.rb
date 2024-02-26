class Artwork < ActiveRecord::Base
  def self.show_order_and_artwork_flow(order_id)
    SalesOrder.find_by_sql ["select orderpickstatus_flag,orderentrycomplete_flag,orderacksent_flag,orderqcstatus_flag,accountreviewed_flag,
                                                artworkreceived_flag,artworkassigned_flag,artworkcompleted_flag,artwork_qc_assigned_flag,artworkreviewed_flag,artworksenttocust_flag,
                                                artworkapprovedbycust_flag from sales_orders
                                  where sales_orders.id = ?",order_id]
  end
end