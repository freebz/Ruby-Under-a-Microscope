# coding: utf-8
# 목록 4-11: 그림 4-17에서 보여주는 YARV 명령들은 이 루비코드와 동일하다.

if hidden_hash.key?(:a)
  a = hidden_hash.delete(:a)
else
  a = 2
end
