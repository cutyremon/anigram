class Addblock < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :block, :integer, :default => 0
  end
end
