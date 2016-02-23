class RumorsController < ApplicationController
  def new
    @rumor = Rumor.new
  end

  def create
    @rumor = Rumor.new(rumor_params)
    @rumor.user_id = current_user

    if @rumor.save
      flash[:notice] = "You started a new rumor!"
      redirect_to rumor_path(@rumor)
    else
      render :new
    end
  end

    def index
      @rumors = Rumor.all
    end

    def show
      @rumor = Rumor.find(params[:id])
    end

    def edit
      @rumor = Rumor.find(params[:id])
    end

    def update
      @rumor = Rumor.find(params[:id])
      if @rumor.update_attributes(params.require(:rumor).permit(:title, :body_text))
        redirect_to rumors_path
      else
        render :edit
      end
    end

    def destroy
      @rumor = Rumor.find(params[:id])
      @rumor.destroy
      redirect_to rumors_path
    end

    private

      def rumor_params
        params.require(:rumor).permit(:user_id, :title, :body_text)
      end
  end


