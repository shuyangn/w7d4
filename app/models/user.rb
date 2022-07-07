# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  username        :string           not null
#  password_digest :string           not null
#  session_token   :string           not null
#
class User < ApplicationRecord
    has_many :goals,
        foreign_key: :user_id,
        class_name: :Goal
    
    validates :username, :password_digest, :session_token, presence: true
    validates :username, :password_digest, uniqueness: true
    validates :password, length: { minimum: 6, allow_nil: true }
    
end
