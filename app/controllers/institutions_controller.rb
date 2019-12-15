class InstitutionsController < ApplicationController
  def index; end

  def create
    institute = Institution.create!(institution_params)

    redirect_to institution_path(institute)
  end

  def show; end

  private 
    def institution_params
      params.permit(
        :name, 
        :description, 
        :address, 
        :cover, 
        :logo
      )
    end
end
