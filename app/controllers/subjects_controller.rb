class SubjectsController < ApplicationController
  before_action :authenticate_user!

  def show
    @subject = Subject.find(params[:id])
  end
end
