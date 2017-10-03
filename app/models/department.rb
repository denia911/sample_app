class Department < ApplicationRecord
	has_many :associates, dependent: :destroy
	validates :name, presence: true,
                    length: { minimum: 5 }
end
