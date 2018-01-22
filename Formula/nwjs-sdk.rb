class NwjsSdk < Formula
    desc "NW.js (previously known as node-webkit) lets you call all Node.js modules directly from DOM and enables a new way of writing applications with all Web technologies. This is the SDK version."
    homepage "https://nwjs.io/"
    version "0.26.0"

    if MacOS.prefer_64_bit?
        url "https://dl.nwjs.io/v#{version}/nwjs-sdk-v#{version}-linux-x64.tar.gz"
        sha256 "529d46d200dd7cf321e9c3fb3e1a30d250e574db90c2f10536b37668856f7537"
    else
        url "https://dl.nwjs.io/v#{version}/nwjs-sdk-v#{version}-linux-ia32.tar.gz"
        sha256 "178f6258f187073c78ea3319c853b23763beea59de8cdf1bd5f4803d876525ca"
    end

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/nw")
        bin.install_symlink("#{libexec}/nwjc")
    end

    def caveats; <<~EOS
        Chromium 62 + Node 8.7.0
        EOS
    end
end
