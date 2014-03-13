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
class Picture < Asset
  belongs_to :owner, polymorphic: true

  validates :file, attachment_presence: true

  validates_attachment_content_type :file,
     :content_type => ['image/png', 'image/jpeg', 'image/jpg', 'image/gif']

end
