class AddForeignKeyToDeAn < ActiveRecord::Migration[5.1]
  def change
    add_reference :deans, :phongban, foreign_key: true, index: true
  end
end
