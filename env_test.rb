# /env_test.rb
require "dotenv/load"

pp ENV.fetch("CLOUDINARY_KEY")
