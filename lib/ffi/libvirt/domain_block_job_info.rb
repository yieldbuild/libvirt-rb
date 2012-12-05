module FFI
  module Libvirt
    # virDomainBlockJobInfo structure.
    #
    # struct _virDomainBlockJobInfo {
    #   virDomainBlockJobType type;
    #   unsigned long bandwidth;
    #   /*
    #    * The following fields provide an indication of block job progress.  @cur
    #    * indicates the current position and will be between 0 and @end.  @end is
    #    * the final cursor position for this operation and represents completion.
    #    * To approximate progress, divide @cur by @end.
    #    */
    #   virDomainBlockJobCursor cur;
    #   virDomainBlockJobCursor end;
    # };
    class DomainBlockJobInfo < ::FFI::Struct
      layout :bandwidth, :ulong,
             :cur, :virDomainBlockJobCursor,
             :end, :virDomainBlockJobCursor
    end
  end
end
