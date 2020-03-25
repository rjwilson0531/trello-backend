class ItemsController < ApplicationController
    def index
        items = Item.all
        render json: items.to_json(
            :except => [:created_at, :updated_at]
        )
    end

    def create
        item = Item.create(title: params["title"], content: params["content"], card_id: params["card_id"] )
        render json: item.to_json(
            :except => [:created_at, :updated_at]
        )
    end

    def destroy
    end
end
