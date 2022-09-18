class Rack::Attack
    Rack::Attack.cache.store = ActiveSupport::Cache::MemoryStore.new

    safelist('allow-localhost') do |req|
        '127.0.0.1' == req.ip || '::1' == req.ip
    end

    throttle('red/ip', limit: 5, period: 5) do |req|
        req.ip
    end

    throttle('logins/email', limit: 5, period: 20.seconds) do |req|
        if req.path == '/usuarios/sign_in' && req.post?
            req.params['email'].presence
        end
    end
end