# coding: utf-8
# 목록 6-22: 루비는 가장 먼저 렉시컬 스코프 계보를 검색하는가? 아니면 상위클래스 계보를 검색하는가?

class Superclass
  FIND_ME = "Found in Superclass"
end

module ParentLexicalScope
  FIND_ME = "Found in ParentLexicalScope"

  module ChildLexicalScope

    class Subclass < Superclass
      p FIND_ME
    end

  end
end
