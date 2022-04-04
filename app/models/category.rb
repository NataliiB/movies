class Category < ApplicationRecord

  has_many_attached :images, dependent: :destroy
  has_many :films, dependent: :destroy
  validates :title, presence: true
  validates :description,  presence: true, length: { minimum: 50, maximum: 900 }
  validates :images, attached: true, content_type: [:png, :jpg, :jpeg],
            size: { less_than: 2.megabytes , message: 'must be less than 2MB in size' }
  # validates :images, presence: true, blob: { content_type: ['image/png', 'image/jpg', 'image/jpeg'],
  #                                            size_range: 1..(5.megabytes) }
  enum title: {
    action: 0,
    adventure: 1,
    comedy: 2,
    'crime and gungster': 3,
    drama: 4,
    historical: 5,
    science: 6,
    musicals: 7,
    horror: 8,
    western: 9
   }
end
