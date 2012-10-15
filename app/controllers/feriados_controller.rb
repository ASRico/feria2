class FeriadosController < InheritedResources::Base
  respond_to :html, :xml, :json
  before_filter :authenticate_user!, :except => [:show, :index]
  #def begin_of_association_chain
  #  @current_user
  #end
  
  def begin_of_association_chain
    @current_user #||= User.find(session[:user_id]) if session[:user_id]
  end
=begin // con filtar para el usuario logueado.
  def index
    @titulo = "Dias Feriados!"
    @feriados = current_user.feriados

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @diaferiados }
    end
  end
  def show
    @feriado = current_user.feriados.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @diaferiado }
    end
  end
=end 
end
