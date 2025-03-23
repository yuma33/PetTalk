class Board < ApplicationRecord
  validates :title, presence: true, length: { maximum: 255 }
  validates :body, presence: true, length: { maximum: 65_535 }

  belongs_to :user
  has_many :comments
  has_many :bookmarks

  def self.ransackable_associations(auth_object = nil)
    ["user"]
  end

  def self.ransackable_attributes(auth_object = nil)
    ["body", "created_at", "id", "title", "updated_at", "user_id"]
  end

  mount_uploader :board_image, BoardImageUploader

end
