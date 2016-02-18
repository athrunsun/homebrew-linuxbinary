class Telegram < Formula
    desc "Telegram, a new era of messaging."
    homepage "https://telegram.org/"
    version "0.9.24"
    url "https://updates.tdesktop.com/tlinux/tsetup.#{version}.tar.xz"
    sha256 "551a786ac6bcdccccb8d14d493e46d0238d70d16a6cf190a37ee6a41264139c3"

    bottle :unneeded

    def install
        bin.install({"Telegram/Telegram" => "telegram"})
    end
end