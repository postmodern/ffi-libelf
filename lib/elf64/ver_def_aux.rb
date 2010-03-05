require 'elf64/types'
require 'elf/ver_def_aux'

module FFI
  module Elf64
    class VerDefAux < Elf::VerDefAux

      layout :vda_name, :elf64_word,
             :vda_next, :elf64_word

    end
  end
end
