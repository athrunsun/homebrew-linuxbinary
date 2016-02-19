class Telegram < Formula
    desc "Telegram, a new era of messaging."
    homepage "https://telegram.org/"
    version "0.9.24"

    if MacOS.prefer_64_bit?
        url "https://updates.tdesktop.com/tlinux/tsetup.#{version}.tar.xz"
        sha256 "551a786ac6bcdccccb8d14d493e46d0238d70d16a6cf190a37ee6a41264139c3"
    else
        url "https://updates.tdesktop.com/tlinux32/tsetup32.#{version}.tar.xz"
        sha256 "0b8264bb05192ce690fd83364963529d84f438fe315bf3162d2f7c6cd881e340"
    end

    bottle :unneeded

    def install
        bin.install({"Telegram" => "telegram"})
    end
end