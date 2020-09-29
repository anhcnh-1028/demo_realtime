class ReportsController < ApplicationController
  def new
    @report = Report.new
  end

  def create
    @report = Report.create notify_params
    respond_to do |format|
      format.html{redirect_to new_report_path}
      format.js
    end
  end

  private

  def notify_params
    params.require(:report).permit :description
  end
end
