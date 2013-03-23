class AddDobToUser < ActiveRecord::Migration
  def up
    add_column :users, :dob, :date
  end

  def down
    remove_column :users, :dob
  end
end
