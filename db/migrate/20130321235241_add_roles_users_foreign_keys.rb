class AddRolesUsersForeignKeys < ActiveRecord::Migration
  def change
    execute <<-SQL
    ALTER TABLE roles_users 
      ADD CONSTRAINT fk_roles_users_user_id_users_id FOREIGN KEY (user_id) REFERENCES users(id),
      ADD CONSTRAINT fk_roles_users_role_id_roles_id FOREIGN KEY (role_id) REFERENCES roles(id)
    SQL
  end
end
