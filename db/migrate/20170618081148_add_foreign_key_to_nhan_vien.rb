class AddForeignKeyToNhanVien < ActiveRecord::Migration[5.1]
  def change
    add_foreign_key :nhanviens, :phongbans, column: :phg, primary_key: :id
    add_foreign_key :nhanviens, :nhanviens, column: :manql, primary_key: :id
  end
end
