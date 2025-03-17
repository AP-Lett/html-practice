class CreateLocations < ActiveRecord::Migration[8.0]
  def change
    create_table :locations do |t|
      t.string :country
      t.string :capital
      t.string :fun_fact

      t.timestamps
    end
  end
end
