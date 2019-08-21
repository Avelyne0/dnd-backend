class CreateCharacters < ActiveRecord::Migration[5.2]
  def change
    create_table :characters do |t|
      t.string :name
      t.integer :age
      t.string :eyes
      t.string :height
      t.string :skin
      t.string :weight
      t.string :alignment
      t.string :background
      t.text :background_feature
      t.text :bonds
      t.string :deity
      t.text :flaws
      t.text :ideals
      t.text :personality_traits
      t.string :class
      t.string :gender
      t.string :race
      t.integer :STR
      t.integer :DEX
      t.integer :CON
      t.integer :INT
      t.integer :WIS
      t.integer :CHA
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
