class Costumes < ActiveRecord::Migration[6.0]
  def change
    create_table :costumes do |t|
      t.string :title
      t.string :url
      t.text :description
    end
  end
end