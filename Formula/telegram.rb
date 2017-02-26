class Telegram < Formula
    desc "Telegram, a new era of messaging."
    homepage "https://telegram.org/"
    version "1.0.14"

    if MacOS.prefer_64_bit?
        url "https://updates.tdesktop.com/tlinux/tsetup.#{version}.tar.xz"
        sha256 "88dcffe9fe21855dbf335ad6b94d5a998773d4339b5ca42ce53ae01a2835f448"
    else
        url "https://updates.tdesktop.com/tlinux32/tsetup32.#{version}.tar.xz"
        sha256 "5902d7164073d61056629490fef041c84083d185e8aa5edf8bffacb52bdb5856"
    end

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink({"#{libexec}/Telegram" => "telegram"})
    end
end
