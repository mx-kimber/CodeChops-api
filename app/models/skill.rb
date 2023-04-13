class Skill < ApplicationRecord
   belongs_to :category

  def category
    Category.where(id: category_id)
  end

end
