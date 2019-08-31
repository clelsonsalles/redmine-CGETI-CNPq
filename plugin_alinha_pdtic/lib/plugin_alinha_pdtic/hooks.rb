module PluginAlinhaPdtic
 class Hooks < Redmine::Hook::ViewListener
   referencias = Referencial.where(principal: nil)
   alinhamentos_projeto = Alinhamento.where(project: @project)

 end
end
