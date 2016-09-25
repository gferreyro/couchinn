class AgregarTipoHospedajeAHospedaje < ActiveRecord::Migration
  def change
  	add_column :accomodations, :accommodation_type_id, :integer
  end
end
