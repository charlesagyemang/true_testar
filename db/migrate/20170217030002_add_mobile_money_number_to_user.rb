class AddMobileMoneyNumberToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :mobile_money_number, :string
    add_column :users, :phone_number, :string
  end
end
