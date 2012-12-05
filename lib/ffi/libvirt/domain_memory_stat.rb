module FFI
  module Libvirt
    # virDomainMemoryStat structure.
    #
    # struct _virDomainMemoryStat {
    #   int tag;
    #   unsigned long long val;
    # };
    class DomainInterfaceStats < ::FFI::Struct
      layout :tag, :virDomainMemoryStatTags,
             :val, :ulong_long
    end
  end
end
