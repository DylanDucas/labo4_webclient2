#11h21 17 octobre 2023
#Dylan Ducas
class HomeController < ApplicationController
    def index
        @businesses = Business.all.order :name
    end
end
