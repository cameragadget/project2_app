class ClassifiedsController < ApplicationController
  def new
    @classified = Classified.new
  end

  def create
    @classified = Classified.new(classified_params)
    @classified.user_id = current_user
    @classified.email = current_user.email

    if @classified.save
      flash[:notice] = "New classified created!"
      redirect_to classified_path(@classified)
    else
      render :new
    end
  end

  def index
    @classifieds = Classified.all
  end

  def show
    @classified = Classified.find(params[:id])
  end

  def edit
    @classified = Classified.find(params[:id])
  end

  def update
    @classified = Classified.find(params[:id])
    if @classified.update_attributes(params.require(:classified).permit(:user_id, :post_type, :machine_name, :body_text, :condition, :price, :location, :photo_one_url, :photo_two_url))
      redirect_to classifieds_path
    else
      render :edit
    end
  end

  def destroy
    @classified = Classified.find(params[:id])
    @classified.destroy
    redirect_to classifieds_path
  end


private

    def classified_params
      params.require(:classified).permit(:user_id, :post_type, :body_text, :machine_name, :condition, :price, :location, :photo_one_url, :photo_two_url)
    end
end
