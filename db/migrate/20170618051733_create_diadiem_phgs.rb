class CreateDiadiemPhgs < ActiveRecord::Migration[5.1]
  def change
    create_table :diadiem_phgs do |t|
      t.string :diadiem
    end
  end
end
