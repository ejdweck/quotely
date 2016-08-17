class Status < ApplicationRecord
  belongs_to :user

  validates :content, presence: true,
                      length: { minimum: 2}

  validates :user_id, presence: true

  validates :tag_list, presence: true
  acts_as_taggable


end
