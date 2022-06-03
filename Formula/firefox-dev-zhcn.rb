class FirefoxDevZhcn < Formula
    desc "The 100% fresh, free-range, ethical browser, with more speed, privacy and freedom. This is the developer version, in zh-CN (Chinese (Simplified), i.e. 中文 (简体))."
    homepage "https://www.mozilla.org/zh-CN/firefox/developer/all/"
    version "58.0"
    
    url "https://download-installer.cdn.mozilla.net/pub/devedition/releases/58.0b8/linux-x86_64/zh-CN/firefox-58.0b8.tar.bz2"
    sha256 "9f76347abfdaa8643e75b9c691cfcbf64e2f358ff44eff6ed93ecc382d47596e"

    conflicts_with "firefox-dev"

    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/firefox" => "firefox-browser-dev")
    end

    def caveats; <<~EOS
        Executable is linked as "firefox-browser-dev".
        For more usage information, see "firefox-browser-dev --help".
        EOS
    end
end
