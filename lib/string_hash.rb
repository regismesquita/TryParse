# Autogenerated from a Treetop grammar. Edits may be lost.


module StringHash
  include Treetop::Runtime

  def root
    @root ||= :general
  end

  def _nt_general
    start_index = index
    if node_cache[:general].has_key?(index)
      cached = node_cache[:general][index]
      if cached
        cached = SyntaxNode.new(input, index...(index + 1)) if cached == true
        @index = cached.interval.end
      end
      return cached
    end

    i0 = index
    r1 = _nt_hash
    if r1
      r0 = r1
    else
      r2 = _nt_hash_comp
      if r2
        r0 = r2
      else
        r3 = _nt_componente
        if r3
          r0 = r3
        else
          r4 = _nt_string
          if r4
            r0 = r4
          else
            r5 = _nt_symbol
            if r5
              r0 = r5
            else
              @index = i0
              r0 = nil
            end
          end
        end
      end
    end

    node_cache[:general][start_index] = r0

    r0
  end

  module Hash0
    def hash_comp
      elements[1]
    end

  end

  def _nt_hash
    start_index = index
    if node_cache[:hash].has_key?(index)
      cached = node_cache[:hash][index]
      if cached
        cached = SyntaxNode.new(input, index...(index + 1)) if cached == true
        @index = cached.interval.end
      end
      return cached
    end

    i0, s0 = index, []
    if has_terminal?('{', false, index)
      r1 = instantiate_node(SyntaxNode,input, index...(index + 1))
      @index += 1
    else
      terminal_parse_failure('{')
      r1 = nil
    end
    s0 << r1
    if r1
      r2 = _nt_hash_comp
      s0 << r2
      if r2
        if has_terminal?('}', false, index)
          r3 = instantiate_node(SyntaxNode,input, index...(index + 1))
          @index += 1
        else
          terminal_parse_failure('}')
          r3 = nil
        end
        s0 << r3
      end
    end
    if s0.last
      r0 = instantiate_node(SyntaxNode,input, i0...index, s0)
      r0.extend(Hash0)
    else
      @index = i0
      r0 = nil
    end

    node_cache[:hash][start_index] = r0

    r0
  end

  module HashComp0
    def componente
      elements[0]
    end

    def hash_comp
      elements[2]
    end
  end

  def _nt_hash_comp
    start_index = index
    if node_cache[:hash_comp].has_key?(index)
      cached = node_cache[:hash_comp][index]
      if cached
        cached = SyntaxNode.new(input, index...(index + 1)) if cached == true
        @index = cached.interval.end
      end
      return cached
    end

    i0 = index
    i1, s1 = index, []
    r2 = _nt_componente
    s1 << r2
    if r2
      if has_terminal?(',', false, index)
        r3 = instantiate_node(SyntaxNode,input, index...(index + 1))
        @index += 1
      else
        terminal_parse_failure(',')
        r3 = nil
      end
      s1 << r3
      if r3
        r4 = _nt_hash_comp
        s1 << r4
      end
    end
    if s1.last
      r1 = instantiate_node(SyntaxNode,input, i1...index, s1)
      r1.extend(HashComp0)
    else
      @index = i1
      r1 = nil
    end
    if r1
      r0 = r1
    else
      r5 = _nt_componente
      if r5
        r0 = r5
      else
        @index = i0
        r0 = nil
      end
    end

    node_cache[:hash_comp][start_index] = r0

    r0
  end

  module Componente0
  end

  def _nt_componente
    start_index = index
    if node_cache[:componente].has_key?(index)
      cached = node_cache[:componente][index]
      if cached
        cached = SyntaxNode.new(input, index...(index + 1)) if cached == true
        @index = cached.interval.end
      end
      return cached
    end

    i0, s0 = index, []
    i1 = index
    r2 = _nt_symbol
    if r2
      r1 = r2
    else
      r3 = _nt_string
      if r3
        r1 = r3
      else
        r4 = _nt_number
        if r4
          r1 = r4
        else
          @index = i1
          r1 = nil
        end
      end
    end
    s0 << r1
    if r1
      if has_terminal?('=>', false, index)
        r5 = instantiate_node(SyntaxNode,input, index...(index + 2))
        @index += 2
      else
        terminal_parse_failure('=>')
        r5 = nil
      end
      s0 << r5
      if r5
        i6 = index
        r7 = _nt_number
        if r7
          r6 = r7
        else
          r8 = _nt_symbol
          if r8
            r6 = r8
          else
            r9 = _nt_string
            if r9
              r6 = r9
            else
              r10 = _nt_hash
              if r10
                r6 = r10
              else
                @index = i6
                r6 = nil
              end
            end
          end
        end
        s0 << r6
      end
    end
    if s0.last
      r0 = instantiate_node(SyntaxNode,input, i0...index, s0)
      r0.extend(Componente0)
    else
      @index = i0
      r0 = nil
    end

    node_cache[:componente][start_index] = r0

    r0
  end

  module String0
    def string_content
      elements[1]
    end

  end

  def _nt_string
    start_index = index
    if node_cache[:string].has_key?(index)
      cached = node_cache[:string][index]
      if cached
        cached = SyntaxNode.new(input, index...(index + 1)) if cached == true
        @index = cached.interval.end
      end
      return cached
    end

    i0, s0 = index, []
    if has_terminal?('"', false, index)
      r1 = instantiate_node(SyntaxNode,input, index...(index + 1))
      @index += 1
    else
      terminal_parse_failure('"')
      r1 = nil
    end
    s0 << r1
    if r1
      r2 = _nt_string_content
      s0 << r2
      if r2
        if has_terminal?('"', false, index)
          r3 = instantiate_node(SyntaxNode,input, index...(index + 1))
          @index += 1
        else
          terminal_parse_failure('"')
          r3 = nil
        end
        s0 << r3
      end
    end
    if s0.last
      r0 = instantiate_node(SyntaxNode,input, i0...index, s0)
      r0.extend(String0)
    else
      @index = i0
      r0 = nil
    end

    node_cache[:string][start_index] = r0

    r0
  end

  module StringContent0
    def string_content
      elements[1]
    end
  end

  def _nt_string_content
    start_index = index
    if node_cache[:string_content].has_key?(index)
      cached = node_cache[:string_content][index]
      if cached
        cached = SyntaxNode.new(input, index...(index + 1)) if cached == true
        @index = cached.interval.end
      end
      return cached
    end

    i0 = index
    i1, s1 = index, []
    if has_terminal?('\G[^\'"\']', true, index)
      r2 = true
      @index += 1
    else
      r2 = nil
    end
    s1 << r2
    if r2
      r3 = _nt_string_content
      s1 << r3
    end
    if s1.last
      r1 = instantiate_node(SyntaxNode,input, i1...index, s1)
      r1.extend(StringContent0)
    else
      @index = i1
      r1 = nil
    end
    if r1
      r0 = r1
    else
      if has_terminal?('\G[^\'"\']', true, index)
        r4 = true
        @index += 1
      else
        r4 = nil
      end
      if r4
        r0 = r4
      else
        @index = i0
        r0 = nil
      end
    end

    node_cache[:string_content][start_index] = r0

    r0
  end

  module Symbol0
    def symbol_content
      elements[1]
    end
  end

  def _nt_symbol
    start_index = index
    if node_cache[:symbol].has_key?(index)
      cached = node_cache[:symbol][index]
      if cached
        cached = SyntaxNode.new(input, index...(index + 1)) if cached == true
        @index = cached.interval.end
      end
      return cached
    end

    i0, s0 = index, []
    if has_terminal?(':', false, index)
      r1 = instantiate_node(SyntaxNode,input, index...(index + 1))
      @index += 1
    else
      terminal_parse_failure(':')
      r1 = nil
    end
    s0 << r1
    if r1
      r2 = _nt_symbol_content
      s0 << r2
    end
    if s0.last
      r0 = instantiate_node(SyntaxNode,input, i0...index, s0)
      r0.extend(Symbol0)
    else
      @index = i0
      r0 = nil
    end

    node_cache[:symbol][start_index] = r0

    r0
  end

  module Number0
  end

  def _nt_number
    start_index = index
    if node_cache[:number].has_key?(index)
      cached = node_cache[:number][index]
      if cached
        cached = SyntaxNode.new(input, index...(index + 1)) if cached == true
        @index = cached.interval.end
      end
      return cached
    end

    i0, s0 = index, []
    if has_terminal?('\G[0-9]', true, index)
      r1 = true
      @index += 1
    else
      r1 = nil
    end
    s0 << r1
    if r1
      s2, i2 = [], index
      loop do
        if has_terminal?('\G[0-9]', true, index)
          r3 = true
          @index += 1
        else
          r3 = nil
        end
        if r3
          s2 << r3
        else
          break
        end
      end
      r2 = instantiate_node(SyntaxNode,input, i2...index, s2)
      s0 << r2
    end
    if s0.last
      r0 = instantiate_node(SyntaxNode,input, i0...index, s0)
      r0.extend(Number0)
    else
      @index = i0
      r0 = nil
    end

    node_cache[:number][start_index] = r0

    r0
  end

  module SymbolContent0
    def symbol_content
      elements[1]
    end
  end

  def _nt_symbol_content
    start_index = index
    if node_cache[:symbol_content].has_key?(index)
      cached = node_cache[:symbol_content][index]
      if cached
        cached = SyntaxNode.new(input, index...(index + 1)) if cached == true
        @index = cached.interval.end
      end
      return cached
    end

    i0 = index
    i1, s1 = index, []
    if has_terminal?('\G[^(\' \'/=)]', true, index)
      r2 = true
      @index += 1
    else
      r2 = nil
    end
    s1 << r2
    if r2
      r3 = _nt_symbol_content
      s1 << r3
    end
    if s1.last
      r1 = instantiate_node(SyntaxNode,input, i1...index, s1)
      r1.extend(SymbolContent0)
    else
      @index = i1
      r1 = nil
    end
    if r1
      r0 = r1
    else
      if has_terminal?('\G[^(\' \'/=)]', true, index)
        r4 = true
        @index += 1
      else
        r4 = nil
      end
      if r4
        r0 = r4
      else
        @index = i0
        r0 = nil
      end
    end

    node_cache[:symbol_content][start_index] = r0

    r0
  end

end

class StringHashParser < Treetop::Runtime::CompiledParser
  include StringHash
end
