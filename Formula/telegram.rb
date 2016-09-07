class Telegram < Formula
    desc "Telegram, a new era of messaging."
    homepage "https://telegram.org/"
    version "0.10.1"

    if MacOS.prefer_64_bit?
        url "https://updates.tdesktop.com/tlinux/tsetup.#{version}.tar.xz"
        sha256 "eb57fdf613c79be9408ac31476c37ad18a4991990fe8172e2007f6e90af4f1ee"
    else
        url "https://updates.tdesktop.com/tlinux32/tsetup32.#{version}.tar.xz"
        sha256 "c942b08fdc452f3cdc97be398a35d2d28b7b4063f97de4b68a180007b494950a"
    end

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink({"#{libexec}/Telegram" => "telegram"})
    end
end
