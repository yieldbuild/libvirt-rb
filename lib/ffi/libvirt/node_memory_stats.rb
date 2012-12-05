module FFI
  module Libvirt
    # virNodeMemoryStats structure.
    #
    # struct _virNodeMemoryStats {
    # char field[VIR_NODE_MEMORY_STATS_FIELD_LENGTH];
    # unsigned long long value;
    # };
    class NodeMemoryStats < ::FFI::Struct
      layout :field, [:char, 80],
             :value, :ulong_long
    end
  end
end
