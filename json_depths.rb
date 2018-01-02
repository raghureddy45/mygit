def depth_1(waginfo, key, file_path)
  puts 'In depth_1..'
  k = key.split(' ')[0]
  # v = key.split(' ')[1]
  # x = key.split(' ')[2]
  # puts "Please enter a proper key from the given list \n\n#{waginfo.keys}\n".red unless waginfo.key?(key)
  if waginfo[k].kind_of? Hash
    puts "availble options are.!!! select a key from the list #{waginfo[k].keys}: ".blue # unless waginfo.key?(key)
  elsif waginfo[k].kind_of? NilClass
    puts "you enterd wrong key.!!! please select a key from given list #{waginfo.keys}: ".red
    # continue = false
  else
    puts "key value is  >>> #{waginfo[k]} <<< do you want to replace [y/n]: ".yellow
    case gets.strip
    when 'Y', 'y', 'yes'
      puts 'what do want to repalce it with'
      waginfo[k] = gets.chomp
      f = File.open(file_path, 'w')
      f.write(JSON.pretty_generate(waginfo))
      f.close
      puts 'file has been updated with new key value!!!!'
    when 'n', 'N', 'no'
      puts 'you said not to update anythig so!! no changes made to the file!!!'
    end
end
end

def depth_2(waginfo, key, file_path)
  puts 'In depth_2..'
  k = key.split(' ')[0]
  v = key.split(' ')[1]
  # x = key.split(' ')[2]
  if waginfo[k][v].kind_of? Hash
    puts "availble options are.!!! select a key from the list #{waginfo[k][v].keys}: ".blue # unless waginfo.key?(key)
  elsif waginfo[k][v].kind_of? NilClass
    puts "you enterd wrong key.!!! please select a key from given list #{waginfo[k].keys}: ".red
    # continue = false
  else
    puts "key value is  >>> #{waginfo[k][v]} <<< do you want to replace [y/n]: ".yellow
    case gets.strip
    when 'Y', 'y', 'yes'
      puts 'what do want to repalce it with'
      waginfo[k][v] = gets.chomp
      f = File.open(file_path, 'w')
      f.write(JSON.pretty_generate(waginfo))
      f.close
      puts 'file has been updated with new key value!!!!'
    when 'n', 'N', 'no'
      puts 'you said not to update anythig so!! no changes made to the file!!!'
    end
end
end

def depth_3(waginfo, key, file_path)
  puts 'In depth_3..'
  k = key.split(' ')[0]
  v = key.split(' ')[1]
  x = key.split(' ')[2]
  if !waginfo.key?(k) || !waginfo[k].key?(v)
    puts "one of the entered key is wrong please check.!!! ".red
  elsif waginfo[k][v][x].kind_of? Hash
    puts "availble options are.!!! select a key from the list #{waginfo[k][v][x].keys}: ".blue # unless waginfo.key?(key)
  elsif waginfo[k][v][x].kind_of? NilClass
    puts "you enterd wrong key.!!! please select a key from given list #{waginfo[k][v].keys}: ".red
    # continue = false
  else
    puts "key value is  >>> #{waginfo[k][v][x]} <<< do you want to replace [y/n]: ".yellow
    case gets.strip
    when 'Y', 'y', 'yes'
      puts 'what do want to repalce it with'
      waginfo[k][v][x] = gets.chomp
      f = File.open(file_path, 'w')
      f.write(JSON.pretty_generate(waginfo))
      f.close
      puts 'file has been updated with new key value!!!!'
    when 'n', 'N', 'no'
      puts 'you said not to update anythig so!! no changes made to the file!!!'
    end
end
end

def depth_4(waginfo, key, file_path)
  puts 'In depth_4..'
  k = key.split(' ')[0]
  v = key.split(' ')[1]
  x = key.split(' ')[2]
  y = key.split(' ')[3]
if !waginfo.key?(k) || !waginfo[k].key?(v) || !waginfo[k][v].key?(x)
    puts "one of the entered key is wrong please check.!!! ".red
elsif waginfo[k][v][x][y].kind_of? String
    puts "key value is  >>> #{waginfo[k][v][x][y]} <<< do you want to replace [y/n]: ".yellow
    case gets.strip
    when 'Y', 'y', 'yes'
      puts 'what do want to repalce it with'
      waginfo[k][v][x][y] = gets.chomp
      f = File.open(file_path, 'w')
      f.write(JSON.pretty_generate(waginfo))
      f.close
      puts 'file has been updated with new key value!!!!'
    when 'n', 'N', 'no'
      puts 'you said not to update anythig so!! no changes made to the file!!!'
    end
  elsif waginfo[k][v][x][y].kind_of? Hash
    puts "availble options are.!!! select a key from the list #{waginfo[k][v][x][y].keys}: ".blue # unless waginfo.key?(key)
  elsif waginfo[k][v][x][y].kind_of?(NilClass) && !waginfo[k][v][x].kind_of?(String)
   
    puts "you enterd wrong key.!!! please select a key from given list #{waginfo[k][v][x].keys}: ".red
  else
    puts "you reached end of nested json value for #{waginfo[k][v].keys.to_s[x]} is #{waginfo[k][v][x]}"
end
end

