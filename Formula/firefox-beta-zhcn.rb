class FirefoxBetaZhcn < Formula
    desc "The 100% fresh, free-range, ethical browser, with more speed, privacy and freedom. This is the beta version, in zh-CN (Chinese (Simplified), i.e. 中文 (简体))."
    homepage "https://www.mozilla.org/zh-CN/firefox/beta/all/"
    version "58.0"
    
    url "https://download-installer.cdn.mozilla.net/pub/firefox/releases/58.0b8/linux-x86_64/zh-CN/firefox-58.0b8.tar.bz2"
    sha256 "ceacc67bd7db3dabc40fbcc65ccd615183ba1b68de863f5aab8208f9d1a2206a"

    conflicts_with "firefox-beta"

    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/firefox" => "firefox-browser-beta")
    end

    def caveats; <<~EOS
        Executable is linked as "firefox-browser-beta".
        For more usage information, see "firefox-browser-beta --help".
        EOS
    end
end
