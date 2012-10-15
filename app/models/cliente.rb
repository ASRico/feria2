class Cliente < ActiveRecord::Base
  attr_accessible :email, :nombre, :pais

  # Validaciones
  validates :nombre, :presence => {:message => 'Usted debe ingresar un nombre'}
  validates :pais, :presence => {:message => 'Usted debe ingresar un pais'}
  validates :email, :presence => {:message => 'Usted debe ingresar un email'}
  #validates :email,   
   #         :presence => true,   
   #         :uniqueness => true   
            #:format => { :with => /\A[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]+\z/ } 
end
