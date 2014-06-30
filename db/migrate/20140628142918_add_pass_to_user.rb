class AddPassToUser < ActiveRecord::Migration
  def change
    add_column :users, :pass, :string
  end
end
