class Telegram < Formula
    desc "Telegram, a new era of messaging."
    homepage "https://telegram.org/"
    version "1.1.23"

    if MacOS.prefer_64_bit?
        url "https://updates.tdesktop.com/tlinux/tsetup.#{version}.tar.xz"
        sha256 "e7955a6ad0ce9105ac3c2ae6ddf1d480430acb0e295149f0d08e951ece74000c"
    else
        url "https://updates.tdesktop.com/tlinux32/tsetup32.#{version}.tar.xz"
        sha256 "d3a93bd958e3e692e39c9744e62a967e42ee089c68a106a3ab236937252111ef"
    end

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/Telegram" => "telegram")
    end
end
