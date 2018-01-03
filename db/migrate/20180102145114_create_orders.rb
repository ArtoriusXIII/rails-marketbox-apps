class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :address
      t.string :city
      t.string :county
      t.string :postcode
      t.string :country
      t.string :phone

      t.timestamps null: false
    end
  end
end
