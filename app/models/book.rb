class Book < ActiveRecord::Base
  VALID_MONTHS = %w(January February March April May June July August September October November December).freeze

  validates :title, :author, presence: true, length: { maximum: 100 }
  validates :month_finished, presence: true, inclusion: { in: VALID_MONTHS }
  validates :status, presence: true

  def initialize(attributes = {})
    super
    @status = 'todo'
  end
end
