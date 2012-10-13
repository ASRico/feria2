class Feriado < ActiveRecord::Base
  attr_accessible :fecha, :titulo, :user_id
  belongs_to :user
end
