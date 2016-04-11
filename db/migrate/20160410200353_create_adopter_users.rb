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
      t.boolean :has_yard
      t.boolean :has_kids
      t.boolean :employed
      t.boolean :retired

      t.timestamps null: false
    end
  end
end
