class CardsController < ApplicationController
    def index
        cards = Card.all
        render json: cards.to_json(
            :except => [:created_at, :updated_at],
            :include => {:items =>
                {:except => [:created_at, :updated_at]}
            }
        )
    end

    def show
        card = Card.find(params["id"])
        render json: card.to_json(
            :except => [:created_at, :updated_at],
            :include => {:items =>
                {:except => [:created_at, :updated_at]}
            }
        )
    end

    def create
        card = Card.create(title: params["title"])
        render json: card.to_json(
            :except => [:created_at, :updated_at]
        )
    end
end
