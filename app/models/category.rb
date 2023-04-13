class Category < ApplicationRecord
   has_many :skills

  def skills
    Skill.where(category_id: id)
  end
end
