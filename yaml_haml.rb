## Usage: ruby yaml_haml.rb yamlfile hamlfile > output.html

require 'haml'
require 'YAML'

data = YAML.load_file(ARGV[0])
tmpl = File.read(ARGV[1])
Haml::Engine.new(tmpl).def_method(data, :render)
puts data.render
