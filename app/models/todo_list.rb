class TodoList < ActiveRecord::Base
  has_many :tasks
end
