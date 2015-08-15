class RemoveOwnerUuid < ActiveRecord::Migration
  def change
  	remove_column :servers, :owner_uuid
  end
end
