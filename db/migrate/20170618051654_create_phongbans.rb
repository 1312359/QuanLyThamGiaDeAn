class CreatePhongbans < ActiveRecord::Migration[5.1]
  def change
    create_table :phongbans do |t|
      t.string :tenpb
      t.string :ngaybd
      t.integer :trphg
    end
  end
end
