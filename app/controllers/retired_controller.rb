class RetiredController < ApplicationController
  def new
  end

  def create
    retired = Retired.new(params[:start_date])
    @retired_days = retired.calculate
    @identity = retired.identity
    render 'retired/show'
  end
end
