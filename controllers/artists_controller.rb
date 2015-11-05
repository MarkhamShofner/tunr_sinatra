get "/artists" do
  @artists = Artist.all
  erb :"artists/index"
end

get "/artists/new" do
  erb :"artists/new"
end

post "/artists" do
  @artists = Artist.create!(name: params[:artist_name])
  redirect "artists"
end
