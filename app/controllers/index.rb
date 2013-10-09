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

post '/post/completion' do
  @new_post = Post.create(item: params[:listing][:item], 
                          price: params[:listing][:price],
                          description: params[:listing][:description],
                          email: params[:listing][:email],
                          category_id: params[:listing][:category_id]) 
  erb :complete
end
