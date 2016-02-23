class PagesController < ApplicationController
  before_action :authorize, except: [:index, :show]

  def home
    @classifieds = Classified.all
    @rumors = Rumor.all
  end

end
