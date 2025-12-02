class CalendarController < ApplicationController
  def index
    @tasks = Task.all
  end

  def day
    date = params[:date].present? ? Date.parse(params[:date]) : Date.current
    @date = date
    @tasks = Task.where(due_date: date)
  end
end