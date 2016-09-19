class Telegram < Formula
    desc "Telegram, a new era of messaging."
    homepage "https://telegram.org/"
    version "0.10.6"

    if MacOS.prefer_64_bit?
        url "https://updates.tdesktop.com/tlinux/tsetup.#{version}.tar.xz"
        sha256 "4379d406a79f9579f55a14f61fe999229618d481131fa18e43b6e273adfeca70"
    else
        url "https://updates.tdesktop.com/tlinux32/tsetup32.#{version}.tar.xz"
        sha256 "33d5c8556ebbc6582352f3566bcbdeb18d6223a14a075659a9c5d38704aaff84"
    end

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink({"#{libexec}/Telegram" => "telegram"})
    end
end
