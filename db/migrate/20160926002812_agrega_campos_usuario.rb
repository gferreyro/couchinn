class AgregaCamposUsuario < ActiveRecord::Migration
  def change
  	add_column :users, :nombre, :string
  	add_column :users, :apellido, :string
  	add_column :users, :fecha_nacimiento, :date
  	add_column :users, :telefono, :string
  end
end
