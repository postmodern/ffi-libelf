require 'elf/32/types'
require 'elf/move'

module FFI
  module Elf32
    class Move < Elf::Move

      layout :m_value, :elf32_xword,
             :m_info, :elf32_word,
             :m_poffset, :elf32_word,
             :m_repeat, :elf32_half,
             :m_stride, :elf32_half

    end
  end
end
