# == Schema Information
#
# Table name: goals
#
#  id         :integer          not null, primary key
#  comment    :text             not null
#  user_id    :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Goal < ApplicationRecord
    belongs_to :user,
        foreign_key: :user_id,
        class_name: :User
end
