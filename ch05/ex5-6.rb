# coding: utf-8
# 목록 5-6: 인스턴스 변수를 루비 문자열 객체에 저장하기

# $ irb
str = "some string value"
# => "some string value"
str.instance_variables
# => []
str.instance_variable_set("@val1", "value one")
# => "value one"
str.instance_variables
# => [:@val1]
str.instance_variable_set("@val2", "value two")
# => "value two"
str.instance_variables
# => [:@val1, :@val2]
