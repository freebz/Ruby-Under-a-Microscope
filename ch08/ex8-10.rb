# coding: utf-8
# 목록 8-10: 루비에서 lambda 사용하기

def message_function
  str = "The quick brown fox"
  lambda do |animal|
    puts "#{str} jumps over the lazy #{animal}."
  end
end
function_value = message_function
function_value.call('dog')
