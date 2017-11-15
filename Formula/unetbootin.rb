class Unetbootin < Formula
    desc "UNetbootin allows you to create bootable Live USB drives for Ubuntu and other Linux distributions without burning a CD."
    homepage "https://unetbootin.github.io/"
    version "613"

    if MacOS.prefer_64_bit?
        url "https://launchpad.net/unetbootin/trunk/#{version}/+download/unetbootin-linux64-#{version}.bin"
        sha256 "845e653572dd8589ba5a76fcc1ea8c8c8d238e0e2a32db6a0c56b1f0b6620175"
    else
        url "https://launchpad.net/unetbootin/trunk/#{version}/+download/unetbootin-linux-#{version}.bin"
        sha256 "471cbbc7387a576041173dd2e480eca4abfe7eb056d3a5bec68e4cc4d177a94f"
    end

    bottle :unneeded

    def install
        prefix.install Dir["*"]

        if MacOS.prefer_64_bit?
            bin.install("#{prefix}/unetbootin-linux64-#{version}.bin" => "unetbootin")
        else
            bin.install("#{prefix}/unetbootin-linux-#{version}.bin" => "unetbootin")
        end
    end
end
