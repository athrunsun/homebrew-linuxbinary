class Betwixt < Formula
    desc "Web Debugging Proxy based on Chrome DevTools Network panel."
    homepage "https://github.com/kdzwinel/betwixt"
    version "1.3.0"

    url "https://github.com/kdzwinel/betwixt/releases/download/#{version}/Betwixt-linux-x64.zip"
    sha256 "9fae4a5f68ce43fa22f473d33357bfd3f2a7f235df272ed684522c6a9a117dee"


    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/Betwixt" => "betwixt")
    end
end
