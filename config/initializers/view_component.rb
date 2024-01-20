Rails.application.configure do
  # always generate view in sidecar directory
  config.view_component.generate.sidecar = true
end
