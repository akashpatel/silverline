class Author < ActiveRecord::Base
  has_many :quotes

  has_attached_file :thumbnail,
                    :styles => {
                        :thumb => "200x200#"
                    },
                    :storage => :s3,
                    :s3_credentials => {
                        :bucket            => ENV['S3_BUCKET_NAME'],
                        :access_key_id     => ENV['AWS_ACCESS_KEY_ID'],
                        :secret_access_key => ENV['AWS_SECRET_ACCESS_KEY']
                    },
                    :path => "authors/:style/:filename",
                    :default_url => 'http://viadreams.com/assets/made_it_silhouette_bw.png'
end
