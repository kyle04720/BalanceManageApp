class AddColumnsToVariablecosts < ActiveRecord::Migration[8.0]
  def change
    add_column :variablecosts, :name, :string
    add_column :variablecosts, :description, :string
  end
end
