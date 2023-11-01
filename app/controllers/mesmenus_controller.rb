#10h40 1 novembre 2023
#Dylan Ducas
class MesmenusController < ApplicationController
    def index
        authenticate_user!
        @businesses = current_user.businesses.all.order :name
    end

    def show
        @business = Business.find params[:id]
    end
end