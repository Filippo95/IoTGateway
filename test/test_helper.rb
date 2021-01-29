ENV['RAILS_ENV'] ||= 'test'
require_relative '../config/environment'
require 'rails/test_help'

class ActiveSupport::TestCase
  # Run tests in parallel with specified workers
  parallelize(workers: :number_of_processors, with: :threads)

  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  # Add more helper methods to be used by all tests here...
  #def sign_in_as(user)
    #post users_sign_in_url, params: {session: {email: user.email,password: user.password}}
  #end
  include Devise::Test::IntegrationHelpers
  include Warden::Test::Helpers 
  def log_in (user)
  	if integration_test?
  		login_as(user,:scope=>:user)
  	else
  		sign_in(user)
  	end
  end
end
