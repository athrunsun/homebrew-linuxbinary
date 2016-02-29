class Cow < Formula
    desc "HTTP proxy written in Go. COW can automatically identify blocked sites and use parent proxies to access."
    homepage "https://github.com/cyfdecyf/cow"
    version "0.9.6"

    if MacOS.prefer_64_bit?
        url "http://dl.chenyufei.info/cow/#{version}/cow-linux64-#{version}.gz"
        sha256 "5c198b65ecb5b379d75686e35d01e1468412d669cae91f1c448c54df7e5e7f30"
    else
        url "http://dl.chenyufei.info/cow/#{version}/cow-linux32-#{version}.gz"
        sha256 "90a98e5ebfa64bf386635fe17097f0cfa07447da15d0039c16eefc337bba6698"
    end

    bottle :unneeded

    def install
        libexec.install Dir["*"]

        if MacOS.prefer_64_bit?
            bin.install({"#{libexec}/cow-linux64-#{version}" => "cow"})
        else
            bin.install({"#{libexec}/cow-linux32-#{version}" => "cow"})
        end
    end
end