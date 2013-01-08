require_dependency "humanage/application_controller"

module Humanage
  class PersonnelController < ApplicationController
    def index
      @personnels = Humanage::Personnel.all
    end

    def new
      @personnel = Humanage::Personnel.new
    end

    def create
      @personnel = Humanage::Personnel.create(params[:personnel])
      flash[:success] = "Personnel successfully enlisted."
      redirect_to humanage.root_url
    end
  end
end
