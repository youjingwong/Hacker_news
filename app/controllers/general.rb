configure do	
	enable :sessions
end

helpers do
	def login?
	  !!session[:username]
	end

	def username
		session[:username]
	end
end

get '/' do
  if login?
  	@username = session[:username]
  end
  @posts = Post.last(30)
  erb :home
end

get '/news' do
  if login?
  	@username = session[:username]
  end
  @posts = Post.last(30)
  erb :home
end
