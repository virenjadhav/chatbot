class ArtworkController < ApplicationController

    def show_order_and_artwork_flow
        # doc = Hpricot::XML(request.raw_post)
        # order_id  = parse_xml(doc/:params/'id')
        doc = JSON.parse(request.raw_post)
        # doc = Hash.from_xml(request.raw_post).to_json
        # binding.pry
        order_id = doc["params"]["id"]
        @orders = Artwork.show_order_and_artwork_flow(order_id)
        # binding.pry
        # render :xml=>@orders[0].xmlcol
        render_json orders: @orders
    end

end