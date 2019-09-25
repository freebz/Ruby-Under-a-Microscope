# coding: utf-8
# 목록 9-6: 모듈 내에서 클래스를 refine 하기

module AllCaps
  refine Quote do
    def display
      puts "THE QUICK BROWN FOX JUMPED OVER THE LAZY DOG."
    end
  end
end
