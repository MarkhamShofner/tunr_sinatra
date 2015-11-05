require 'sinatra'
require 'sinatra/reloader'
require 'active_record'
require 'pry'

# Load the file to connect to the DB
require_relative 'db/connection.rb'

# Load specific routes / controllers
# [YOUR CODE HERE!]

# Load models
require_relative 'models/artist'
require_relative 'models/song'
require_relative 'controllers/artists_controller.rb'

####################
#  General routes  #
####################
# [MORE OF YOUR CODE HERE!]
get "/" do
  erb :home
end

get "/songs" do
  @songs = Song.all
  erb :songs
end

# get "/:paramsTest" do
#   "#{params[:paramsTest]} PARAMS hello ww"
# end
