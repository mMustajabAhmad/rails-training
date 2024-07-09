#----------VALIDATES_WITH---------------
# class GoodnessValidator < ActiveModel::Validator
#     def validate(record)
#         if record.name=='Evil'
#             record.errors.add 'This person is Evil'
#         end
#     end
# end



# class GoodnessValidator
#     def initialize(user)
#         @user = user
#     end
    
#     def validate 
# end


class User < ApplicationRecord
    #validates :name, presence: true

    #validates :email, confirmation: true
    #validates :email_confirmation, presence: true, if: :email_changed?
    #validates :email, confirmation: {case_sensitive: false}
    #validates :email_confirmation, presence: true

    #validates :terms_of_services, acceptance: true
    #validates :hello_world, acceptance: true

    #validates :terms_of_service, acceptance: { accept: 'yes' }
    #validates :eula, acceptance: { accept: ['TRUE', 'accepted'] }
    
    #validates :count, comparison: { greater_than: :num }

    #validates :name, format: { with:  /\A[a-zA-Z]+\z/ }
    #validates :name, format: { with:  /\A[a-zA-Z]+\z/ , message: 'Only accepts letters' }

    #validates :name, inclusion: { in: %w(abc deg ijk) }  # "Name is not included in the list"
    #validates :name, inclusion: { in: %w(abc deg ijk), message: '%{value} should be in-list'}  #"Name ABC should be in-list"

    #validates :name, length: {in: 3..8}   #"Name is too short (minimum is 3 characters)"

    #validates :num, numericality: true   #also accpets numbers as string '1'
    #validates :num, numericality: {only_integer: true}  # also accepts integer in string
    #validates :num, numericality: { greater_than: 10}

    #validates :name, absence: true   # Use r.new(name: 'Ali') # "Name must be blank"


    #validates :email, uniqueness: true  # User Exists? (0.5ms)  SELECT 1 AS one FROM "users" WHERE "users"."email" = $1 LIMIT $2  [["email", "muji@gmail.com"], ["LIMIT", 1]]
    
    # validates_each :name, :address do |record, attr, value|
    #     record.errors.add(attr, 'must start with upper case') if /\A[[:lower:]]/.match?(value) 
    # end
    
    #validates_with GoodnessValidator

    # validate do |user|
    #     GoodnessValidator.new(user).validate
    # end

    ##------------Validation Options-----------##
    #validates :name, inclusion: { in: %w(abc deg ijk), message: '%{value} should be in-list'}, allow_nil: true  #"Name ABC should be in-list"
    
    #validates :name, inclusion: { in: %w(abc deg ijk), message: '%{value} should be in-list'}, allow_blank: true  #"Name ABC should be in-list"
    
    #validates :email, uniqueness: true, on: :create  #transcaction got ROLL BACK as existing email was provided @ User.create

    #validates :name, presence: {strict: true}

    # validates :name, presence: true, if: :is_valid_email?

    # def is_valid_email?
    #     email == 'muji@gmail.com'
    # end


end



#-----#-------#---------#-------#

# User.create (name: 'Ahmad')
# User.create (name: 'Ahmad').valid?  #true
# User.create (name: nil).valid?  #false
# u = User.new (name: 'Ali')
# u.new_record?  #true
# u.valid?
# u.errors.size
# u.errors.objects.first.full_message
# u.errors.objects.second.full_message
# User.create.errors[:name].any?
# u.save
# u = User.new(name: 'Asad', terms_of_service: true).valid?
# User.new(name: 'Asad', terms_of_service: 'yes', eula: false).valid?  #false
# User.new(name: 'Asad', terms_of_service: 'yes', eula: 'True').valid?  #false
# User.new(name: 'Asad', terms_of_service: 'yes', eula: 'TRUE').valid?  #true
# just email confirmation # User.new(name: 'Asad').valid?  #true
# case sensitive--false # u = User.new(name: 'Asad', email:'asd@gmail.com', email_confirmation: 'ASD@gmail.com')  # true

# presence: true, if: :email_changed?
# email = 'asd@gmail.com'
# User.new(name: 'Asad', email: email, email_confirmation: email).valid? #true


# user = User.new(count: 1, num: 2).valid?  //false
# user = User.new(count: 2, num: 1).valid?  //true


# User.new(name: '123')  //  "Name Only accepts letters"
# user = User.new(name: 'JZ') //true

# allow_nil 
# u = User.new(name: '') #false
# u =  u = User.new(name: nil) #true