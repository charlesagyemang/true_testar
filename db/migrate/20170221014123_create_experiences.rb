class CreateExperiences < ActiveRecord::Migration[5.0]
  def change
    create_table :experiences do |t|
      t.string :field
      t.text :description
      t.references :experienceable, polymorphic: true

      t.timestamps
    end
  end
end
