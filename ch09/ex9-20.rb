# coding: utf-8
# 목록 9-20: define_method와 함께 클로저 이용하기

def create_method_using_a_closure
  str2 = "jumps over the lazy dog."
  Quote.send(:define_method, :display) do
    puts "#{@str} #{str2}"
  end
end
