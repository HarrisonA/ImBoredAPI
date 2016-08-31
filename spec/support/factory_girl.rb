# This is provided by FactoryGirl, it gives us a nice sugar to use in our test.
#
# So instead of the tedious FactoryGirl.create(....)
# we get to use create(....).

RSpec.configure do |config|
  config.include FactoryGirl::Syntax::Methods
end
