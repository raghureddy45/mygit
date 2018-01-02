#!/opt/chefdk/embedded/bin/ruby

require 'os'
require 'json'
require 'fileutils'
require 'colorize'
require 'pry'

require_relative 'json_depths'

file_path = if OS.mac?
              '/etc/wag-info.json'
            else
              'C:/chef/wag-waginfo.json'
            end

continue = true

# file = File.read(file_path)
# waginfo = JSON.parse(file)

while continue
    print 'Enter key to get the value: '
    key = gets.chomp
    input_size = key.split(' ').length
    if key == 'done'
      puts 'you said done so its Done!!!'
      continue = false
    else
        file = File.read(file_path)
        waginfo = JSON.parse(file)

      if input_size == 1
        waginfo = depth_1(waginfo, key, file_path)
      elsif input_size == 2
        waginfo = depth_2(waginfo, key, file_path)
      elsif input_size == 3
        waginfo = depth_3(waginfo, key, file_path)
      elsif input_size == 4
        waginfo = depth_4(waginfo, key, file_path)
      elsif input_size == 5
        waginfo = depth_5(waginfo, key, file_path)
    elsif input_size == 6
        waginfo = depth_6(waginfo, key, file_path)
      break
    end
  end
end
