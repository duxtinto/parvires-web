class PresController < ApplicationController

  # POST /pres
  # POST /pres.json
  def create
    @pre = Pre.new(params[:pre])

    respond_to do |format|
      if @pre.save
        format.json { render json: @pre }
      else
        format.json { render json: @pre, :status => 500 }
      end
    end
  end

end
