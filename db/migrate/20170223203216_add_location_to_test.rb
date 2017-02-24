class AddLocationToTest < ActiveRecord::Migration[5.0]
  def change
    add_column :tests, :location, :string
    add_column :tests, :number_of_testers, :integer
  end
end
