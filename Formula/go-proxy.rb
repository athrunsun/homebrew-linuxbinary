class GoProxy < Formula
    desc "A high performance HTTP(S), websocket, TCP, UDP,Secure DNS, Socks5 proxy server implemented by golang. Supports chain-style proxies,nat forwarding in different lan,TCP/UDP port forwarding, SSH forwarding."
    homepage "https://github.com/snail007/goproxy"
    version "7.3"

    url "https://github.com/snail007/goproxy/releases/download/v#{version}/proxy-linux-amd64.tar.gz"
    sha256 "b7b082f57707400a545edc83c9302e2935ed6426b332221a47f2ec1420db694f"

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/proxy" => "goproxy")
    end

    def caveats; <<~EOS
        Executable linked as "goproxy".
        EOS
    end
end
