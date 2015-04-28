class Article < ActiveRecord::Base
  has_many :comments,  dependent: :destroy
  has_attached_file :picture, :styles => { :medium => "300x300>", :thumb => "100x100>"}
  validates :title, presence: true,
                    length: { minimum: 5 }
  validates_attachment_content_type :picture, :content_type => /\Aimage\/.*\Z/ 
  validates_attachment_file_name :picture, :matches => [/gif\Z/, /png\Z/, /jpe?g\Z/] 
  validates_with AttachmentSizeValidator, :attributes => :picture, :less_than => 1.megabytes
end