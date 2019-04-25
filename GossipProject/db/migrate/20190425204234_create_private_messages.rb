class CreatePrivateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :private_messages do |t|
    	t.text :content
    	t.belong_to :user, index: true
      t.timestamps
    end
  end
end
