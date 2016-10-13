class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.integer :user_id, null: false
      t.integer :accomodation_id, null: false
      t.date :from, null: false
      t.date :to, null: false
      t.string :status, default: "Pendiente"

      t.timestamps
    end
  end
end
