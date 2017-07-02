class AttendancesController < ApplicationController
  before_action :authenticate_user!

  def update
    @attendance = Attendance.find(params[:id])
    @attendance.update(attendance_params)
    redirect_back fallback_location: root_path
  end

  private

  def attendance_params
    params.require(:attendance).permit(
      :status
    )
  end
end