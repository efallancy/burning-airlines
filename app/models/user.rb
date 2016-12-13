# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  first_name      :text
#  last_name       :text
#  username        :text
#  email           :text
#  password_digest :text
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  isadmin         :boolean          default("false")
#

class User < ActiveRecord::Base
  has_many :reservations
end
