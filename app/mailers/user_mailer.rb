class UserMailer < ActionMailer::Base
  # default from: "from@example.com"
  def notificacion_feriado(user, cliente, diaferiados)
  	from: user.email
  	mail(:to => cliente.email, :subject => "Dia Feriado")
  end
end
