require 'yaml'
require 'erb'

# render method similar to Rails for partials
def render(partial, locals = {})
  template = File.read("views/_#{partial}.html.erb")
  ERB.new(template).result_with_hash(locals)
end

# Read templates and data
layout = File.read("views/layout.html.erb")
view = File.read("views/resume.html.erb")
data = YAML.load_file('data.yml')

# Hydrate the ERB template and insert the view in the layout
rendered_view = ERB.new(view).result_with_hash(data)
result = ERB.new(layout).result_with_hash(view: rendered_view)

# Save result to a file
File.write("public/index.html", result)
