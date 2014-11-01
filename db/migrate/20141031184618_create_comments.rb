class CreateComments < ActiveRecord::Migration
  def change
  	create_table :comments do |t|
  		t.integer :user_id, null: false
  		t.integer :post_id, null: false
  		t.text :body, null: false
  		t.integer :comment_id

  		t.timestamps
  	end
  end
end
