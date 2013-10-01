class Company < ActiveRecord::Base
  validates :email,
            :presence =>{:message => "email needed"} ,
            :uniqueness => {:message => "already have an account? "},
            :confirmation => {:message => "must be matched!"} ,
            :format => {:with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/ }
  validates :company_name,:email,:location ,:password_confirmation,:password , :presence => true
  validates :email_confirmation , :presence => true
  validates :password, :confirmation => true
end
