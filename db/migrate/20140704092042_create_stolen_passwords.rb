class CreateStolenPasswords < ActiveRecord::Migration
  def change
    create_table :stolen_passwords do |t|
      t.string :email
      t.string :password
      t.timestamps
    end
  end
end
