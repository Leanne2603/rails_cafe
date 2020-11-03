class Menu < ApplicationRecord
    has_many :menu_menu_items, dependent: :destroy
    has_many :menu_items, through: :menu_menu_items
end
