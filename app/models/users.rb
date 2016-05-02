require 'dm-validations'

class User
  include DataMapper::Resource

  property :id, Serial
  property :email, String, :required => true, :unique => true,
    :format   => :email_address,
    :messages => {
      :presence  => "We'll need your email address to keep you updated",
      :is_unique => "You've already signed up! Good work.",
      :format    => "Eek, this doesn't look correct, check the format!"
    }
end
