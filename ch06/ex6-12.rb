# coding: utf-8
# 목록 6-12: prepend를 이용하여 루비는 모듈의 name 메서드를 먼저 찾는다.

module Professor
  def name
    "Prof. #{super}"
  end
end

class Mathematician
  attr_accessor :name
  prepend Professor
end

poincaré = Mathematician.new
poincaré.name = "Henri Poincaré"
p poincaré.name
# => "Prof. Henri Poincaré"
