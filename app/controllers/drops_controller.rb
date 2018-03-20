class DropsController < ApplicationController
  def index
    @drops = Drop.page(params[:page]).per(10)
  end

  def new
    @drop = Drop.new
  end

  def create
    @drop = Drop.new(drop_params)
    if  @drop.save
      redirect_to @drop
    else
      render :new
    end
  end

  def edit
    @drop = Drop.find(params[:id])
  end

  def update
    @drop = Drop.find(params[:id])
    if  @drop.update(drop_params)
      redirect_to @drop
    else
      render :edit
    end
  end

  def show
     @drop = Drop.find(params[:id])
  end

  def destroy
    @drop = Drop.find(params[:id])
    @drop.destroy
    redirect_to drops_path
  end

  private

  def drop_params
    params.require(:drop).permit(
      :title,
      :reason,
      :p_key,
      :sns
      )
  end
end
