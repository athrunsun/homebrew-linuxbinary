class ShadowsocksGoLocal < Formula
    desc "Go port of shadowsocks, client binary."
    homepage "https://github.com/shadowsocks/shadowsocks-go"
    version "1.1.4"
    url "http://dl.chenyufei.info/shadowsocks/#{version}/shadowsocks-local-linux64-#{version}.gz"
    sha256 "6b8dd8405070848c1c3233284ff0ebab91e34e2073efe28bcb3063506ed7b9c1"

    bottle :unneeded

    def install
        bin.install({"shadowsocks-local-linux64-#{version}" => "ssgo_local"})
    end
end