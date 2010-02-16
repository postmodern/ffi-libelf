require 'elf/64/types'
require 'elf/ver_need'

module FFI
  module Elf64
    class VerNeed < Elf::VerNeed

      layout :vn_version, :elf64_half,
             :vn_cnt, :elf64_half,
             :vn_file, :elf64_word,
             :vn_aux, :elf64_word,
             :vn_next, :elf64_word

    end
  end
end
