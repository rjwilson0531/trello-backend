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
        item = Item.find(params["item_id"])
        item.destroy
    end

    def update
        item = Item.find(params["id"])
        item.update(params.permit(:card_id, :title, :content))
    end
end
