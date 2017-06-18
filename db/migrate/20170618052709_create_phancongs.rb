class CreatePhancongs < ActiveRecord::Migration[5.1]
  def change
    create_table :phancongs do |t|
      t.string :thoigian
    end
  end
end
