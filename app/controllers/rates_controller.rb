class RatesController < ApplicationController
  before_action :find_params, only: [:show, :edit, :update]
  def index
    @rates = Rate.all
  end

  def new
    @rate = Rate.new
  end

  def show
  end

  def create
    @rate = Rate.new(rate_params)
    @rate.save
    redirect_to @rate
  end

  def edit
  end

  def update
  end

  def destroy
    find_params
    @rate.destroy
    redirect_to 'index'
  end

  private

   def rate_params
      params.require(:rate).permit(:item, :dollar)
   end

   def find_params
      @rate = Rate.find(params[:id])
   end
end
