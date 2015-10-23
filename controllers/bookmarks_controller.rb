get '/bookmarks' do
#load bookmarks from the database
#to get the data we have to go to the bookmarks model
  @bookmarks = Bookmark.all
  #now pass it to a view
  #if a layout is present, pass to it (layout should have a yield to the view anyway)
  erb :'bookmarks/index'
end

get '/bookmarks/new' do
  @bookmark = Bookmark.new
  erb :'bookmarks/new'
end

get '/bookmarks/:id/edit' do
  @bookmark = Bookmark.find(params[:id])
  erb :'bookmarks/edit'
end

post '/bookmarks/:id' do
  @bookmark = Bookmark.find(params[:id])
  @bookmark.update_attributes(params[:bookmark])
  redirect to('/bookmarks')
end

post '/bookmarks' do
  @bookmark = Bookmark.new(params[:bookmark])
  @bookmark.save
  redirect to ('/bookmarks')
end

post '/bookmarks/:id/delete' do
  Bookmark.find(params[:id]).destroy
  redirect to ('/bookmarks')
end