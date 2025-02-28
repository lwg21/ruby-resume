require 'yaml'
require 'erb'
require 'grover'

require_relative 'lib/helpers'

# Parse data and read templates
data = YAML.load_file('data.yml')
layout = File.read("views/layout.html.erb")
style = File.read("public/style.css")
view = File.read("views/view.html.erb")

# Hydrate the ERB template and insert the view in the layout
rendered_view = ERB.new(view).result_with_hash(data)
result_html = ERB.new(layout).result_with_hash(view: rendered_view, style: style, generate_pdf: true)

# Save resulting HTML to a file
File.write("public/index.html", result_html)
puts "Generated public/index.html"

# Use Grover to print a PDF
result_pdf = Grover.new(result_html, format: 'A4').to_pdf
File.write("public/resume.pdf", result_pdf)
puts "Generated public/index.pdf"
