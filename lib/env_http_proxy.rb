require "env_http_proxy/version"
require 'net/http'
require 'uri'

module Net
  class << HTTP
    alias_method :org_new, :new
    def new address, port = 80, proxy_addr = nil, proxy_port = nil, proxy_user=nil, proxy_pass=nil
      if ENV['http_proxy'].nil?
        org_new(address, port, proxy_addr, proxy_port, proxy_user, proxy_pass)
      else
        org_new(address, port, *env_proxy)
      end
    end

    private
    def env_proxy
      URI.parse(ENV['http_proxy']).instance_eval do
        [host, port, user, password]
      end
    end
  end
end
