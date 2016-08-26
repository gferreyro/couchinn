class AddNewValuesToTipoHospedaje < ActiveRecord::Migration
  def change
    add_column :tipo_hospedajes, :estado, :boolean
  end
end
