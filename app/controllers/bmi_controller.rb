class BmiController < ApplicationController
  def new
  end

  def create
    bmi = Bmi.new(params[:height], params[:weight])
    @bmi = bmi.bmi
    @result = bmi.output
    render 'bmi/show'
  end
end
