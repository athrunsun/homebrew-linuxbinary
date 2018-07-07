class TelegramDesktop < Formula
    desc "Telegram, a new era of messaging."
    homepage "https://github.com/telegramdesktop/tdesktop https://telegram.org/"
    version "1.3.9"

    option "with-github", "Download installation archive from https://github.com/telegramdesktop/tdesktop"

    if MacOS.prefer_64_bit?
        if build.with? "github"
            url "https://github.com/telegramdesktop/tdesktop/releases/download/v#{version}/tsetup.#{version}.tar.xz"
        else
            url "https://updates.tdesktop.com/tlinux/tsetup.#{version}.tar.xz"
        end

        sha256 "693e25ca19ba8fc80ed3ea112d7287beb96fe057c1bf1c8c58c40191dc2bd9f9"
    else
        if build.with? "github"
            url "https://github.com/telegramdesktop/tdesktop/releases/download/v#{version}/tsetup32.#{version}.tar.xz"
        else
            url "https://updates.tdesktop.com/tlinux32/tsetup32.#{version}.tar.xz"
        end

        sha256 "e37fa31ad99aff73cfd00cb40e095f4b90cffe42412c812a72f8672f5db78df0"
    end

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/Telegram" => "telegram")
        bin.install_symlink("#{libexec}/Updater" => "Updater")
    end

    def caveats; <<~EOS
        Executable linked as "telegram".
        Auto updater is linked as "Updater".
        EOS
    end
end
