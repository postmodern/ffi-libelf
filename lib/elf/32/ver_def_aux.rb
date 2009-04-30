require 'elf/32/typedefs'
require 'elf/ver_def_aux'

module FFI
  module Elf32
    class VerDefAux < Elf::VerDefAux
      layout :vda_name, :elf32_word,
             :vda_next, :elf32_word
    end
  end
end
