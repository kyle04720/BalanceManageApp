class AddColumnsToIncomes < ActiveRecord::Migration[8.0]
  def change
    add_column :incomes, :name, :string
    add_column :incomes, :description, :string
  end
end
