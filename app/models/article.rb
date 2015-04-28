class Article < ActiveRecord::Base
  has_many :comments,  dependent: :destroy
  has_attached_file :picture, :styles => { :medium => "300x300>", :thumb => "100x100>"}
  validates :title, presence: true,
                    length: { minimum: 5 }
  validates_attachment_content_type :picture, :content_type => /\Aimage\/.*\Z/
end