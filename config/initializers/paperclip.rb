Paperclip::Attachment.default_options[:storage] = :s3
Paperclip::Attachment.default_options[:url] = ':s3_domain_url'
Paperclip::Attachment.default_options[:path] = '/:rails_env/:class/:attachment/:id_partition/:style/:filename'
Paperclip::Attachment.default_options[:s3_credentials] = {
  bucket:             ENV['gussi-imgs'],        # \
  access_key_id:      ENV['AKIAIERVCEVHCTQHV2GQ'],     #  |- DO NOT replace this
  secret_access_key:  ENV['/+N+WbBqZT88m0sg5XWpzq+B1B/2V+0w0RjeN7AE']  # /
}
