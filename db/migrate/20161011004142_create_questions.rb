class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.integer :accomodation_id, null: false
      t.integer :user_id, null: false
      t.string :q, null: false
      t.string :a, default: ""

      t.timestamps
    end
  end
end
