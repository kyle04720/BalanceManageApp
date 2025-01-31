class CreateIncomes < ActiveRecord::Migration[8.0]
  def change
    create_table :incomes do |t|
      t.string :name, null: false
      t.string :description
      t.timestamps
    end
  end
end
