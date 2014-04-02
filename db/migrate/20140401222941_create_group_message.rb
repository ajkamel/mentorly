class CreateGroupMessage < ActiveRecord::Migration
  def change
    create_table :group_messages do |t|
    	t.string :title
    	t.text :message
    	t.string :img_url
    	t.timestamps
    	t.references :user
    	t.references :group
    end
  end
end
