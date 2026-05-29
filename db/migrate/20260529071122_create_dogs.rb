class CreateDogs < ActiveRecord::Migration[7.1]
  def change
    create_table :dogs do |t|
      t.string :name, null: false       # 名前
      t.integer :age, null: false       # 年齢
      t.string :dog_type, null: false   # 犬種
      t.string :gender, null: false     # 性別
      t.string :character, null: false  # 性格
      t.timestamps
    end
  end
end
