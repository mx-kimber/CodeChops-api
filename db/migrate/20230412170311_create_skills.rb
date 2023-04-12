class CreateSkills < ActiveRecord::Migration[7.0]
  def change
    create_table :skills do |t|
      t.text :problem
      t.text :solution
      t.integer :category_id

      t.timestamps
    end
  end
end
