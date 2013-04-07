class VotoVotantesController < ApplicationController
  
  # POST /votoVotantes
  # POST /votoVotantes.json
  def create
    @votoVotante = VotoVotante.new(params[:votoVotante])
    @votoVotante.votante_id = current_user.votante.id
    @votoVotante.fecha = Date.today.to_s

    respond_to do |format|
      if @votoVotante.save
        format.json { render json: @votoVotante }
      else
        format.json { render json: @votoVotante, :status => 500 }
      end
    end
  end
end
