class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.string :nombre, :null => false
      t.string :pais, :null => false
      t.string :email, :null => false

      t.timestamps
    end
  end
end
