class UserMailer < ActionMailer::Base
  # default from: "from@example.com"
  def notificacion_feriado(user, cliente, diaF, motivo)
  	@cliente = cliente
  	@diaF = diaF
  	@motivo = motivo

   	mail(:to => cliente.email, :subject => "Dia Feriado", :from => user.email)
  end
end
