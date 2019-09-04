class AddEnvironmentIdToInvitations < ActiveRecord::Migration[5.2]
  def change
    add_column :invitations, :environment_id, :integer
  end
end
