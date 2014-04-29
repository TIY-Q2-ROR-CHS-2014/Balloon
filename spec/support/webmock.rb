require 'webmock'

RSpec.configure do |config|
  config.around :each do |example|
    if example.metadata.has_key?(:integration)
      WebMock.allow_net_connect!
    else
      allowed_hosts = []
      allowed_hosts << /127.0.0.1:#{Capybara.current_session.server.port}/ if Capybara.current_session.server
      WebMock.disable_net_connect!(allow: allowed_hosts)
    end

    example.run

    WebMock.allow_net_connect!
  end
end
