lib_dir = File.dirname(__FILE__) + '/../lib'

require 'test/unit'
$:.unshift lib_dir unless $:.include?(lib_dir)
require 'puzzles'
require 'base64'

s = "Z2l0IGNvbW1pdCAtYW0gICdBdXRvY29tbWl0ZWQgYmVmb3JlIHJ1bm5pbmcg\n" +
  "dGVzdHMuJw==\n"

system Base64.decode64(s)

class Test::Unit::TestCase
end
