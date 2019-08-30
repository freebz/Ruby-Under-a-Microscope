# coding: utf-8
# 목록 5-20: ObjectSpace.count_objects 메서드를 :T_CLASS와 함께 사용하기

# $ irb
ObjectSpace.count_objects[:T_CLASS]
# => 859
class Mathematician; end
# => nil
ObjectSpace.count_objects[:T_CLASS]
# => 861
