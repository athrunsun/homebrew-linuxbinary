class Telegram < Formula
    desc "Telegram, a new era of messaging."
    homepage "https://telegram.org/"
    version "1.2.6"

    if MacOS.prefer_64_bit?
        url "https://updates.tdesktop.com/tlinux/tsetup.#{version}.tar.xz"
        sha256 "d132a5710765dbd4120c13864ce81a546ea3b4fda14b9736ecc2310bd0513d3d"
    else
        url "https://updates.tdesktop.com/tlinux32/tsetup32.#{version}.tar.xz"
        sha256 "54dda2b1d0b961d0e0dc7fa70dcf4e54cb2836ce4c887526fb366044928576fc"
    end

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/Telegram" => "telegram")
    end
end
