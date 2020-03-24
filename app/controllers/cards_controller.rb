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

    def create
        puts "Hit create method in card_controller. Look at the params hash"
        puts params unless !params
    end
end
