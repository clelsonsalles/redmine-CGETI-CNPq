module PluginAlinhaPdtic
 class Hooks < Redmine::Hook::ViewListener
   referencias = Referencial.where(principal: nil)
<<<<<<< HEAD
   alinhamentos_projeto = Alinhamento.where(project: @project)
   render_on :view_projects_show_right, :partial => 'hooks/view_projeto_alinhamento_pdtic', locals: { :referencias => referencias, :alinhamentos_projeto =>  alinhamentos_projeto }
=======
   alinhametos_projeto = Alinhamento.where(project: @project)
   render_on :view_projects_show_right, :partial => 'hooks/view_projeto_alinhamento_pdtic', locals: { :referencias => referencias }
>>>>>>> 8be061619f1fd33593e18ecfdcb3c8e22b81f2c6
 end
end
