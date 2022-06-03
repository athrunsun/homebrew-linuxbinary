class Unetbootin < Formula
    desc "UNetbootin allows you to create bootable Live USB drives for Ubuntu and other Linux distributions without burning a CD."
    homepage "https://unetbootin.github.io/"
    version "613"

    url "https://launchpad.net/unetbootin/trunk/#{version}/+download/unetbootin-linux64-#{version}.bin"
    sha256 "845e653572dd8589ba5a76fcc1ea8c8c8d238e0e2a32db6a0c56b1f0b6620175"


    def install
        prefix.install Dir["*"]
        bin.install("#{prefix}/unetbootin-linux64-#{version}.bin" => "unetbootin")
    end
end
