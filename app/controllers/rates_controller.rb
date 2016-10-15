class RatesController < ApplicationController
  def index
    @rates = Rate.all
  end

  def new
    @rate = Rate.new
  end

  def show
    @rate = Rate.find(params[:id])
  end

  def create
    @rate = Rate.new(rate_params)
    @rate.save
  end

  private

   def rate_params
      params.require(:dollar).permit(:item)
   end
end
