# coding: utf-8
# 목록 6-11: 어떻게 루비가 모듈의 name 메서드를 호출하도록 할 수 있을까?

module Professor
  def name
    "Prof. #{super}"
  end
end

class Mathematician
  attr_accessor :name
  include Professor
end

poincaré = Mathematician.new
poincaré.name = "Henri Poincaré"
p poincaré.name
# => "Henri Poincaré"