def depth_5(waginfo, key, file_path)
  puts 'In depth_5..'
  k = key.split(' ')[0]
  v = key.split(' ')[1]
  x = key.split(' ')[2]
  y = key.split(' ')[3]
  z = key.split(' ')[4]
  if !waginfo.key?(k) || !waginfo[k].key?(v) || !waginfo[k][v].key?(x) || !waginfo[k][v][x].key?(y)
    puts "one of the entered key is wrong please check.!!! ".red
  elsif waginfo[k][v][x][y][z].kind_of? String
    puts "key value is  >>> #{waginfo[k][v][x][y][z]} <<< do you want to replace [y/n]: ".yellow
        case gets.strip
        when 'Y', 'y', 'yes'
          puts 'what do want to repalce it with'
          waginfo[k][v][x][y][z] = gets.chomp
          f = File.open(file_path, 'w')
          f.write(JSON.pretty_generate(waginfo))
          f.close
          puts 'file has been updated with new key value!!!!'
        when 'n', 'N', 'no'
          puts 'you said not to update anythig so!! no changes made to the file!!!'
        end
     elsif waginfo[k][v][x][y][z].kind_of? Hash
        puts "availble options are.!!! select a key from the list #{waginfo[k][v][x][y][z].keys}: ".blue # unless waginfo.key?(key)
    elsif waginfo[k][v][x][y][z].kind_of?(NilClass) && !waginfo[k][v][x][y].kind_of?(String)
        puts "you enterd wrong key.!!! please select a key from given list #{waginfo[k][v][x][y].keys}: ".red
    else
        puts "you reached end of nested json value for #{waginfo[k][v][x].keys.to_s[z]} is #{waginfo[k][v][x][y]}"
    end
end
def depth_6(waginfo, key, file_path)
    puts 'In depth_6..'
    k = key.split(' ')[0]
    v = key.split(' ')[1]
    x = key.split(' ')[2]
    y = key.split(' ')[3]
    z = key.split(' ')[4]
    a = key.split(' ')[5]
    if !waginfo.key?(k) || !waginfo[k].key?(v) || !waginfo[k][v].key?(x) || !waginfo[k][v][x].key?(y) || !waginfo[k][v][x][y].key?(z)
      puts "one of the entered key is wrong please check.!!! ".red
    elsif waginfo[k][v][x][y][z][a].kind_of? String
      puts "key value is  >>> #{waginfo[k][v][x][y][z][a]} <<< do you want to replace [y/n]: ".yellow
          case gets.strip
          when 'Y', 'y', 'yes'
            puts 'what do want to repalce it with'
            waginfo[k][v][x][y][z][a] = gets.chomp
            f = File.open(file_path, 'w')
            f.write(JSON.pretty_generate(waginfo))
            f.close
            puts 'file has been updated with new key value!!!!'
          when 'n', 'N', 'no'
            puts 'you said not to update anythig so!! no changes made to the file!!!'
          end
       elsif waginfo[k][v][x][y][z][a].kind_of? Hash
          puts "availble options are.!!! select a key from the list #{waginfo[k][v][x][y][z][a].keys}: ".blue # unless waginfo.key?(key)
      elsif waginfo[k][v][x][y][z][a].kind_of?(NilClass) && !waginfo[k][v][x][y][z].kind_of?(String)
          puts "you enterd wrong key.!!! please select a key from given list #{waginfo[k][v][x][y][z].keys}: ".red
      else
          puts "you reached end of nested json value for #{waginfo[k][v][x][y].keys.to_s[z]} is #{waginfo[k][v][x][y][z]}"
      end
  end

  def depth_7(waginfo, key, file_path)
    puts 'In depth_7..'
    k = key.split(' ')[0]
    v = key.split(' ')[1]
    x = key.split(' ')[2]
    y = key.split(' ')[3]
    z = key.split(' ')[4]
    a = key.split(' ')[5]
    b = key.split(' ')[6]
    if !waginfo.key?(k) || !waginfo[k].key?(v) || !waginfo[k][v].key?(x) || !waginfo[k][v][x].key?(y) || !waginfo[k][v][x][y].key?(z) || !waginfo[k][v][x][y][z].key?(a)
      puts "one of the entered key is wrong please check.!!! ".red
    elsif waginfo[k][v][x][y][z][a][b].kind_of? String
      puts "key value is  >>> #{waginfo[k][v][x][y][z][a][b]} <<< do you want to replace [y/n]: ".yellow
          case gets.strip
          when 'Y', 'y', 'yes'
            puts 'what do want to repalce it with'
            waginfo[k][v][x][y][z][a][b] = gets.chomp
            f = File.open(file_path, 'w')
            f.write(JSON.pretty_generate(waginfo))
            f.close
            puts 'file has been updated with new key value!!!!'
          when 'n', 'N', 'no'
            puts 'you said not to update anythig so!! no changes made to the file!!!'
          end
       elsif waginfo[k][v][x][y][z][a][b].kind_of? Hash
          puts "availble options are.!!! select a key from the list #{waginfo[k][v][x][y][z][a][b].keys}: ".blue # unless waginfo.key?(key)
      elsif waginfo[k][v][x][y][z][a][b].kind_of?(NilClass) && !waginfo[k][v][x][y][z][a].kind_of?(String)
          puts "you enterd wrong key.!!! please select a key from given list #{waginfo[k][v][x][y][z][a].keys}: ".red
      else
          puts "you reached end of nested json value for #{waginfo[k][v][x][y][a].keys.to_s[b]} is #{waginfo[k][v][x][y][z][a]}"
      end
  end