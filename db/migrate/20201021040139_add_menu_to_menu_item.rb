class AddMenuToMenuItem < ActiveRecord::Migration[6.0]
  def change
    add_reference :menu_items, :menu, foreign_key: true
  end
end