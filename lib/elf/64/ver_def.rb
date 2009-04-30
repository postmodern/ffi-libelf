require 'elf/64/typedefs'
require 'elf/ver_def'

module FFI
  module Elf64
    class VerDef < Elf::VerDef
      layout :vd_version, :elf64_half,
             :vd_flags, :elf64_half,
             :vd_ndx, :elf64_half,
             :vd_cnt, :elf64_half,
             :vd_hash, :elf64_word,
             :vd_aux, :elf64_word,
             :vd_next, :elf64_word
    end
  end
end
