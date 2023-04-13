class Skill < ApplicationRecord
   belongs_to :category

  def category
    Category.find_by(id: category_id)
  end

end
