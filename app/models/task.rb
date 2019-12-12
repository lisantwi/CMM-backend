class Task < ApplicationRecord
  has_many :task_entries
  belongs_to :project
  belongs_to :user

end
