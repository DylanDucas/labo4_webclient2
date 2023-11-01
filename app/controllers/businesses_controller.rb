#Dylan Ducas
#11h50 17 octobre 2023 labo 3
#11h12 31 octobre 2023 labo 4
class BusinessesController < ApplicationController
    def show
        @business = Business.find params[:id]
        
        respond_to do |format|
            format.html
            format.json { render :json => get_json }
            format.xml { render :xml => get_json.to_xml }
        end
    end

    def get_json
        return (Business.find params[:id]).as_json(
            include: {menus: {
                include: {menus: {
                    include: :items
        }}}})
    end
end