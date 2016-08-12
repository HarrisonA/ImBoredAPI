# Configure Rails for JSON API serialization (of data that’s sent FROM Rails to Ember)

# Create an initializer at config/initializers/json_api.rb with the following code:

require 'active_model_serializers/register_jsonapi_renderer'

ActiveModelSerializers.config.adapter = :json_api

# The above code serializes data that is sent from RAILS to the front end (Ember) in the format:

# {
#   "data": [
#     {
#       "id": "1",
#       "type": "posts",
#       "attributes": {
#       "title": "First Post",
#       "body": "This is a great post."
#         },
#       "relationships": {
#         "comments": {
#         "data": [
#         {
#           "id": "1",
#           "type": "comments"
#         }
#           ]
#         }
#       }
#     },
# .
# .
# .
