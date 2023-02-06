# frozen_string_literal: true

Dir[Rails.root.join("lib", "monkey_patches", "*.rb")].sort.each { |f| require f }
