class AgregaCampoCapacidadAHospedaje < ActiveRecord::Migration
  def change
  	add_column :accomodations, :capacidad, :integer, default: 1
  end
end
