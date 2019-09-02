# coding: utf-8
# 목록 6-14: Mathematician 클래스 객체의 메서드 조사하기

fermat = Mathematician.new
fermat.first_name = 'Pierre'
fermat.last_name = 'de Fermat'

p fermat.methods.sort
# => [ ... :first_name, :first_name=, ... :last_name, :last_name=, :lectures ... ]
