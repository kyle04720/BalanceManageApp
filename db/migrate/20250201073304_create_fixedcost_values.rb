class CreateFixedcostValues < ActiveRecord::Migration[8.0]
  def change
    create_table :fixedcost_values do |t|
      t.integer :fixedcost_id, null: false
      t.date :year_month
      t.integer :value
      t.string :description
      t.timestamps
    end
  end
end
