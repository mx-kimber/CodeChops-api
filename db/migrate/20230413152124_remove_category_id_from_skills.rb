class RemoveCategoryIdFromSkills < ActiveRecord::Migration[7.0]
  def change
    remove_column :skills, :category_id
  end
end
