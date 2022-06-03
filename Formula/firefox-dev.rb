class FirefoxDev < Formula
    desc "The 100% fresh, free-range, ethical browser, with more speed, privacy and freedom. This is the developer version, in en-US."
    homepage "https://www.mozilla.org/en-US/firefox/developer/all/"
    version "58.0"
    
    url "https://download-installer.cdn.mozilla.net/pub/devedition/releases/58.0b8/linux-x86_64/en-US/firefox-58.0b8.tar.bz2"
    sha256 "3b4f80760f18a80379a3c6bb2137d5927f0acbe97d463b070c9a19901499f748"

    conflicts_with "firefox-dev-zhcn"

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
