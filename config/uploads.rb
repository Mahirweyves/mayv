CarrierWave.configure do |config|
  config.fog_credentials = {
    provider:              'AWS',
    aws_access_key_id:     ENV['AWS_ACCESS_KEY_ID'],
    aws_secret_access_key: ENV['AWS_SECRET_ACCESS_KEY'],
    Region:                ap-south-1
  }
  config.storage = :fog
  config.permissions = 0666
  config.cache_dir = "#{Rails.root}/tmp/"
  config.fog_directory  = ENV["mayvbucket"]
  config.fog_attributes = { 'cache_control' => "max-age=#{365.day.to_i}"} # optional
end  
 