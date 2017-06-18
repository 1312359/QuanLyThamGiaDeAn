class AddForeignKeyToPhanCong < ActiveRecord::Migration[5.1]
  def change
    add_reference :phancongs, :nhanvien, foreign_key: true, index: true
    add_reference :phancongs, :dean, foreign_key: true, index: true
  end
end
