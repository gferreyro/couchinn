class CreateAccommodationTypes < ActiveRecord::Migration
  def change
    create_table :accommodation_types do |t|
      t.string :descripcion
      t.boolean :activo, default: true

      t.timestamps
    end
  end
end
