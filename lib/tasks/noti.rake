task :noti => :environment do
	Notificaciones.enviar!
end