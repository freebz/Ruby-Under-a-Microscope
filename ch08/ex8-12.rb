# coding: utf-8
# 목록 8-12: 루비에서 lambda 사용하기 (목록 8-10의 내용 반복함)

def message_function
  str = "The quick brown fox"
  lambda do |animal|
    puts "#{str} jumps over the lazy #{animal}."
  end
end
function_value = message_function
function_value.call('dog')
