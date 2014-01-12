CarrierWave.configure do |config|
  config.fog_credentials = {
      :provider               => 'AWS',                        # required
      :aws_access_key_id      => ENV['ACCESS_KEY_ID'],                        # required
      :aws_secret_access_key  => ENV['SECRET_ACCESS_KEY'],                        # required

  }
  config.fog_directory  = 'earth_source'                     # required
  config.fog_public     = false                                   # optional, defaults to true
  config.fog_attributes = {'Cache-Control'=>'max-age=315576000'}  # optional, defaults to {}
end