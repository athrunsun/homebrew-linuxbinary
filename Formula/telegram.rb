class Telegram < Formula
    desc "Telegram, a new era of messaging."
    homepage "https://telegram.org/"
    version "0.10.19"

    if MacOS.prefer_64_bit?
        url "https://updates.tdesktop.com/tlinux/tsetup.#{version}.tar.xz"
        sha256 "586a6d98d8ee412581a73e501287f4bc972fa966f34e62c245878e6ef183042b"
    else
        url "https://updates.tdesktop.com/tlinux32/tsetup32.#{version}.tar.xz"
        sha256 "b0f9c9ff51f8caf67f549960b2c4fde3d2d683ac8e77b3ed1c2d4c9e7f3283b3"
    end

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink({"#{libexec}/Telegram" => "telegram"})
    end
end
