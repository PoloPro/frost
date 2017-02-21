class Book < ActiveRecord::Base
  def initialize(attributes={})
    super
    @status ||= 'todo'
  end
end
