class RemoveMenuFromMenuItems < ActiveRecord::Migration[6.0]
  def change
    remove_reference :menu_items, :menu, null: false, foreign_key: true
  end
end
