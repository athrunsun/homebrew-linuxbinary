class Telegram < Formula
    desc "Telegram, a new era of messaging."
    homepage "https://telegram.org/"
    version "0.9.40"

    if MacOS.prefer_64_bit?
        url "https://updates.tdesktop.com/tlinux/tsetup.#{version}.tar.xz"
        sha256 "f21947f3e486bd93a053b1aa00821dd419a431ca38ca798b4f5f6f6f33597a54"
    else
        url "https://updates.tdesktop.com/tlinux32/tsetup32.#{version}.tar.xz"
        sha256 "3b4c1b0744d8aa66c141a0d8cb97093a624e9a61906ffbd62b65cc6fa70efd81"
    end

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink({"#{libexec}/Telegram" => "telegram"})
    end
end