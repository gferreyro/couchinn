class AgregaCampoPremium < ActiveRecord::Migration
  def change
  	add_column :users, :premium, :boolean
  end
end
