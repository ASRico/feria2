class HomeController < ApplicationController
  def index
  end
  def enviarMail
  	%x[rake noti]
  end
end
