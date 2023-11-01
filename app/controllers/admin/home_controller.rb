#Dylan Ducas
#10h27 18 octobre 2023
class Admin::HomeController < AdminController
    def index
        @businesses = Business.all.order name: :desc
    end
end