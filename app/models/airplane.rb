# == Schema Information
#
# Table name: airplanes
#
#  id         :integer          not null, primary key
#  name       :text
#  rows       :integer
#  columns    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Airplane < ActiveRecord::Base
  has_many :flights
end
