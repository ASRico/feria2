class Feriado < ActiveRecord::Base
  attr_accessible :fecha, :titulo, :user_id
  belongs_to :user

  # Validaciones
  validates :titulo, :presence => {:message => 'Usted debe ingresar un titulo referente al dia feriado'}
  validates :fecha, :presence => {:message => 'Usted debe ingresar una fecha'}
end
