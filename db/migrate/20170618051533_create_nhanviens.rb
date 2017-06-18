class CreateNhanviens < ActiveRecord::Migration[5.1]
  def change
    create_table :nhanviens do |t|
      t.string :honv
      t.string :tenlot
      t.string :tennv
      t.string :phai
      t.string :luong
      t.string :diachi
      t.string :ngaysinh
      t.integer :manql
      t.integer :phg
    end
  end
end