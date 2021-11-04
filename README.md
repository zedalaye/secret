# Share a secret

Using RbNaCl Public Key Cryptography

## Requirements

* Ruby 3.0.2
* Unzip or git clone and run `bundle install`

## Preparation

* Run `$ bin/generate`
* Send `my.pub` to the other party
* Save the received `my.pub` from other party into `your.pub`

## Encode a secret

* Run `$ bin/encode <secret>`
* Send `secret` to the other party

## Decode a secret

* Save the received `secret` file from other party
* Run `$ bin/decode`

Et voilà.
