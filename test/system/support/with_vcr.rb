# frozen_string_literal: true

# frozen_string_literal

require "vcr"

module WithVcr
  private

  def with_expiring_vcr_cassette
    class_name = self.class.name.underscore
    cassette_path = [class_name, name].join("/")

    VCR.use_cassette(cassette_path) do |cassette|
      if File.exist?(cassette.file)
        age = Time.current - File.mtime(cassette.file)
        FileUtils.rm(cassette.file) if age > 60 * 60 * 24
      end
      begin
        yield(cassette)
      rescue StandardError
        FileUtils.rm(cassette.file) if File.exist?(cassette.file)
        raise
      end
    end
  end
end
