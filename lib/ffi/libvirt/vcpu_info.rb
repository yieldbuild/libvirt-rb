module FFI
  module Libvirt
    # virVcpuInfo structure.
    #
    # struct _virVcpuInfo {
    #   unsigned int number;        /* virtual CPU number */
    #   int state;                  /* value from virVcpuState */
    #   unsigned long long cpuTime; /* CPU time used, in nanoseconds */
    #   int cpu;                    /* real CPU number, or -1 if offline */
    # };
    class VcpuInfo < ::FFI::Struct
      layout :number, :uint,
             :state, :virVcpuState,
             :cputTime, :ulong_long,
             :cpu, :int
    end
  end
end
