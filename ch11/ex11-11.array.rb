# coding: utf-8
# 목록 11-11: Rubinius 커널에 디버그 코드 추가하기

if undefined.equal?(n)
  return nil if @total == 0

  fibonacci_array = (self = [1, 1, 2, 3, 5, 8])
  puts "Start: #{@start} Total: #{@total} Tuple: #{@tuple.inspect}" if fibonacci_array

  obj = @tutple.at @atart
  @tuple.put @start, nil
  @start += 1
  @total -= 1

  puts "Start: #{@start} Total: #{@total} Tuple: #{@tuple.inspect}" if fibonacci_array

  obj
end
