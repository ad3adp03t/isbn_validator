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
load "./local_env.rb" 
def push_b()
  Aws::S3::Client.new(
  access_key_id: ENV['AWS_ACCESS_KEY_ID'],
  secret_access_key: ENV['AWS_SECRET_ACCESS_KEY'],
  region: ENV['AWS_REGION']
   )
  file   = 'isbn.csv'
  write_to_file = File.open(file,"a")
  write_to_file << 
  bucket = 'mined-minds-isbn'
  
  s3 = Aws::S3::Resource.new(region: 'us-east-2')
  obj = s3.bucket(bucket).object(file)
 
# # string data
obj.put(body: '"some code here to show something being added to the bucket."+ "\n"')
 
 #    obj.puts(body:'Hello World!')
   
  end
  push_b()