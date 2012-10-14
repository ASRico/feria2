class Notificaciones
  def self.enviar!
    i = Date.today
    f =  Date.today + 15
    User.all.each do |user|
	    lista = user.feriados.where("fecha between ? and ?",i,f)
	    user.clientes.all.each do |cliente|
	      UserMailer.notificacion_feriado(cliente, lista).deliver	
	    end
    end
  end
end