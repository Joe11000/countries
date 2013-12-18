class CreateCountries < ActiveRecord::Migration
  def change
    create_table :countries do |t|
      t.belongs_to :ruler
      t.string     :name
      t.string     :location

      t.timestamps
    end
  end
end
