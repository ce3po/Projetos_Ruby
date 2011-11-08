# encoding: utf-8

class Conformidade < ActiveRecord::Base
  belongs_to :fornecedor

  validates :caixa, format: {with: /\d{3}\/20\d{2}/, message: 'use o padrão número/ano'}
  validates :processo, format: {with: /\d{4}\/20\d{2}/, message: 'use o padrão número/ano'}

  scope :inverso_id, order.reverse_order
end
