# coding: utf-8
# 목록 6-8: name 속성을 가지는 간단한 루비 클래스

class Mathematician
  attr_accessor :name
end

poincaré = Mathematician.new
poincaré.name = "Henri Poincaré"
p poincaré.name
# => "Henri Poincaré"
