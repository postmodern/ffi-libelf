require 'elf32/types'
require 'elf/sym'

module FFI
  module Elf32
    class Sym < Elf::Sym

      layout :st_name, :elf32_word,
             :st_value, :elf32_addr,
             :st_size, :elf32_word,
             :st_info, :uchar,
             :st_other, :uchar

    end
  end
end
