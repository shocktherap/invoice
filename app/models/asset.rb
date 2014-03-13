# == Schema Information
#
# Table name: assets
#
#  id                :integer          not null, primary key
#  owner_type        :string(255)
#  owner_id          :integer
#  file_file_name    :string(255)
#  file_content_type :string(255)
#  file_file_size    :integer
#  file_updated_at   :datetime
#  type              :string(255)
#

class Asset < ActiveRecord::Base
  has_attached_file :file

end
