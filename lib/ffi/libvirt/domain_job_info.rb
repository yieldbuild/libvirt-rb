module FFI
  module Libvirt
    # virDomainJobInfo structure.
    #
    # struct _virDomainJobInfo {
    #   /* One of virDomainJobType */
    #   int type;
    #
    #   /* Time is measured in mill-seconds */
    #   unsigned long long timeElapsed;    /* Always set */
    #   unsigned long long timeRemaining;  /* Only for VIR_DOMAIN_JOB_BOUNDED */
    #
    #   /* Data is measured in bytes unless otherwise specified
    #    * and is measuring the job as a whole
    #    *
    #    * For VIR_DOMAIN_JOB_UNBOUNDED, dataTotal may be less
    #    * than the final sum of dataProcessed + dataRemaining
    #    * in the event that the hypervisor has to repeat some
    #    * data eg due to dirtied pages during migration
    #    *
    #    * For VIR_DOMAIN_JOB_BOUNDED, dataTotal shall always
    #    * equal sum of dataProcessed + dataRemaining
    #    */
    #   unsigned long long dataTotal;
    #   unsigned long long dataProcessed;
    #   unsigned long long dataRemaining;
    #
    #   /* As above, but only tracking guest memory progress */
    #   unsigned long long memTotal;
    #   unsigned long long memProcessed;
    #   unsigned long long memRemaining;
    #
    #   /* As above, but only tracking guest disk file progress */
    #   unsigned long long fileTotal;
    #   unsigned long long fileProcessed;
    #   unsigned long long fileRemaining;
    # };
    class DomainJobInfo < ::FFI::Struct
      layout :type, :virDomainJobType,
             :timeElapsed, :ulong_long,
             :timeRemaining, :ulong_long,
             :dataTotal, :ulong_long,
             :dataProcessed, :ulong_long,
             :dataRemaining, :ulong_long,
             :memTotal, :ulong_long,
             :memProcessed, :ulong_long,
             :memRemaining, :ulong_long,
             :fileTotal, :ulong_long,
             :fileProcessed, :ulong_long,
             :fileRemaining, :ulong_long
    end
  end
end
