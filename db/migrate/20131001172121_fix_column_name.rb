class FixColumnName < ActiveRecord::Migration
  def change
    rename_column :companies, :encrypted_password, :password
  end
end
