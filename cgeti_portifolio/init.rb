Redmine::Plugin.register :cgeti_portifolio do
  name 'CGETI - plugin para Portifolio de Projetos'
  author 'Clelson Salles Rodrigues'
  description 'Este eh um plugin para cofiguracao do portifolio de projetos da CGETI'
  version '0.0.1'
  url 'http://example.com/path/to/plugin'
  author_url 'http://example.com/about'


        module WikiMacros
		Redmine::WikiFormatting::Macros.register do


                  desc "Insert html" + "\n\n" +
                      "  !{{html\n<HTML CODE HERE>\n}}" 
                  macro :html do |obj, args, text|
                    text.html_safe
                  end
                end
	end
end

require_dependency 'cgeti_portifolio/hooks'
