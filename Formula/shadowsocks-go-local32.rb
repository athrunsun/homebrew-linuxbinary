class ShadowsocksGoLocal32 < Formula
    desc "Go port of shadowsocks, client binary, 32bit."
    homepage "https://github.com/shadowsocks/shadowsocks-go"
    version "1.1.4"
    url "http://dl.chenyufei.info/shadowsocks/#{version}/shadowsocks-local-linux32-#{version}.gz"
    sha256 "5c31f12e2d2e4545e349910504fb84868f98a37a668478b68a7b28e862e2c05b"

    bottle :unneeded

    def install
        bin.install({"shadowsocks-local-linux32-#{version}" => "ssgo_local32"})
    end
end