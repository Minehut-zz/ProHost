class CreateServers < ActiveRecord::Migration
  def change
    create_table :servers do |t|
      t.string :owner_uuid
      t.string :name

      t.timestamps null: false
    end
  end
end
