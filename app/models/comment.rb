# == Schema Information
#
# Table name: comments
#
#  id         :bigint           not null, primary key
#  body       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  author_id  :integer
#  photo_id   :integer
#
class Comment < ApplicationRecord

  validates(:commenter, { :presence => true })

## Direct associations

# Comment#commenter: returns a row from the users table associated to this comment by the author_id column
  belongs_to :photo, required: true, class_name: "Photo", foreign_key: "photo_id", counter_cache: true

  # Comment#photo: returns a row from the photos table associated to this comment by the photo_id column
  belongs_to :commenter, required: true, class_name: "User", foreign_key: "author_id"


end
