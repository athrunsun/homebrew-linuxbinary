class FirefoxBeta < Formula
    desc 'The 100% fresh, free-range, ethical browser, with more speed, privacy and freedom. This is the beta version, in en-US.'
    homepage "https://www.mozilla.org/en-US/firefox/beta/all/"
    version "58.0"
    
    if MacOS.prefer_64_bit?
        url "https://download-installer.cdn.mozilla.net/pub/firefox/releases/58.0b8/linux-x86_64/en-US/firefox-58.0b8.tar.bz2"
        sha256 "0a649eef8e7075660ccf2c571c1c1989782b3384f732970a727115586d5833f5"
    else
        url "https://download-installer.cdn.mozilla.net/pub/firefox/releases/58.0b8/linux-i686/en-US/firefox-58.0b8.tar.bz2"
        sha256 "5c2b4df1f066f66b9ceee8efa501ed11314685ed24ed95b3340f1d5822b5c8a0"
    end

    conflicts_with "firefox-beta-zhcn"
    bottle :unneeded

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
