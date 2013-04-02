class CalendarController < ApplicationController
  def index
    @calendar_items = CalendarItem.all
  end
end
