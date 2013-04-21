class ApplicationController < ActionController::Base
  protect_from_forgery
  
  def show
    @votacionesWeb = VotacionWeb.select('votacion_webs.*, votaciones.fecha').order('votaciones.fecha DESC').joins(:votacion).where("votacion_webs.enabled = 1 AND votacion_webs.frontpage = 1").to_a;
    @totalPoliticos = LegislaturaPolitico.where("legislatura_id = ? AND fechaBaja IS NULL", 1).count(:politico_id)
  end
end
