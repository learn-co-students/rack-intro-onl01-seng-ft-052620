require 'rack'

class MyServer
    def call(env)
        [200, {'Contenty-type' => 'text/html'}, html]
    end

    def html
        (Time.now.to_i % 2).zero? ?  ["<em>Hello</em>"] : ["<strong>Hello</strong>"]
    end
end