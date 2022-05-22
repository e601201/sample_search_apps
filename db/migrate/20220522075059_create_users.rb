class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name, default: "名無し"
      t.text :content, default: "説明なし" 
      t.integer :age, default: 20
      t.integer :sex, default: 0

      t.timestamps
    end
  end
end
