class PreworkController < ApplicationController
  def index
    @prework_modules = PreworkModule.all
    
  end
end
