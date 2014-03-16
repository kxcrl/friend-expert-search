class CreateExperts < ActiveRecord::Migration
  def change
    create_table :experts do |t|
      t.string :name
      t.string :website
      t.string :website_short
      t.string :h1s
      t.string :h2s
      t.string :h3s
      t.timestamps
    end
  end
end
