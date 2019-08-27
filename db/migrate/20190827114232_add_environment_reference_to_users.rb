class AddEnvironmentReferenceToUsers < ActiveRecord::Migration[5.2]
  def change
    add_reference :users, :environment, index: true
  end
end
