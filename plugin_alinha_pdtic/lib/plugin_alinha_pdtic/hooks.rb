module PluginAlinhaPdtic
 class Hooks < Redmine::Hook::ViewListener
   referencias = Referencial.where(principal: nil)
   alinhametos_projeto = Alinhamento.where(project: @project)
   render_on :view_projects_show_right, :partial => 'hooks/view_projeto_alinhamento_pdtic', locals: { :referencias => referencias }
 end
end
