require 'elf/32/types'
require 'elf/ver_def'

module FFI
  module Elf32
    class VerDef < Elf::VerDef

      layout :vd_version, :elf32_half,
             :vd_flags, :elf32_half,
             :vd_ndx, :elf32_half,
             :vd_cnt, :elf32_half,
             :vd_hash, :elf32_word,
             :vd_aux, :elf32_word,
             :vd_next, :elf32_word

    end
  end
end
