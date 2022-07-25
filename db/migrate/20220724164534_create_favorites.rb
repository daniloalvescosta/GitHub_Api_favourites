# frozen_string_literal: true

class CreateFavorites < ActiveRecord::Migration[7.0]
  def change
    create_table :favorites do |t|
      t.string :name
      t.string :owner
      t.string :created_at
      t.string :updated_at
      t.integer :forks
      t.integer :watchers
      t.integer :stars
      t.text :description
      t.text :clone_url
      t.text :homepage
    end
  end
end
