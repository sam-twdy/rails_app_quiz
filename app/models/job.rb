class Job < ApplicationRecord
    validates :employer_name, presence: true
    validates :job_title, presence: true
end
