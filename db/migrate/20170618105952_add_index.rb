class AddIndex < ActiveRecord::Migration[5.1]
  def change
    add_index :nhanviens, :manql, name: "index_nhanviens_on_manql"
    add_index :nhanviens, :phg, name: "index_nhanviens_on_phg"
    add_index :phongbans, :trphg, name: "index_phongbans_on_trphg"
  end
end
