require "yaml"
fnm='database.yml'
h = YAML::load_file(fnm) || Hash.new
# add to hash
h[:foo]='bar'
#save# load

fnm="database.yml"

h = YAML::load_file(fnm) || Hash.new

# add to hash

h[:foo]=‘bar’