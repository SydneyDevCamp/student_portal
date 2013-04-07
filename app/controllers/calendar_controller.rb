class CalendarController < ApplicationController
  def index
    @calendar_items = CalendarItem.all
    @weeks = Week.all
  end
end
