module FFI
  module Libvirt
    libvirt_version "0.9.12" do
      enum :virDomainQemuMonitorCommand, [:default,
                                          :hmp]
      attach_function :virDomainQemuMonitorCommand, [:virDomainPtr, :string, :pointer, :uint], :int
      attach_function :virDomainQemuAttach, [:virConnectPtr, :uint, :uint], :virDomainPtr
    end
  end
end
