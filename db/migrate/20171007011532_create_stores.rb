class CreateStores < ActiveRecord::Migration[5.1]
  def change
    create_table :stores do |t|
      #store為model所對應到的資料表名稱為stores
      t.string :name
      t.string :description
      t.string :phone
      t.string :address

      t.timestamps
    end
  end
end
