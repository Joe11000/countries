class EditTypeOfUserLocation < ActiveRecord::Migration
  def change
    remove_column :users, :locationX, :string
    remove_column :users, :locationY, :string

    add_column :users, :locationX, :decimal
    add_column :users, :locationY, :decimal
  end
end
