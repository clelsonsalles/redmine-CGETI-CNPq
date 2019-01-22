module AlinhamentoProjectExtension
  extend ActiveSupport::Concern
  included do
    has_many :alinhamentos, :class_name => "Alinhamento", :foreign_key => "project_id"
  end
end
