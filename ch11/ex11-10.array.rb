# coding: utf-8
# 목록 11-10: Rubinius 커널 내부에서 Array#shift 구현

def shift(n=undefined)
  Rubinius.check_frozen

  if undefined.equal?(n)
    return nil if @total == 0
    obj = @tuple.at @start
    @tuple.put @start, nil
    @start += 1
    @total -= 1

    obj
  else
    n = Rubinius::Type.coerce_to(n, Fixnum, :to_int)
    raise ArgumentError, "negative array size" if n < 0

    Array.new slice!(0, n)
  end
end
