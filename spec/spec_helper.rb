require 'bundler'
Bundler.require
require 'minitest/autorun'

$:.unshift << File.expand_path(File.join(File.dirname(__FILE__), '../lib/'))

require 'list'
