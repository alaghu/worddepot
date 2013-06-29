class CreateWords < ActiveRecord::Migration
  def change
    create_table :words do |t|
      t.string :word
      t.string :partofspeech
      t.text :sentence
      t.text :meaning
      t.integer :points
      t.string :color
      t.decimal :price

      t.timestamps
    end
  end
end
