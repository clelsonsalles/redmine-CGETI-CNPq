Redmine::Plugin.register :cgeti_portifolio do
  name 'CGETI - plugin para Portifolio de Projetos'
  author 'Clelson Salles Rodrigues'
  description 'Este eh um plugin para cofiguracao do portifolio de projetos da CGETI'
  version '0.0.1'
  url 'http://example.com/path/to/plugin'
  author_url 'http://example.com/about'


  project_module :contratos do
     permission :gerenciar_contratos, {
        :contrato => [:index, :new, :create, :destroy, :edit, :update]
     }
  end

  permission :dados_contratos, { :contrato => [:index] }, :public => true

  menu :top_menu, :gerenciar_contratos, { :controller => 'contrato', :action => 'list' }, :caption => 'Contratos', :before => :projects

  menu :project_menu, :gerenciar_contratos, { :controller => 'contrato', :action => 'index'}, :caption => 'Contrato', 
    :before => :activity, :param => :project_id

  module WikiMacros
     Redmine::WikiFormatting::Macros.register do
         desc "Insert html" + "\n\n" +
              "  !{{html\n<HTML CODE HERE>\n}}" 
         macro :html do |obj, args, text|
            text.html_safe
         end
     end
  end


  settings :default => {
    :projeto_configuracao => "projeto_configuracao_redmine",
    :projeto_wiki_inicial => "portifolio_projetos",
    :projeto_wiki_tipos => "projetos_tipos",
    :pdtic_wiki_inicial => "pdtic_cnpq",
    :contrato_wiki_inicial => "contratos_cgeti",
    :id_query_lista_os => 31,
    :id_tracker_os => 9 
  }, :partial => 'cgeti_portifolio/configuracao_plugin'


end

require_dependency 'cgeti_portifolio/hooks'
