class ShadowsocksGoServerBinary < Formula
    desc "Go port of shadowsocks, server binary."
    homepage "https://github.com/shadowsocks/shadowsocks-go"
    version "1.1.5"

    if MacOS.prefer_64_bit?
        url "https://github.com/shadowsocks/shadowsocks-go/releases/download/#{version}/shadowsocks-server-linux64-#{version}.gz"
        sha256 "22495e2e0bb36a6fbe3c8be75943613319d080825d6fdb2c0efeb3507882f90a"
    else
        url "https://github.com/shadowsocks/shadowsocks-go/releases/download/#{version}/shadowsocks-server-linux32-#{version}.gz"
        sha256 "002d4ec8931f43ae613dca8df8d9cae5258c1c9c3d3aa3b7c656bc4e32b4aba6"
    end

    bottle :unneeded

    def install
        libexec.install Dir["*"]

        if MacOS.prefer_64_bit?
            bin.install("#{libexec}/shadowsocks-server-linux64-#{version}" => "ssgo_server")
        else
            bin.install("#{libexec}/shadowsocks-server-linux32-#{version}" => "ssgo_server")
        end
    end
end
