class LandingController < ApplicationController
  def show
    @pre = Pre.new()
  end
end
