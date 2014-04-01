class CreateEvent < ActiveRecord::Migration
  def change
    create_table :events do |t|
    	t.string :title
    	t.string :address
    	t.string :activity
    	t.text :description
    	t.datetime :datetime
    	t.references :user
    end
  end
end
