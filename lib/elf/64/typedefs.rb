require 'elf/typedefs'

module FFI
  add_typedef NativeType::UINT16, :elf64_half
  add_typedef NativeType::UINT32, :elf64_word
  add_typedef NativeType::INT32, :elf64_sword
  add_typedef NativeType::UINT64, :elf64_xword
  add_typedef NativeType::INT64, :elf64_sxword
  add_typedef NativeType::UINT64, :elf64_addr
  add_typedef NativeType::UINT64, :elf64_off
  add_typedef NativeType::UINT16, :elf64_section
  alias_types :elf64_half, :elf64_versym
end
