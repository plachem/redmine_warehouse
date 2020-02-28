class Product < ActiveRecord::Base
    belongs_to :issue
    validates_presence_of :name
    validates_length_of :name, :maximum => 255
    validates_uniqueness_of :name
    validates_numericality_of :price, numericality: {greater_than: 0}
    validates_numericality_of :count, numericality: {greater_than: 0}
    validates_presence_of :manufacture_date
end
