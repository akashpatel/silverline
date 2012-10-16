unless Rails.env.production?
  #set amazon s3 credentials in rails ENV. Same way heroku does it
  ENV['S3_BUCKET_NAME'] = 'viadreams'
  ENV['AWS_ACCESS_KEY_ID'] = 'AKIAJAKMZOOLECZ6OM4Q'
  ENV['AWS_SECRET_ACCESS_KEY'] = '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'
end