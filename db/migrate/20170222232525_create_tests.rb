class CreateTests < ActiveRecord::Migration[5.0]
  def change
    create_table :tests do |t|
      t.string :title
      t.text :requirements
      t.text :instructions
      t.date :start_date
      t.date :end_date
      t.date :review_date
      t.references :testable, polymorphic: true

      t.timestamps
    end
  end
end
