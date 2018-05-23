# == Schema Information
#
# Table name: actors
#
#  id          :integer          not null, primary key
#  name        :string(100)
#  bio         :text
#  birth_date  :date
#  birth_place :string(100)
#  image_url   :string
#  alive       :boolean
#  death_date  :date
#  death_place :string(100)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Actor < ActiveRecord::Base



end
