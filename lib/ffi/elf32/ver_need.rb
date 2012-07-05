require 'ffi/elf32/types'
require 'ffi/elf/ver_need'

module FFI
  module Elf32
    class VerNeed < Elf::VerNeed

      layout :vn_version, :elf32_half,
             :vn_cnt, :elf32_half,
             :vn_file, :elf32_word,
             :vn_aux, :elf32_word,
             :vn_next, :elf32_word

    end
  end
end
