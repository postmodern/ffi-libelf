require 'elf32/types'
require 'elf/ver_need_aux'

module FFI
  module Elf32
    class VerNeedAux < Elf::VerNeedAux

      layout :vna_hash, :elf32_word,
             :vna_flags, :elf32_half,
             :vna_other, :elf32_half,
             :vna_name, :elf32_word,
             :vna_next, :elf32_word

    end
  end
end
