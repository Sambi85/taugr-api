class ChangeIdValues < ActiveRecord::Migration[6.0]
  def change
    remove_column :user_costumes, :user_id, :string
    remove_column :user_costumes, :costume_id, :string
    add_column :user_costumes, :user_id, :integer
    add_column :user_costumes, :costume_id, :integer
  end
end
