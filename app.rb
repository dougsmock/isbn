require 'sinatra'
require 'csv'
require_relative 'isbn_numbers.rb'
require 'aws-sdk-s3'
load 'local_env.rb' if File.exist?('local_env.rb')


enable :sessions

get '/' do
  csv_table = CSV.open("output_csv.csv", :headers => true).read
  erb :isbn, locals:{csv_table: csv_table}
end

post '/isbn_test' do
  puts "#{params} is params in post '/isbn_test' do"
  session[:isbn] = params[:isbn]
  # session[:isbn_arr] = params[:isbn_arr]
  # session[:mod] = params[:mod]
  # session[:check_dig] = params[:check_dig]
  # session[:bad_char] = params[:bad_char]
  # session[:isbn_sum] = params[:isbn_sum]
  # session[:results] = params[:results]
  # isbn_number = params[:isbn]
  # "Whatever #{isbn_number}"
  # results = main(session[:isbn])
  # p "These are the results #{results}"


  CSV.open("output_csv.csv", "a+") do |csv|
    csv << ["#{session[:isbn]}", main(session[:isbn])]
  end

  s3 = Aws::S3::Resource.new(region: 'us-east-1')
  obj = s3.bucket("isbndougsmock1").object("output_csv.csv")
  File.open('output_csv.csv', 'rb') do |file|
   obj.put(body: file)
  end


  #
  # # Open a CSV file, and then read it into a CSV::Table object for data manipulation
  # @csv_table = CSV.open("input_isbn_file.csv", :headers => true).read
  # puts csv_table
  #
  # valid = CSV.generate do |csv|
  #   csv << ["ISBN", "VALIDITY"]
  #   csv << ["#{isbns}", "#{valid}"]
  #   end
p "Updating csv"
  # erb :isbn_second, locals:{isbns: isbns, isbn_arr: isbn_arr, mod: mod, check_dig: check_dig, bad_char: bad_char, isbn_sum: isbn_sum, results: results, csv_table: @csv_table}
  #
  redirect '/'

end



  ##########################

#
#   isbns = params[:isbns]
# 	isbns1 = []
# 	isbns1 << isbns.gsub("\r", "").gsub("\n", "").downcase
# 	for isbn in isbns1
# 		puts "ISBN(#{isbn}) is valid? #{isValid(isbn)}"
# 	end
# 	valid = "#{isValid(isbn)}"
# 	isbns2 = "#{isbns1}"
# 		p "params are book isbn 10 post #{params}"
# 		p "params address form is #{params[:isbns]}"
# 			p "#{isbns}"
# 			p "#{valid}"
#
#
#
#   erb :isbn_second, locals:{isbns1: isbns1, isbns: isbns, valid: valid, isbns2: isbns, csv_table: @csv_table}
#
#
# end

############################################

# require 'aws-sdk-s3'
#
# enable :sessions
#
# load "./local_env.rb" if File.exists?("./local_env.rb")
#
# s3 = Aws::S3::Client.new(profile: 'twfdisturbed', region: 'us-east-1')

# get '/' do
# 	erb :index
#
# end
#
# get '/index' do
# 		erb :index
# end

# post '/index' do
# 	isbns = params[:isbns].to_s
# 	isbns1 = params[:isbns]
# 	erb :index, locals:{isbns: isbns, isbns1: isbns1}

# 	p "params are index post #{params}"
# 	redirect '/book_isbn_10?isbns=' + isbns
# end

# post '/book_isbn_10' do
# 	isbns = params[:isbns]
# 	isbns1 = []
# 	isbns1 << isbns.gsub("\r", "").gsub("\n", "").downcase
# 	for isbn in isbns1
# 		puts "ISBN(#{isbn}) is valid? #{isValid(isbn)}"
# 	end
# 	valid = "#{isValid(isbn)}"
# 	isbns2 = "#{isbns1}"
# 		p "params are book isbn 10 post #{params}"
# 		p "params address form is #{params[:isbns]}"
#
# 			p "#{isbns}"
# 			p "#{valid}"
# 			CSV.open("public/csv/output_isbn_file1.csv", "a+") do |csv|
# 			 csv << ["#{isbns}", "#{valid}"]
# 				end
#
# 		# Open a CSV file, and then read it into a CSV::Table object for data manipulation
# 		@csv_table = CSV.open("public/csv/output_isbn_file1.csv", :headers => true).read
#


#
# 		s3 = Aws::S3::Resource.new(region: 'us-east-1')
# 		obj = s3.bucket("isbndm").object("output_isbn_file1.csv")
# 		File.open('public/csv/output_isbn_file1.csv', 'a+') do |file|
# 		obj.put(body: file)
# end

		# s3.put_object(bucket: 'isbndm', body: valid, key: "output_isbn_file1.csv")

		# s3.put_object(bucket: 'isbndm', body: output_isbn_file1.csv, key: "output_isbn_file1.csv")


# end

















# data = Array.new
# CSV.foreach("input_isbn_file.csv", { encoding: "UTF-8", headers: true, header_converters: :symbol, converters: :all }) do |row|
#   data << row.to_hash
# end
# data
#
# @csv_table = CSV.open("input_isbn_file.csv", :headers => true).read

# redirect '/xxxxyyyy'

# get '/xxxxyyyy' do
#
# end
