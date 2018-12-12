class CreateOccupancies < ActiveRecord::Migration[5.1]
  def change
    create_table :occupancies do |t|
      t.string :month
      t.integer :number_of_paying_residents
      t.float :utilization

      t.timestamps
    end
  end
end
