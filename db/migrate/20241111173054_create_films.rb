# frozen_string_literal: true

class CreateFilms < ActiveRecord::Migration[7.2]
  def change
    create_table :films do |t|
      t.string :name
      t.text :description
      t.string :trailer
      t.date :release_date
      t.integer :duration
      t.string :country
      t.text :tags
      t.integer :age

      t.timestamps
    end
  end
end
