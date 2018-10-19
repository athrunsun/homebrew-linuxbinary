class TelegramDesktop < Formula
    desc "Telegram, a new era of messaging."
    homepage "https://github.com/telegramdesktop/tdesktop"
    version "1.4.3"

    option "with-github", "Download installation file from github."

    if MacOS.prefer_64_bit?
        if build.with? "github"
            url "https://github.com/telegramdesktop/tdesktop/releases/download/v#{version}/tsetup.#{version}.tar.xz"
        else
            url "https://updates.tdesktop.com/tlinux/tsetup.#{version}.tar.xz"
        end

        sha256 "c839297d9559cc54ee9e5054c4e997f86384b3f0e603c38b7708af686894a8fc"
    else
        if build.with? "github"
            url "https://github.com/telegramdesktop/tdesktop/releases/download/v#{version}/tsetup32.#{version}.tar.xz"
        else
            url "https://updates.tdesktop.com/tlinux32/tsetup32.#{version}.tar.xz"
        end

        sha256 "cc8d6deec4d10667369bbfd32c04f8e03504037521cb4834d811a87571133bec"
    end

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
