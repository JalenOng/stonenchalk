class CreateCompanies < ActiveRecord::Migration[5.1]
  def change
    create_table :companies do |t|
      t.integer :number_of_desks

      t.timestamps
    end
  end
end
