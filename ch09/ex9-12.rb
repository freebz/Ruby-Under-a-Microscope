# coding: utf-8
# 목록 9-12: eval 메서드를 이용하여 코드를 파싱하고 컴파일하기

str = "puts"
str += " 2"
str += " +"
str += " 2"
eval(str)
