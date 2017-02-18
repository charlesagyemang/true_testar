class AddColumnsToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :firstname,              :string
    add_column :users, :surname,                :string
    add_column :users, :location,               :string
    add_column :users, :occupation,             :string
    add_column :users, :interests,              :text
    add_column :users, :mobile_money_number,    :integer
    add_column :users, :alternative_email,      :string
    add_column :users, :nationality,            :string
    add_column :users, :small_bio,              :text
    add_column :users, :date_of_birth,          :date
  end
end
