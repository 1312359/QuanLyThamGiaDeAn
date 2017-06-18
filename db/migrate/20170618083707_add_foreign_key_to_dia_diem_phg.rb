class AddForeignKeyToDiaDiemPhg < ActiveRecord::Migration[5.1]
  def change
    add_reference :diadiem_phgs, :phongban, foreign_key: true, index: true
  end
end
