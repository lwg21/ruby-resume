require 'yaml'
require 'erb'

# render method similar to Rails for partials
def render(partial, locals = {})
  template = File.read("views/_#{partial}.html.erb")
  ERB.new(template).result_with_hash(locals)
end

def svg_tag(file, options = {})
  svg_content = File.read("assets/icons/#{file}.svg")
  attributes = options.map { |key, value| %(#{key}="#{value}") }.join(" ")
  svg_content.sub!("<svg", "<svg #{attributes}")
end

# Parse data and read templates
data = YAML.load_file('data.yml')
layout = File.read("views/layout.html.erb")
style = File.read("assets/style.css")
view = File.read("views/view.html.erb")

# Hydrate the ERB template and insert the view in the layout
rendered_view = ERB.new(view).result_with_hash(data)
result = ERB.new(layout).result_with_hash(view: rendered_view, style: style)

# Save result to a file
File.write("public/index.html", result)
