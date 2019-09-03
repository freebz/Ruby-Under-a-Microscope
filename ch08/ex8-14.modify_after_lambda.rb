# coding: utf-8
# 목록 8-14: 어떤 str이 힙으로 lambda를 복사할까? (modify_after_lambda.rb)

def message_function
  str = "The quick brown fox"
  func = lambda do |animal|
    puts "#{str} jumps over the lazy #{animal}."
  end
  str = "The sly brown fox"
  func
end
function_value = message_function
function_value.call('dog')
