class Book < ActiveRecord::Base
  belongs_to :author
  has_one :book_info
  accepts_nested_attributes_for :book_info
  validates_presence_of :author
end
