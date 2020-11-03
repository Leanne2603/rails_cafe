class CafeController < ApplicationController
    # skip_before_action :verify_authenticity_token # only do when testing in postman!
    before_action :set_menu # only: [:order] only will ensure that before action is only actioned before the specified method

    def index       
    end

    def order
        render plain: @menu[params[:id].to_sym]
    end

    def set_menu
        @menu = MenuItem.all
    end
end
