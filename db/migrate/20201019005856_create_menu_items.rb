class CreateMenuItems < ActiveRecord::Migration[6.0]
  def change
    create_table :menu_items do |t|
      t.string :item, limit: 50, null: false
      t.decimal :price, precision: 10, scale: 2, null: false
      t.numeric :quantity, null: false

      t.timestamps
    end
  end
end
