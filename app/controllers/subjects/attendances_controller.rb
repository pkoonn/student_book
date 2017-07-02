class Subjects::AttendancesController < ApplicationController
  before_action :authenticate_user!

  def show
    @attendances = Subject.find(params[:subject_id]).attendances.where(count: params[:count])
  end
end
