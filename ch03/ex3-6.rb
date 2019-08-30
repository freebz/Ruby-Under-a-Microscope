# coding: utf-8
# 목록 3-6: 블록 내의 코드는 바로 위의 str 변수에 접근한다.

def display_string
  str = "Dynamic access."
  10.times do
    puts str
  end
end
