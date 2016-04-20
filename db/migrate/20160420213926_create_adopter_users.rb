class CreateAdopterUsers < ActiveRecord::Migration
  def change
    create_table :adopter_users do |t|
      t.string :first_name
      t.string :last_name
      t.string :street
      t.string :city
      t.string :state
      t.string :zip
      t.string :email
      t.string :phone_number
      t.string :gender
      t.string :has_yard
      t.string :has_kids
      t.string :employed
      t.string :retired

      t.timestamps null: false
    end
  end
end
