class FirefoxBeta < Formula
    desc 'The 100% fresh, free-range, ethical browser, with more speed, privacy and freedom. This is the beta version, in en-US.'
    homepage "https://www.mozilla.org/en-US/firefox/beta/all/"
    version "57.0"
    
    if MacOS.prefer_64_bit?
        url "https://download.mozilla.org/?product=firefox-57.0b10-SSL&os=linux64&lang=en-US"
        sha256 "7cc8a20cf7c6223bd14a6f6eb52810d985dbddb7a20367e4c16a45a5290890bf"
    else
        url "https://download.mozilla.org/?product=firefox-57.0b10-SSL&os=linux&lang=en-US"
        sha256 "51e65403b3d5c153c2c62bf1f3702f2b037f204b7fc8d11b1dd6bac5042bd854"
    end

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
