require 'sinatra'

get '/' do
  @posts = []
  read_file = File.open("data.txt", "r")
  read_file.each {|line|
    @posts << line
  }
  erb :index
end

post '/create' do
  point = params[:point].to_i
  comment= params[:comment]
  get_point(point, comment)
  redirect '/'
end

def get_point(point, comment)
  post = "ポイント：#{point}　コメント：#{comment}"
  file = File.open("data.txt", "a")
  file.puts(post)
  file.close
end

def show_result
  puts "これまでの結果"
  read_file = File.open("data.txt", "r")
  read_file.each {|line|
    print line
  }
  read_file.close
end