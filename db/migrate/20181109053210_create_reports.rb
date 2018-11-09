class CreateReports < ActiveRecord::Migration[5.1]
  def change
    create_table :reports do |t|
      t.text :outcome
      t.string :evidence
      t.date :date_achieved
      t.string :attachments
      t.string :category

      t.timestamps
    end
  end
end
