class AddActionsToRequests < ActiveRecord::Migration[5.0]
  def change
    add_column :requests, :actions, :string
  end
end
