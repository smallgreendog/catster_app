class CreateSignups < ActiveRecord::Migration
  def change
    create_table :signups do |t|
      t.string :email_address

      t.timestamps null: false
    end
  end
end
