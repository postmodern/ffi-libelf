require 'elf/64/types'
require 'elf/ver_need_aux'

module FFI
  module Elf64
    class VerNeedAux < Elf::VerNeedAux

      layout :vna_hash, :elf64_word,
             :vna_flags, :elf64_half,
             :vna_other, :elf64_half,
             :vna_name, :elf64_word,
             :vna_next, :elf64_word

    end
  end
end
