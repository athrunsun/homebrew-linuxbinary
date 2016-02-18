class Telegram32 < Formula
    desc "Telegram, a new era of messaging, 32bit."
    homepage "https://telegram.org/"
    version "0.9.24"
    url "https://updates.tdesktop.com/tlinux32/tsetup32.#{version}.tar.xz"
    sha256 "0b8264bb05192ce690fd83364963529d84f438fe315bf3162d2f7c6cd881e340"

    bottle :unneeded

    def install
        bin.install({"Telegram/Telegram" => "telegram32"})
    end
end