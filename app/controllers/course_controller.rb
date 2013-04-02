class CourseController < ApplicationController
  def index
    @weeks = Week.all
    @days = Day.all
    @week_resources = WeekResource.all
    @day_resources = DayResource.all
  end
end
