get '/' do
  # Look in app/views/index.erb
  erb :index
end

get '/categories' do
  @categories = Category.all
  erb :categories
end

get '/categories/:id' do
  @category = Category.find(params[:id])
  erb :posts
end

get '/post/:id' do
  @post = Post.find(params[:id])
  erb :post_details
end

get '/create_post' do
  erb :create_listing
end

get '/complete/:post_id' do
  @post = Post.find(params[:post_id])
  erb :complete
end

post '/post/completion' do
  post = Post.create(params[:listing]) 
  redirect to "complete/#{post.id}"
end

post '/update/:post_id' do
  updated_post = Post.find(params[:post_id])
  updated_post.update_attributes(params[:listing]) 
  redirect to 'post/<%= updated_post.id %>'
end

post 'delete/:post_id' do
  deleted_post = Post.find(params[:post_id])
  deleted_post.destroy
end

