# coding: utf-8
# 목록 9-13: 여기서는 분명치 않지만, eval 메서드는 또한 클로저를 통해서 주변 스코프에 접근한다.

a = 2
b = 3
str = "puts"
str += " a"
str += " +"
str += " b"
eval(str)
