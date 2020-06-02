module Jekyll
  class BlockSection < Liquid::Block

    def initialize(tag_name, markup, tokens)
      super

      @title = markup
    end



   def render(context)
      site = context.registers[:site]
      converter = site.find_converter_instance(::Jekyll::Converters::Markdown)
      text = converter.convert(super(context))

      "<div class=\"card box-shadow p-2\"><div class=\"card-body\"><h4 class=\"card-title\">#{@title}</h4>#{text}</div></div>"
    end

  end
end

Liquid::Template.register_tag('section', Jekyll::BlockSection)