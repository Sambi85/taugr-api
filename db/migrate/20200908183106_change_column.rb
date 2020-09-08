class ChangeColumn < ActiveRecord::Migration[6.0]
  def change
    remove_column :costumes, :description, :text
    add_column :costumes, :description, :string
  end
end
