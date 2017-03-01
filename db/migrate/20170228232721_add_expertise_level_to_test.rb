class AddExpertiseLevelToTest < ActiveRecord::Migration[5.0]
  def change
    add_column :tests, :expertise_level, :string
  end
end
