# list artists
get "/artists" do
  @artists = Artist.all
  erb :"artists/index"
end

#go to the input form which will pass in the params for the creation
#of a new artist
get "/artists/new" do
  erb :"artists/new"
end

#create an artist based on the input form
post "/artists" do
  @artists = Artist.create!(name: params[:artist_name])
  redirect "artists"
end

#show an artist matching an idea
get "/artists/:id" do
  @artist = Artist.find(params[:id])
  erb(:"artists/show")
end

#edit an artist found by id
get "/artists/:id/edit" do
  @artist = Artist.find(params[:id])
  erb(:"artists/edit")
end
