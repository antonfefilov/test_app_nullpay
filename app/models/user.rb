# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  email      :string           not null
#  first_name :string
#  last_name  :string
#  birth_date :date
#  bio        :text
#  avatar     :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class User < ApplicationRecord
  devise :database_authenticatable, :registerable, :validatable

  mount_uploader :avatar, AvatarUploader

  def full_name
    @full_name ||= [first_name, last_name].join " "

    return email if @full_name.blank?
  end
end
