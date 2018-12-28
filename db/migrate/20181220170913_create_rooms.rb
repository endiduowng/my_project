class CreateRooms < ActiveRecord::Migration[5.1]
  def change
    create_table :rooms do |t|
      t.text :url
      t.string :title
      t.string :category
      t.string :province
      t.string :district
      t.string :ward
      t.string :street
      t.string :project_name
      t.string :project_investor
      t.string :project_size
      t.string :address
      t.float :area
      t.float :price
      t.integer :price_unit
      t.text :description
      t.float :front
      t.float :entrance
      t.string :house_direction
      t.integer :number_floor
      t.integer :number_toilet
      t.integer :number_bedroom
      t.text :interior
      t.string :seller_name
      t.string :seller_address
      t.string :seller_phone
      t.string :seller_mobile_phone
      t.string :seller_email
      t.string :media
      t.string :post_type
      t.string :post_code
      t.date :begin_date
      t.date :expired_date
      t.integer :delete_status

      t.timestamps
    end
  end
end
