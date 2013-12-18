class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
    	t.belongs_to :from_id
    	t.belongs_to :to_id
    	t.string     :body
    	t.string     :subject

      t.timestamps
    end
  end
end
