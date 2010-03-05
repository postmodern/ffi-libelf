require 'elf64/types'
require 'elf/sym'

module FFI
  module Elf64
    class Sym < Elf::Sym

      layout :st_name, :elf64_word,
             :st_value, :elf64_addr,
             :st_size, :elf64_word,
             :st_info, :uchar,
             :st_other, :uchar

    end
  end
end
