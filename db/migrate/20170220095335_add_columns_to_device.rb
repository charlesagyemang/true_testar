class AddColumnsToDevice < ActiveRecord::Migration[5.0]
  def change
    add_column :devices, :device_type, :string
    add_column :devices, :device_os, :string
    add_column :devices, :os_version, :string
  end
end
