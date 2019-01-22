
Redmine::Plugin.register :plugin_alinha_pdtic do
  name 'Alinhamento PDTIC'
  author 'Clelson Salles Rodrigues'
  author_url 'http://www.clelson.com'
  description 'Um plugin do Redmine para prover o alinhamento dos projetos ao PDTIC'
  url 'https://github.com/clelson/redmine_alinhamento'
  version '0.1'
  requires_redmine :version_or_higher => '2.0.0'

  menu :top_menu, :pdtic, { :controller => 'referencial', :action => 'index' }, :caption => 'PDTIC', :before => :projects

  project_module :alinhamento_PDTIC do
     permission :gerenciar_alinhamento_PDTIC, {
        :alinhamento => [:new, :create, :destroy, :edit, :update]
     }
  end

end

require_dependency 'plugin_alinha_pdtic/hooks'
