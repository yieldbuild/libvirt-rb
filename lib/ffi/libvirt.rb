require 'ffi'

module FFI
  # The FFI Libvirt module contains the raw access to the Libvirt C
  # API. This module contains no fluff or nice abstractions above the API,
  # and is actually a way to access the C API directly. This also means
  # that it is up to you to manage all the pointers and so on that come
  # with this power.
  module Libvirt
    autoload :MissingLibError, 'ffi/libvirt/exception'
    autoload :Util, 'ffi/libvirt/util'

    extend FFI::Library

    # Attempt to load the libvirt lib and raise a more specific exception
    # if it doesn't exist. (Normally a LoadError, which is ambiguous, is
    # raised)
    begin
      ffi_lib "libvirt"
    rescue LoadError
      raise MissingLibError
    end
  end
end

# The order matters here, sadly. If you muck with the ordering and
# no exceptions are raised while running tests, you're probably okay.
# But, still, be careful.
require 'ffi/libvirt/types'
require 'ffi/libvirt/version'
require 'ffi/libvirt/functions'
require 'ffi/libvirt/error_types'
require 'ffi/libvirt/error_functions'
require 'ffi/libvirt/domain_info'
require 'ffi/libvirt/error'
require 'ffi/libvirt/node_info'
require 'ffi/libvirt/storage_pool_info'
require 'ffi/libvirt/storage_volume_info'
require 'ffi/libvirt/connect_auth.rb'
require 'ffi/libvirt/connect_credential.rb'
require 'ffi/libvirt/domain_block_info.rb'
require 'ffi/libvirt/domain_block_job_info.rb'
require 'ffi/libvirt/domain_block_stats.rb'
require 'ffi/libvirt/domain_control_info.rb'
require 'ffi/libvirt/domain_disk_error.rb'
require 'ffi/libvirt/domain_event_graphics_address.rb'
require 'ffi/libvirt/domain_event_graphics_subject.rb'
require 'ffi/libvirt/domain_event_graphics_subject_identify.rb'
require 'ffi/libvirt/domain_interface_stats.rb'
require 'ffi/libvirt/domain_job_info.rb'
require 'ffi/libvirt/domain_memory_stat.rb'
#require 'ffi/libvirt/domain_qemu.rb'
require 'ffi/libvirt/node_cpu_stats.rb'
require 'ffi/libvirt/node_memory_stats.rb'
require 'ffi/libvirt/typed_parameter.rb'
require 'ffi/libvirt/vcpu_info.rb'
