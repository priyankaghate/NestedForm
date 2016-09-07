class Author < ActiveRecord::Base
	has_many :books, dependent: :destroy
	accepts_nested_attributes_for :books  , allow_destroy: true#, reject_if: proc{  |attributes| attributes['title'].blank? }
	validates_presence_of :books, strict: true
end
