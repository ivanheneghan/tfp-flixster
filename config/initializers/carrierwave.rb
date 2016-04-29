CarrierWave.configure do |config|
  config.storage        = :aws
  config.fog_directory  = ENV["AWS_BUCKET"]                     # required
  config.aws_acl        = "public-read"

  config.fog_credentials = {
    :provider               => 'AWS',                        # required
    :aws_access_key_id      => ENV["AWS_ACCESS_KEY"],                        # required
    :aws_secret_access_key  => ENV["AWS_SECRET_KEY"]                         # required
  }  
end