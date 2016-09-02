class CreateAccomodations < ActiveRecord::Migration
  def change
    create_table :accomodations do |t|
      t.text :titulo
      t.text :descripcion
      t.text :imagen

      t.timestamps
    end
  end
end
