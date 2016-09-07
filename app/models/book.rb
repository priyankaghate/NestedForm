class Book < ActiveRecord::Base
  belongs_to :author
  has_one :book_info, dependent: :destroy
  accepts_nested_attributes_for :book_info, reject_if: proc { |attributes| attributes['price'].blank? }, allow_destroy: true
  validates :title, presence: true
  validates_presence_of :book_info
end
