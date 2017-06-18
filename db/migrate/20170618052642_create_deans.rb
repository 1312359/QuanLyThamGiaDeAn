class CreateDeans < ActiveRecord::Migration[5.1]
  def change
    create_table :deans do |t|
      t.string :ngaybd
      t.string :diadiem_da
    end
  end
end
