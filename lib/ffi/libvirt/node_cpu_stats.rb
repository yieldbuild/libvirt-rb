module FFI
  module Libvirt
    # virNodeCPUStats structure.
    #
    # struct _virNodeCPUStats {
    # char field[VIR_NODE_CPU_STATS_FIELD_LENGTH];
    # unsigned long long value;
    # };
    class NodeCPUStats < ::FFI::Struct
      layout :field, [:char, 80],
             :value, :ulong_long
    end
  end
end
