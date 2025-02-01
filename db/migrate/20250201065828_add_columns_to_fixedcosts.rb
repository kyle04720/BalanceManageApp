class AddColumnsToFixedcosts < ActiveRecord::Migration[8.0]
  def change
    add_column :fixedcosts, :name, :string
    add_column :fixedcosts, :description, :string
  end
end
