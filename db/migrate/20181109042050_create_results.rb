class CreateResults < ActiveRecord::Migration[5.1]
  def change
    create_table :results do |t|
      t.string :month
      t.integer :number_of_paying_residents
      t.float :utilization
      t.timestamps
    end
  end
end
