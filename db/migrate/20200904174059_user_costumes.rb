class UserCostumes < ActiveRecord::Migration[6.0]
  def change
    create_table :user_costumes do |t|
      t.string :user_id
      t.string :costume_id
    end
  end
end
