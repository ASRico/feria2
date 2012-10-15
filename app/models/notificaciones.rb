class Notificaciones
  def self.enviar!
    i = Date.today
    f = Date.today + 15
    User.all.each do |user|
    lista = user.feriados.where("fecha BETWEEN ? AND ?",i,f)

      if lista.empty?
        # flash[:notice] = "No hay ningun feriado registrado en los proximos 15 dias."
      else
  	    Cliente.all.each do |cliente|
          lista.each { |d|
            diaF = d.fecha
            motivo = d.titulo 
            UserMailer.notificacion_feriado(user, cliente, diaF, motivo).deliver }
        end
        # flash[:notice] = "Las notificaciones de los proximos feriados fueron enviadas con exito."
      end  
    end
  end
end