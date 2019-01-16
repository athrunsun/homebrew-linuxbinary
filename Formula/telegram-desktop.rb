class TelegramDesktop < Formula
    desc "Telegram, a new era of messaging."
    homepage "https://github.com/telegramdesktop/tdesktop"
    version "1.5.4"

    option "with-github", "Download installation file from github."

    if build.with? "github"
        url "https://github.com/telegramdesktop/tdesktop/releases/download/v#{version}/tsetup.#{version}.tar.xz"
    else
        url "https://updates.tdesktop.com/tlinux/tsetup.#{version}.tar.xz"
    end

    sha256 "c85e0b87b754e8c5088803f0af4fa0af2b3567f5594bbb2d91ee1506ac7849cc"

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/Telegram" => "telegram")
        bin.install_symlink("#{libexec}/Updater" => "telegram-updater")
    end

    def caveats; <<~EOS
        Executable is linked as "telegram".
        Auto updater is linked as "telegram-updater".
        EOS
    end
end
