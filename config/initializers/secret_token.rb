# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
Invoice::Application.config.secret_key_base = 'e6a566d5599e5a73dc4b9767e3ea2c8a048c009286b2ef2a24ddb56983896eef885152479021156104791fef70dbfed70503f61a137b3cb23c43bd9c9bf4c8dc'
