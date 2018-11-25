module PluginAlinhaPdtic
 class Hooks < Redmine::Hook::ViewListener
 render_on :view_projects_show_right,
 :partial => 'hooks/view_projeto_alinhamento_pdtic'
 end
end
