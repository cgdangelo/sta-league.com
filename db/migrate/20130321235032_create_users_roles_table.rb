class CreateUsersRolesTable < ActiveRecord::Migration
  def up
    create_table :roles_users do |t|
      t.references :user
      t.references :role
      t.timestamps
    end
  end

  def down
    drop_table :roles_users
  end
end
