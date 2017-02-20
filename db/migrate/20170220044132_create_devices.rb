class CreateDevices < ActiveRecord::Migration[5.0]
  def change
    create_table :devices do |t|
      t.string :device_name
      t.references :deviceable, polymorphic: true

      t.timestamps
    end
  end
end
