class Informe < ApplicationRecord
  has_one :alerta
  belongs_to :estudiante
  belongs_to :user
  validates :nota1,:nota2,:nota3 ,:nota4,:nota5,:nota6,:nota7,:nota8,:nota9,:nota10,:nota11,:nota12,:nota13,:nota14,:nota15,:nota16,:nota17,:nota18,:nota19,:nota20,:nota21,:nota22,:nota23,:nota24,:nota25,:nota26,:nota27,:nota28,  :presence => true

end
