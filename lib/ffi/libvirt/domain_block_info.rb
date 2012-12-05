module FFI
  module Libvirt
    # virDomainBlockInfo structure.
    #
    # struct _virDomainBlockInfo {
    #   unsigned long long capacity;   /* logical size in bytes of the block device backing image */
    #   unsigned long long allocation; /* highest allocated extent in bytes of the block device backing image */
    #   unsigned long long physical;   /* physical size in bytes of the container of the backing image */
    # };
    class DomainBlockInfo < ::FFI::Struct
      layout :capacity, :ulong_long,
             :allocation, :ulong_long,
             :physcial, :ulong_long
    end
  end
end
