class ShadowsocksGoServerBinary < Formula
    desc "Go port of shadowsocks, server binary."
    homepage "https://github.com/shadowsocks/shadowsocks-go"
    version "1.1.5"

    url "https://github.com/shadowsocks/shadowsocks-go/releases/download/#{version}/shadowsocks-server-linux64-#{version}.gz"
    sha256 "22495e2e0bb36a6fbe3c8be75943613319d080825d6fdb2c0efeb3507882f90a"


    def install
        libexec.install Dir["*"]
        bin.install("#{libexec}/shadowsocks-server-linux64-#{version}" => "ssgo_server")
    end
end
