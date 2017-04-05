class ReportController < ApplicationController
    def index
    end

  # GET /courses/new
  def sample_action
  end

  # GET /courses/1/edit
  def edit
  end

    def report
      @report = Report.find(params["report"]["id"])
      @start_date = Date.new params["report"]["start_date(1i)"].to_i,params["report"]["start_date(2i)"].to_i,params["report"]["start_date(3i)"].to_i
      @end_date = Date.new params["report"]["end_date(1i)"].to_i,params["report"]["end_date(2i)"].to_i,params["report"]["end_date(3i)"].to_i
      @timeslots = @report.timeslots.where(date: (@start_date..@end_date))
      puts @timeslots.count
      respond_to do |format|
        format.js
      end
    end

end
