class GoProxy < Formula
    desc "A high performance HTTP(S), websocket, TCP, UDP,Secure DNS, Socks5 proxy server implemented by golang. Supports chain-style proxies,nat forwarding in different lan,TCP/UDP port forwarding, SSH forwarding."
    homepage "https://github.com/snail007/goproxy"
    version "7.4"

    url "https://github.com/snail007/goproxy/releases/download/v#{version}/proxy-linux-amd64.tar.gz"
    sha256 "ee792dc9851f670da08225c8cb2749720708bd5eebab3a73fdc66708e5dd5efe"


    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/proxy" => "goproxy")
    end

    def caveats; <<~EOS
        Executable linked as "goproxy".
        EOS
    end
end
