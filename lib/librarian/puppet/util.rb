require 'rsync'

module Librarian
  module Puppet

    module Util

      def debug(*args, &block)
        environment.logger.debug(*args, &block)
      end
      def info(*args, &block)
        environment.logger.info(*args, &block)
      end
      def warn(*args, &block)
        environment.logger.warn(*args, &block)
      end

      def rsync?
          environment.config_db.local['rsync'] == 'true'
      end

      # workaround Issue #173 FileUtils.cp_r will fail if there is a symlink that points to a missing file
      # or when the symlink is copied before the target file when preserve is true
      # see also https://tickets.opscode.com/browse/CHEF-833
      #
      # If the rsync configuration parameter is set, use rsync instead of FileUtils
      def cp_r(src, dest)
        if rsync?
          Rsync.run(File.join(src, "/"), dest, ['-avz', '--delete'])
        else
          begin
            FileUtils.cp_r(src, dest, :preserve => true)
          rescue Errno::ENOENT, Errno::EACCES
            debug { "Failed to copy from #{src} to #{dest} preserving file types, trying again without preserving them" }
            FileUtils.rm_rf(dest)
            FileUtils.cp_r(src, dest)
          end
        end
      end

      # Remove user and password from a URI object
      def clean_uri(uri)
        new_uri = uri.clone
        new_uri.user = nil
        new_uri.password = nil
        new_uri
      end

      # normalize module name to use organization-module instead of organization/module
      def normalize_name(name)
        name.sub('/','-')
      end

      # get the module name from organization-module
      def module_name(name)
        # module name can't have dashes, so let's assume it is everything after the last dash
        name.rpartition('-').last
      end

      # deprecated
      alias :organization_name :module_name
    end
  end
end
