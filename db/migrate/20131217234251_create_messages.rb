class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
    	t.belongs_to :sent
    	t.belongs_to :received
    	t.string     :body
    	t.string     :subject

      t.timestamps
    end
  end
end
