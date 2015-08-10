# == Schema Information
#
# Table name: users
#
#  id                           :integer          not null, primary key
#  email                        :string(100)      not null
#  password_digest              :string(128)      not null
#  created_at                   :datetime         not null
#  updated_at                   :datetime         not null
#  temp_access_token            :string(128)
#  temp_access_token_expires_at :datetime
#

class User < ActiveRecord::Base
  has_secure_password

  #Validations
  validates :email, :presence => true, :length => {:maximum => 100, :allow_blank => true },
                    :format => {:with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, :allow_blank => true },
                    :uniqueness => {:case_sensitive => false, :allow_blank => true}

  validates :password, :length => {:in => (8..40), :allow_blank => true }                  

  #Callbacks
  before_create :set_temp_access

  #TODO 1. [priority:high] Add mailer 

  private
  def set_temp_access
    self.temp_access_token            = SecureRandom.uuid.gsub("-", "")
    self.temp_access_token_expires_at = Time.zone.now + 6.hours
  end

end
