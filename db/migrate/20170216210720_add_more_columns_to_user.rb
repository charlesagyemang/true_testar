class AddMoreColumnsToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :educational_background, :string
    add_column :users, :marital_status, :string
  end
end
