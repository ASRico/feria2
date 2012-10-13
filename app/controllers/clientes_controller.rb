class ClientesController < InheritedResources::Base
  respond_to :html, :xml, :json
  before_filter :authenticate_user!, :except => [:show, :index]
  def begin_of_association_chain
    @current_user
  end
  
end