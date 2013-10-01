class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :company_name
      t.string :email
      t.string :location
      t.string :encrypted_password

      t.timestamps
    end
  end
end
