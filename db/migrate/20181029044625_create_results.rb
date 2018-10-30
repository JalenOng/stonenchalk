class CreateResults < ActiveRecord::Migration[5.1]
  def change
    create_table :results do |t|
      t.string :month
      t.integer :residents
      t.float :utilization

      t.timestamps
    end
  end
end
