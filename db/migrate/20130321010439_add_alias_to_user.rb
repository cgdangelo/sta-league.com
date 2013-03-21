class AddAliasToUser < ActiveRecord::Migration
  def up
    add_column :users, :alias, :string
  end

  def down
    remove_column :users, :alias
  end
end
