class AddForeignKeyToPhongBan < ActiveRecord::Migration[5.1]
  def change
    add_foreign_key :phongbans, :nhanviens, column: :trphg, primary_key: :id
  end
end