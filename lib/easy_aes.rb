require 'easy_aes/version'

require 'openssl'
require 'base64'
require 'yaml'

class EasyAES

  def self.generate_secret
    cipher = OpenSSL::Cipher::Cipher.new 'aes-256-cbc'
    serialize [cipher.random_key, cipher.random_iv]
  end

  def self.serialize data
    Base64.encode64 data.to_yaml
  end

  def self.deserialize data
    YAML.load Base64.decode64(data)
  end

  def self.encrypt data, secret
    # create the cipher for encrypting
    cipher = OpenSSL::Cipher::Cipher.new 'aes-256-cbc'
    cipher.encrypt

    # load secret into the cipher
    secret = deserialize secret
    cipher.key = secret.first
    cipher.iv = secret.last

    # encrypt the message
    encrypted = cipher.update data
    encrypted << cipher.final

    serialize encrypted
  end

  def self.decrypt data, secret
    # create the cipher for encrypting
    cipher = OpenSSL::Cipher::Cipher.new 'aes-256-cbc'
    cipher.decrypt

    # load secret into the cipher
    secret = deserialize secret
    cipher.key = secret.first
    cipher.iv = secret.last

    # decrypt the message
    data = deserialize data
    decrypted = cipher.update data
    decrypted << cipher.final

    decrypted
  end

end
