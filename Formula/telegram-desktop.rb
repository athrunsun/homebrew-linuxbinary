class TelegramDesktop < Formula
    desc "Telegram, a new era of messaging."
    homepage "https://github.com/telegramdesktop/tdesktop"
    version "1.5.15"

    option "with-github", "Download installation file from github."

    if build.with? "github"
        url "https://github.com/telegramdesktop/tdesktop/releases/download/v#{version}/tsetup.#{version}.tar.xz"
    else
        url "https://updates.tdesktop.com/tlinux/tsetup.#{version}.tar.xz"
    end

    sha256 "19f522e136a9dd293be64d0be563873f594c71e4f807b0716216f45820a74322"

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
