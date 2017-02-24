class AddLevelToExperience < ActiveRecord::Migration[5.0]
  def change
    add_column :experiences, :level, :string
  end
end
