require 'elf/typedefs'

module FFI
  module Elf
    #
    # Archive member header.
    #
    class ArchiveHeader < FFI::Struct
      layout :ar_name, :string,
        :ar_date, :time_t,
        :ar_uid, :uid_t,
        :ar_gid, :gid_t,
        :ar_mode, :mode_t,
        :ar_size, :loff_t,
        :ar_rawname, :string

      def date
        Time.at(self.ar_date)
      end

      alias :ar_uid, :uid
      alias :ar_gid, :gid
      alias :ar_mode, :mode
      alias :ar_size, :size
      alias :ar_rawname, :raw_name
    end
  end
end
