class CreatePethistories < ActiveRecord::Migration[6.0]
  def change
    create_table :pethistories do |t|
      t.integer :weight
      t.integer :height
      t.text :description
      t.references :pet, null: false, foreign_key: true

      t.timestamps
    end
  end
end
