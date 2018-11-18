# Absolute paths

# Use forward slashes, even on WIndows
puts "/Users/xayasethboudsady/Desktop/ruby-essential"

# File.join ensures platform independance
puts File.join('', 'Users', 'xayasethboudsady', 'Desktop', 'ruby_sandbox')

# Relative paths

# __FILE__ is THIS file
puts __FILE__

# expand_path will convert a relative path to an absolute path
# in this case, it returns the full path the file
puts File.expand_path(__FILE__)

# .. "moves back" one directory
puts File.join(File.dirname(__FILE__), '..', "Exercise\ Files")