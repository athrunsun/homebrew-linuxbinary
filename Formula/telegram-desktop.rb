class TelegramDesktop < Formula
    desc "Telegram, a new era of messaging."
    homepage "https://github.com/telegramdesktop/tdesktop"
    version "3.6.1"

    option "with-github", "Download installation file from github."

    if build.with? "github"
        url "https://github.com/telegramdesktop/tdesktop/releases/download/v#{version}/tsetup.#{version}.tar.xz"
    else
        url "https://updates.tdesktop.com/tlinux/tsetup.#{version}.tar.xz"
    end

    sha256 "a2a77622d205520826d4f585cf68d332d82fed53c4b12f6b6cb36dfbf5ccd5f8"

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
