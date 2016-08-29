# EasyAes

EasyAES is a simple gem for easily using encryption and deryption with AES algorithm.

EasyAES can generate the secret with:
```
EasyAES.generate_secret
```

Data is encrypted with `EasyAES.encrypt data, secret`
and decrypted with `EasyAES.derypt data, secret`

Generated secret and encrypted data is `Base64` encoded so it can easily be stored to a file or database.

## Installation

Add this line to your application's Gemfile:

    gem 'easy_aes'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install easy_aes

## Usage

TODO: Write usage instructions here

## Contributing

1. Fork it ( https://github.com/[my-github-username]/easy_aes/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
