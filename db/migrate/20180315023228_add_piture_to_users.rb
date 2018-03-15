class AddPitureToUsers < ActiveRecord::Migration[5.0]
  def change
  	 add_column :users, :piture, :string
  end
end
