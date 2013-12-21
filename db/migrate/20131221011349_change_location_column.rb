class ChangeLocationColumn < ActiveRecord::Migration
  def change
    add_column :users, :locationY, :string
    add_column :users, :locationX, :string
  end
end
