class Doctor < ActiveRecord::Base
  has_many :interns
  has_many :consultations
  has_many :patients, through: :consultations

  ## VALIDATIONS

#1 PRESENCE
#I want to make sure that first_name is mandatory
  validates :first_name, :last_name, presence: true

#2 UNIQUENESS validation
# last_name must be uniq
  validates :last_name, uniqueness: true

# I want the combination of first_name and last_name to
#be unique

  validates :first_name, uniqueness: { scope: :last_name }
  # validates :last_name, uniqueness: { scope: :first_name }

#3 LENGTH validation
# first_name must have at least 4 carac.
  validates :first_name, length: { minimum: 4 }

#4 FORMAT validation
# email should be written correctly

  validates :email, format: { with: /\A.*@.*\.com\z/ }

end

# I can ask my DB if the record can be saved:

# doc.valid? -> true or false

# I can find out why this record is not being saved

# doc.errors
# doc.errors.messages
