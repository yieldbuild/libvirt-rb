module FFI
  module Libvirt
    # Typedefs for various pointers to libvirt structures
    typedef :pointer, :virConnectPtr
    typedef :pointer, :virDomainPtr
    typedef :pointer, :virDomainControlInfoPtr
    typedef :pointer, :virDomainInfoPtr
    typedef :pointer, :virStreamPtr
    typedef :pointer, :virSecurityLabelPtr
    typedef :pointer, :virSecurityModelPtr
    typedef :pointer, :virTypedParameterPtr
    typedef :pointer, :virDomainBlockStatsPtr
    typedef :pointer, :virDomainInterfaceStatsPtr
    typedef :pointer, :virDomainMemoryStatPtr
    typedef :pointer, :virNodeInfoPtr
    typedef :pointer, :virNodeCPUStatsPtr
    typedef :pointer, :virNodeMemoryStatsPtr
    typedef :pointer, :virConnectCredentialPtr
    typedef :pointer, :virConnectAuthPtr
    typedef :pointer, :virDomainBlockInfoPtr
    typedef :pointer, :virVcpuInfoPtr
    typedef :pointer, :virDomainBlockJobInfoPtr
    typedef :pointer, :virDomainDiskErrorPtr
    typedef :pointer, :virNetworkPtr
    typedef :pointer, :virInterfacePtr
    typedef :pointer, :virStoragePoolPtr
    typedef :pointer, :virStoragePoolInfoPtr
    typedef :pointer, :virStorageVolPtr
    typedef :pointer, :virStorageVolInfoPtr
    typedef :pointer, :virNodeDevicePtr
    typedef :pointer, :virSecretPtr
    typedef :pointer, :virDomainJobInfoPtr
    typedef :pointer, :virDomainSnapshotPtr
    typedef :pointer, :virDomainEventGraphicsAddressPtr
    typedef :pointer, :virDomainEventGraphicsSubjectIdentityPtr
    typedef :pointer, :virDomainEventGraphicsSubjectPtr
    typedef :pointer, :virNWFilterPtr
    typedef :pointer, :virSchedParameterPtr
    typedef :pointer, :virBlkioParameterPtr
    typedef :pointer, :virMemoryParameterPtr
    typedef :ulong_long, :virDomainBlockJobCursor

    # Pointers for C primitives
    typedef :pointer, :uchar_pointer
    typedef :pointer, :int_pointer
    typedef :pointer, :uint_pointer
    typedef :pointer, :unsigned_long_pointer
    typedef :pointer, :ulong_long_pointer
    typedef :pointer, :void_pointer

    # Callbacks
    callback :virConnectAuthCallbackPtr, [:virConnectCredentialPtr, :uint, :void_pointer], :int
    callback :virConnectDomainEventCallback, [:virConnectPtr, :virDomainPtr, :int, :int, :void_pointer], :int
    callback :virFreeCallback, [:void_pointer], :void
    callback :virEventHandleCallback, [:int, :int, :int, :void_pointer], :void
    callback :virEventAddHandleFunc, [:int, :int, :virEventHandleCallback, :void_pointer, :virFreeCallback], :int
    callback :virEventUpdateHandleFunc, [:int, :int], :void
    callback :virEventRemoveHandleFunc, [:int], :int
    callback :virEventTimeoutCallback, [:int, :void_pointer], :void
    callback :virEventAddTimeoutFunc, [:int, :virEventTimeoutCallback, :void_pointer, :virFreeCallback], :int
    callback :virEventUpdateTimeoutFunc, [:int, :int], :void
    callback :virEventRemoveTimeoutFunc, [:int], :int
    callback :virStreamSourceFunc, [:virStreamPtr, :string, :size_t, :void_pointer], :int
    callback :virStreamSinkFunc, [:virStreamPtr, :string, :size_t, :void_pointer], :int
    callback :virStreamEventCallback, [:virStreamPtr, :int, :void_pointer], :void
    callback :virConnectDomainEventGenericCallback, [:virConnectPtr, :virDomainPtr, :void_pointer], :void
    callback :virConnectDomainEventRTCChangeCallback, [:virConnectPtr, :virDomainPtr, :long_long, :void_pointer], :void
    callback :virConnectDomainEventWatchdogCallback, [:virConnectPtr, :virDomainPtr, :int, :void_pointer], :void
    callback :virConnectDomainEventIOErrorCallback, [:virConnectPtr, :virDomainPtr, :string, :string, :int, :void_pointer], :void
    callback :virConnectDomainEventIOErrorReasonCallback, [:virConnectPtr, :virDomainPtr, :string, :string, :int, :string, :void_pointer], :void
    callback :virConnectDomainEventGraphicsCallback, [:virConnectPtr, :virDomainPtr, :int, :virDomainEventGraphicsAddressPtr, :virDomainEventGraphicsAddressPtr, :string, :virDomainEventGraphicsSubjectPtr, :void_pointer], :void
    callback :virConnectDomainEventBlockJobCallback, [:virConnectPtr, :virDomainPtr, :string, :int, :int, :void_pointer], :void
    callback :virConnectDomainEventDiskChangeCallback, [:virConnectPtr, :virDomainPtr, :string, :string, :string, :int, :void_pointer], :void
    callback :virConnectDomainEventTrayChangeCallback, [:virConnectPtr, :virDomainPtr, :string, :int, :void_pointer], :void
    callback :virConnectDomainEventPMWakeupCallback, [:virConnectPtr, :virDomainPtr, :int, :void_pointer], :void
    callback :virConnectDomainEventPMSuspendCallback, [:virConnectPtr, :virDomainPtr, :int, :void_pointer], :void

    # Enums
    enum :virDomainState, [:nostate, :running, :blocked, :paused, :shutdown, :shutoff, :crashed, :pmsuspended]
    enum :virDomainNostateReason, [:unknown]
    enum :virDomainRunningReason, [:unknown, :booted, :migrated, :restored, :from_snapshot, :unpaused, :migration_canceled, :save_canceled, :wakeup]
    enum :virDomainBlockedReason, [:unknown]
    enum :virDomainPausedReason, [:unknown, :user, :migration, :save, :dump, :ioerror, :watchdog, :from_snapshot, :shutting_down]
    enum :virDomainShutdownReason, [:unknown, :user]
    enum :virDomainShutoffReason, [:unknown, :shutdown, :destroyed, :crashed, :migrated, :saved, :failed, :from_snapshot]
    enum :virDomainCrashedReason, [:unknown]
    enum :virDomainPMSuspendedReason, [:unknown]
    enum :virDomainControlState, [:ok, :job, :occupied, :error]
    enum :virDomainModificationImpact, [:current, :live, 0, :config]
    enum :virDomainCreateFlags, [:none, :paused, 0, :autodestroy, :bypass_cache, :force_boot]
    enum :virNodeSuspendTarget, [:mem, :disk, :hybrid]
    enum :virNodeGetCPUStatsAllCPUs, [:all_cpus, -1]
    enum :virNodeGetMemoryStatsAllCells, [:all_cells, -1]
    enum :virTypedParameterType, [:param_int, 1, :param_uint, :param_llong, :param_ullong, :param_double, :param_boolean, :param_string]
    enum :virTypedParameterFlags, [:okay, 1]
    enum :virDomainMemoryStatTags, [:swap_in, :swap_out, :major_fault, :minor_fault, :unused, :available, :actual_balloon, :rss, :nr]
    enum :virDomainCoreDumpFlags, [:crash, :live, :bypass_cache, :reset]
    enum :virDomainMigrateFlags, [:live, :peer2peer, :tunnelled, :persist_dest, :undefine_source, :paused, :non_shared_disk, :non_shared_inc, :change_protection, :unsafe]
    enum :virConnectFlags, [:ro, :no_aliases]
    enum :virConnectCredentialType, [:username, 1, :authname, :language, :cnonce, :passphrase, :echoprompt, :noechoprompt, :realm, :external]
    enum :virDomainShutdownFlagValues, [:default, :acpi_power_btn, 0, :guest_agent]
    enum :virDomainRebootFlagValues, [:default, :acpi_power_btn, 0, :guest_agent]
    enum :virDomainDestroyFlagsValues, [:default, :graceful, 0]
    enum :virDomainSaveRestoreFlags, [:bypass_cache, :running, :paused]
    enum :virDomainMemoryModFlags, [:current, :live, 0, :config]
    enum :virDomainNumatuneMemMode, [:strict, :preferred, :interleave]
    enum :virDomainMetadataType, [:description, :title, :element]
    enum :virDomainXMLFlags, [:secure, :inactive, :update_cpu]
    enum :virDomainBlockResizeFlags, [:bytes]
    enum :virDomainMemoryFlags, [:virtual, :physical]
    enum :virDomainUndefineFlagsValues, [:managed_save, :snapshots_metadata]
    enum :virVcpuState, [:offline, :running, :blocked]
    enum :virDomainVcpuFlags, [:current, :live, 0, :config]
    enum :virDomainDeviceModifyFlags, [:current, :live, 0, :config]
    enum :virDomainBlockJobType, [:unknown, :pull, :copy]
    enum :virDomainBlockJobAbortFlags, [:async, :pivot]
    enum :virDomainBlockRebaseFlags, [:shallow, :reuse_ext, :copy_raw, :copy]
    enum :virDomainDiskErrorCode, [:none, :unspec, :no_space]
    enum :virNetworkXMLFlags, [:inactive]
    enum :virInterfaceXMLFlags, [:inactive]
    enum :virStoragePoolState, [:inactive, :building, :running, :degraded, :inaccessible]
    enum :virStoragePoolBuildFlags, [:new, :repair, 0, :resize, :no_overwrite, :overwrite]
    enum :virStoragePoolDeleteFlags, [:normal, :zeroed, 0]
    enum :virStorageVolType, [:file, :block, :dir]
    enum :virStorageVolDeleteFlags, [:normal, :zeroed, 0]
    enum :virStorageVolWipeAlgorithm, [:zero, :nnsa, :dod, :bsi, :gutmann, :schneier, :rfitzner7, :rfitzner33, :random]
    enum :virStorageVolResizeFlags, [:allocate, :delta, :shrink]
    enum :virKeycodeSet, [:linux, :xt, :atset1, :atset2, :atset3, :osx, :xt_kbd, :usb, :win32, :rfb]
    enum :virDomainEventType, [:defined, :undefined, :started, :suspended, :resumed, :stopped, :shutdown]
    enum :virDomainEventDefinedDetailType, [:added, :updated]
    enum :virDomainEventUndefinedDetailType, [:removed]
    enum :virDomainEventStartedDetailType, [:booted, :migrated, :restored, :from_snapshot, :wakeup]
    enum :virDomainEventSuspendedDetailType, [:paused, :migrated, :ioerror, :watchdog, :restored, :from_snapshot]
    enum :virDomainEventResumedDetailType, [:unpaused, :migrated, :from_snapshot]
    enum :virDomainEventStoppedDetailType, [:shutdown, :destroyed, :crashed, :migrated, :saved, :failed, :from_snapshot]
    enum :virDomainEventShutdownDetailType, [:finished]
    enum :virEventHandleType, [:readable, :writable, :error, :hangup]
    enum :virSecretUsageType, [:none, :volume, :ceph]
    enum :virStreamFlags, [:nonblock]
    enum :virStreamEventType, [:readable, :writable, :error, :hangup]
    enum :virCPUCompareResult, [:error, -1, :incompatible, :identical, :superset]
    enum :virDomainJobType, [:none, :bounded, :unbounded, :completed, :failed, :cancelled]
    enum :virDomainSnapshotCreateFlags, [:redefine, :current, :no_metadata, :halt, :disk_only, :reuse_ext, :quiesce, :atomic]
    enum :virDomainSnapshotListFlags, [:roots, :descendants, 0, :metadata, :leaves]
    enum :virDomainSnapshotRevertFlags, [:running, :paused, :force]
    enum :virDomainSnapshotDeleteFlags, [:children, :metadata_only, :children_only]
    enum :virDomainEventWatchdogAction, [:none, :pause, :reset, :poweroff, :shutdown, :debug]
    enum :virDomainEventIOErrorAction, [:none, :pause, :report]
    enum :virDomainEventGraphicsPhase, [:connect, :initialize, :disconnect]
    enum :virDomainEventGraphicsAddressType, [:ipv4, :ipv6, :unix]
    enum :virConnectDomainEventBlockJobStatus, [:completed, :failed, :canceled]
    enum :virConnectDomainEventDiskChangeReason, [:missing_on_start]
    enum :virDomainEventTrayChangeReason, [:open, :close]
    enum :virDomainEventID, [:lifecycle, :reboot, :rtc_change, :watchdog, :io_error, :graphics, :io_error_reason, :control_error, :block_job, :disk_change, :tray_change, :pmwakeup, :pmsuspend]
    enum :virDomainConsoleFlags, [:force, :safe]
    enum :virDomainOpenGraphicsFlags, [:skipauth]
    enum :virSchedParameterType, [:field_int, 1, :field_uint, :field_llong, :field_ullong, :field_double, :field_boolean]
    enum :virBlkioParameterType, [:param_int, 1, :param_uint, :param_llong, :param_ullong, :param_double, :param_boolean]
    enum :virMemoryParameterType, [:param_int, 1, :param_uint, :param_llong, :param_ullong, :param_double, :param_boolean]
  end
end
