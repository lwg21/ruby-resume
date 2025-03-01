# Render a partial (usage similar to Rails)
def render(partial, locals = {})
template = File.read("views/_#{partial}.html.erb")
ERB.new(template).result_with_hash(locals)
end

# Render an SVG file
def svg_tag(file, attributes = {})
  svg_content = File.read("assets/#{file}.svg")
  attributes_string = attributes.map { |key, value| %(#{key}="#{value}") }.join(" ")
  svg_content.sub!("<svg", "<svg #{attributes_string}")
end
