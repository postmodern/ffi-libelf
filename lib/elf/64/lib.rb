require 'elf/64/typedefs'
require 'elf/lib'

module FFI
  module Elf64
    class Lib < Elf::Lib
      layout :l_name, :elf64_word,
             :l_time_stamp, :elf64_word,
             :l_checksum, :elf64_word,
             :l_version, :elf64_word,
             :l_flags, :elf64_word
    end
  end
end
