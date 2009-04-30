require 'elf/typedefs'

module FFI
  add_typedef NativeType::UINT16, :elf32_half
  add_typedef NativeType::UINT32, :elf32_word
  add_typedef NativeType::INT32, :elf32_sword
  add_typedef NativeType::UINT64, :elf32_xword
  add_typedef NativeType::INT64, :elf32_sxword
  add_typedef NativeType::UINT32, :elf32_addr
  add_typedef NativeType::UINT32, :elf32_off
  add_typedef NativeType::UINT16, :elf32_section
  alias_types :elf32_half, :elf32_versym
  alias_types :elf32_addr, :elf32_conflict
end
