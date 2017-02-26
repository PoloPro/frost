class Game < ActiveRecord::Base
  def initialize(attributes={})
    super
    @status ||= 'todo'
  end
end
