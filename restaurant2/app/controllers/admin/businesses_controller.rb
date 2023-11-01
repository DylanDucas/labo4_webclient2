#Dylan Ducas
#10h26 18 octobre 2023
class Admin::BusinessesController < AdminController
    def show
        @info = (Business.find params[:id]).as_json(
            include: {menus: {
            include: {menus: {
            include: :items
        }}}})
    end
end