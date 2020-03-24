class ItemsController < ApplicationController
    def index
        items = Item.all
        render json: items.to_json(
            :except => [:created_at, :updated_at]
        )
    end

    def create
        puts "Hit create method in item_controller. Look at the params hash"
        puts params unless !params
    end
end
