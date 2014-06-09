require "easy_aes/version"

require 'openssl'
require 'base64'

class EasyAES
    
    def initialize mode, keyiv=nil
        @cipher = OpenSSL::Cipher::AES256.new :CBC
        @cipher.send mode
        if keyiv
            @key = keyiv[0].unpack('m')[0]
            @iv = keyiv[1].unpack('m')[0]
            @cipher.key = @key
            @cipher.iv = @iv
            else
            @key = @cipher.random_key
            @iv = @cipher.random_iv
        end
    end
    
    def encrypt data
        [@cipher.update(data) + @cipher.final].pack 'm'
    end
    
    def decrypt data
        @cipher.update(data.unpack('m')[0]) + @cipher.final
    end
    
    def keyiv
        [@key, @iv].map { |x| [x].pack 'm' }
    end
    
end
