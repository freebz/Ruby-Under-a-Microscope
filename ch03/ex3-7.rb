# coding: utf-8
# 목록 3-7: 이 예제에서 루비는 동적변수 접근을 이용하여 str을 찾기 위해 스택 아래로 두 단계 이동할 것이다.

def display_string
  str = "Dyanmic access."
  10.times do
    10.times do
      puts str
    end
  end
end
