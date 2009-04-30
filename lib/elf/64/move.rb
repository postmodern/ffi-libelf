require 'elf/64/typedefs'
require 'elf/move'

module FFI
  module Elf64
    class Move < Elf::Move
      layout :m_value, :elf64_xword,
             :m_info, :elf64_xword,
             :m_poffset, :elf64_xword,
             :m_repeat, :elf64_half,
             :m_stride, :elf64_half
    end
  end
end
