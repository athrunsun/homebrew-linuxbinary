class FirefoxBeta < Formula
    desc "The 100% fresh, free-range, ethical browser, with more speed, privacy and freedom. This is the beta version, in en-US."
    homepage "https://www.mozilla.org/en-US/firefox/beta/all/"
    version "58.0"
    
    url "https://download-installer.cdn.mozilla.net/pub/firefox/releases/58.0b8/linux-x86_64/en-US/firefox-58.0b8.tar.bz2"
    sha256 "0a649eef8e7075660ccf2c571c1c1989782b3384f732970a727115586d5833f5"

    conflicts_with "firefox-beta-zhcn"

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
