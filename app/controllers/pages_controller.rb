class PagesController < ApplicationController

  def home
    @classifieds = Classified.all
    @rumors = Rumor.all
  end

end
