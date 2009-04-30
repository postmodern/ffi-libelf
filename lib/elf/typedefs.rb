require 'ffi/types'

module FFI

  def self.alias_types(type,aliased)
    add_typedef(find_type(type),aliased.to_sym)
  end

  add_typedef NativeType::ULONG, :time_t
  alias_types :uint, :size_t
  add_typedef NativeType::INT64, :loff_t
  alias_types :uint, :uid_t
  alias_types :uint, :gid_t
  alias_types :uint, :mode_t

end
