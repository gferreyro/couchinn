class AgregaCampoDescripcionAImage < ActiveRecord::Migration
  def change
  	add_column :images, :descripcion, :string
  end
end
