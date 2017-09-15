# require 'rubygems'
# require 'csv'
# require 'aws-sdk'

# load './local_env.rb'
# Aws.use_bundled_cert!
# def push_b()
#   Aws::S3::Client.new(
#   # access_key_id: ENV['AWS_ACCESS_KEY_ID'],
#   # secret_access_key: ENV['AWS_SECRET_ACCESS_KEY'],
#   # region: ENV['AWS_REGION']
#    )
#   # file = "output_isbn.csv"
#   # bucket = 'isbncsv'
#   bucket = 'isbncvs'
#   file   = 'isbn.csv'
#   s3 = Aws::S3::Resource.new(region: 'us-east-2')
#   obj = s3.bucket(bucket).object(file)
 
# # # string data
# obj.put(body: 'some code here to show something being added to the bucket.')
 
#  #    obj.puts(body:'Hello World!')
   
#   end
#   push_b()


require 'rubygems'
require 'aws-sdk'
require 'csv'
load './local_env.rb' if File.exist?('./local_env.rb') 
def send_to_bucket(bucketlist)
  Aws::S3::Client.new(
  access_key_id: ENV['AWS_ACCESS_KEY_ID'],
  secret_access_key: ENV['AWS_SECRET_ACCESS_KEY'],
  region: ENV['AWS_REGION']
   )
  file   = 'isbn.csv'
  write_to_file = File.open(file,"a")
  write_to_file << bucketlist 
  write_to_file.close
 
  
  s3 = Aws::S3::Resource.new(region: 'us-east-2')
  bucket = 'mined-minds-isbn'
  obj = s3.bucket(bucket).object(file)
    File.open('isbn.csv', 'rb') do |file|
      obj.put(body: file)
    end  
end

def get_file()
    Aws::S3::Client.new(
        access_key_id: ENV['AWS_ACCESS_KEY_ID'],
        secret_access_key: ENV['AWS_SECRET_ACCESS_KEY'],
        region: ENV['AWS_REGION']
        )
    s3 = Aws::S3::Client.new
    csv_file_from_bucket = s3.get_object(bucket: 'mined-minds-isbn', key: 'isbn.csv')
    csv_file_read = csv_file_from_bucket.body.read

    split_csv = csv_file_read.split
    list = []
    split_csv.each do |item|
        item.gsub(/"/, '')
        list << item
    end
    p list
end

# def get_file()
#   Aws::S3::Client.new(
#   access_key_id: ENV['AWS_ACCESS_KEY_ID'],
#   secret_access_key: ENV['AWS_SECRET_ACCESS_KEY'],
#   region: ENV['AWS_REGION']
#    )
#   s3 = Aws::S3::Resource.new
#   csv_file_from_bucket = s3.get_object(bucket: 'mined-minds-isbn', key: 'isbn.csv')
#   csv_file_read = csv_file_from_bucket.body.read
#   p csv_file_read
#   split_csv = csv_file_read.split
#   list = []
#   split_csv.each do |item|
#     item.gsub(/"/, '')
#     list<< item
#   end
# end      
 