require 'sinatra'
require 'csv'
require_relative 'isbn_numbers.rb'


enable :sessions

get '/' do
  erb :valid_table
end

post '/isbn' do
  puts "#{params} is params in post '/valid_table' do"
  session[:isbn] = params[:isbn]
  session[:arr] = params[:arr]
  session[:mod] = params[:mod]
  session[:check_dig] = params[:check_dig]
  session[:bad_char] = params[:bad_char]
  session[:isbn_sum] = params[:isbn_sum]
  p session


  CSV.open("output_csv.csv", "a+") do |csv|
    csv << ["#{session[:isbn]}", main(session[:isbn])]
  end

  # Open a CSV file, and then read it into a CSV::Table object for data manipulation
  csv_table = CSV.open("input_isbn_file.csv", :headers => true).read
  puts csv_table
  # data = Array.new
  # CSV.foreach("input_isbn_file.csv", { encoding: "UTF-8", headers: true, header_converters: :symbol, converters: :all }) do |row|
  #   data << row.to_hash
  # end
  # data
  #
  # @csv_table = CSV.open("input_isbn_file.csv", :headers => true).read

  # redirect '/xxxxyyyy'
end

# get '/xxxxyyyy' do
#
# end
