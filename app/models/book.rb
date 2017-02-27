class Book < ActiveRecord::Base
  validates :title, :author, presence: true, length: { maximum: 100 }
  validates :status, presence: true, inclusion: { in: %w(todo up-next done) }

  def initialize(attributes = {})
    super
    @status = 'todo'
  end
end
