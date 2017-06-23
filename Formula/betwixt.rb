class Betwixt < Formula
    desc "Web Debugging Proxy based on Chrome DevTools Network panel."
    homepage "https://github.com/kdzwinel/betwixt"
    version "1.3.0"

    if MacOS.prefer_64_bit?
        url "https://github.com/kdzwinel/betwixt/releases/download/#{version}/Betwixt-linux-x64.zip"
        sha256 "9fae4a5f68ce43fa22f473d33357bfd3f2a7f235df272ed684522c6a9a117dee"
    else
        url "https://github.com/kdzwinel/betwixt/releases/download/#{version}/Betwixt-linux-ia32.zip"
        sha256 "1f651960b0334bfcc43b0c9ece6426811dbd4a821662d287c30988f3ee1e0b19"
    end

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/Betwixt" => "betwixt")
    end
end
