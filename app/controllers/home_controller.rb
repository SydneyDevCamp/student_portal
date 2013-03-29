class HomeController < ApplicationController
  before_filter :authenticate_user!

  def index
    @users = User.all
    @announcements = Announcement.published
  end
end
