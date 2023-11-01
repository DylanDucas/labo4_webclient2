#Dylan Ducas
#10h02 1 novembre 2023
class Business < ApplicationRecord
    has_many :menus
    accepts_nested_attributes_for :menus

    belongs_to :user
end
