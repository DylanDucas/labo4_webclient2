#Dylan Ducas
#10h24 18 octobre 2023 labo 3
#12h30 31 octobre 2023 labo 4
class AdminController < ApplicationController
    before_action :authenticate_user!
    before_action :auth

    def auth
        if !current_user.is_admin
            redirect_back_or_to "/"
        end
    end
end