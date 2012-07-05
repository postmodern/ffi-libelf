require 'ffi/elf32/types'
require 'ffi/elf/lib'

module FFI
  module Elf32
    class Lib < Elf::Lib

      layout :l_name, :elf32_word,
             :l_time_stamp, :elf32_word,
             :l_checksum, :elf32_word,
             :l_version, :elf32_word,
             :l_flags, :elf32_word

    end
  end
end
