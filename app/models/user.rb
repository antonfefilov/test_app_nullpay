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
  mount_uploader :avatar, AvatarUploader
end
