class CreateFeriados < ActiveRecord::Migration
  def change
    create_table :feriados do |t|
      t.string :titulo, :null => false
      t.date :fecha, :null => false
      t.integer :user_id, :null => false, :default => 0

      t.timestamps
    end
  end
end
