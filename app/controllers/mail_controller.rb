class MailController < ApplicationController
  def index
  end
  def runTask
  	%x[rake noti]
  end
 end
