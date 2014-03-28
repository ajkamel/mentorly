class CreateUser < ActiveRecord::Migration
  def change
    create_table :users do |t|
    	t.string "name"
    	t.string "email"
    	t.string "password_digest"
    	t.string "address"
    	t.string "picture_url"
    	t.text "bio"
    	t.date "birthdate"
    	t.string "interests"
    	t.boolean "mentor?"
    	t.boolean "admin?"
    end
  end
end
