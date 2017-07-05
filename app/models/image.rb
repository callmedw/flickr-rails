class Image < ActiveRecord::Base
  belongs_to :user
  validates :title, :description, :location, presence: true
  validates :title, uniqueness: {case_sensitive: false}
end
