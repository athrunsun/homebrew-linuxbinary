class FirefoxBetaZhcn < Formula
    desc 'The 100% fresh, free-range, ethical browser, with more speed, privacy and freedom. This is the beta version, in zh-CN (Chinese (Simplified), i.e. 中文 (简体)).'
    homepage "https://www.mozilla.org/zh-CN/firefox/beta/all/"
    version "58.0"
    
    if MacOS.prefer_64_bit?
        url "https://download-installer.cdn.mozilla.net/pub/firefox/releases/58.0b8/linux-x86_64/zh-CN/firefox-58.0b8.tar.bz2"
        sha256 "ceacc67bd7db3dabc40fbcc65ccd615183ba1b68de863f5aab8208f9d1a2206a"
    else
        url "https://download-installer.cdn.mozilla.net/pub/firefox/releases/58.0b8/linux-i686/zh-CN/firefox-58.0b8.tar.bz2"
        sha256 "2fadfba2e7f50e6a78a956e0520c0acd3313332e68eeff26c70ae3788328842b"
    end

    conflicts_with "firefox-beta"
    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/firefox" => "firefox-browser-beta")
    end

    def caveats; <<-EOS.undent
        Executable is linked as "firefox-browser-beta".
        For more usage information, see "firefox-browser-beta --help".
        EOS
    end
end
