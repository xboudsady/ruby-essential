### Food Finder ###
#
# Launch this Ruby file from the commnand line
# to get started
#

APP_ROOT = File.dirname(__FILE__)

# require "#{APP_ROOT}/lib/guide"
# require FILE.join(APP_ROOT, 'lib', 'guide.rb')
# require FILE.join(APP_ROOT, 'lib', 'guide')

$:.unshift( File.join(APP_ROOT, 'lib') )
require 'guide'