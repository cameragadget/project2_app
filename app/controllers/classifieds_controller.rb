class ClassifiedsController < ApplicationController
  def new
    @classified = Classified.new
  end

  def create
    @classified = Classified.new(classified_params)

    if @classified.save
      flash[:notice] = "New classified created!"
      redirect_to classified_path(@classified)
    else
      render :new
  end

  def index
    @classifieds = Classifieds.all
  end
end
