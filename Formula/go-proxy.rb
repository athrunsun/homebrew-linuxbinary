class GoProxy < Formula
    desc "A high performance HTTP(S), websocket, TCP, UDP,Secure DNS, Socks5 proxy server implemented by golang. Supports chain-style proxies,nat forwarding in different lan,TCP/UDP port forwarding, SSH forwarding."
    homepage "https://github.com/snail007/goproxy"
    version "6.5"

    if MacOS.prefer_64_bit?
        url "https://github.com/snail007/goproxy/releases/download/v#{version}/proxy-linux-amd64.tar.gz"
        sha256 "9eb69bbf2f85bef1eebe9bb0988cc8dd88c04cf822fa5783cd0cb74cd157a3a6"
    else
        url "https://github.com/snail007/goproxy/releases/download/v#{version}/proxy-linux-386.tar.gz"
        sha256 "8edf852556ed0e33a5f9c29439a2dba656c613735df3681ced3f8b400d048005"
    end

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
