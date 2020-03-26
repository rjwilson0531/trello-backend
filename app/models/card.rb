class Card < ApplicationRecord
    has_many :items, :dependent => :destroy
end
