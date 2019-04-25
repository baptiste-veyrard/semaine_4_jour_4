class CreateStrolls < ActiveRecord::Migration[5.2]
  def change
    create_table :strolls do |t|
    	t.belongs_to :DogSitter, index: true
    	t.belongs_to :Dog, index: true
      t.timestamps
    end
  end
end
