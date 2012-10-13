class FeriadosController < InheritedResources::Base
  respond_to :html, :xml, :json
  before_filter :authenticate_user!, :except => [:show, :index]
  #def begin_of_association_chain
  #  @current_user
  #end
  
  def begin_of_association_chain
    @current_user #||= User.find(session[:user_id]) if session[:user_id]
  end

end
