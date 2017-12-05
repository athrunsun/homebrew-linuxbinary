class FirefoxDev < Formula
    desc 'The 100% fresh, free-range, ethical browser, with more speed, privacy and freedom. This is the developer version, in en-US.'
    homepage "https://www.mozilla.org/en-US/firefox/developer/all/"
    version "58.0"
    
    if MacOS.prefer_64_bit?
        url "https://download-installer.cdn.mozilla.net/pub/devedition/releases/58.0b8/linux-x86_64/en-US/firefox-58.0b8.tar.bz2"
        sha256 "3b4f80760f18a80379a3c6bb2137d5927f0acbe97d463b070c9a19901499f748"
    else
        url "https://download-installer.cdn.mozilla.net/pub/devedition/releases/58.0b8/linux-i686/en-US/firefox-58.0b8.tar.bz2"
        sha256 "aab158679af9bc8d3e7c6f49c22fc9eb38230f8612c7d28f5dc8e1b4af361b71"
    end

    conflicts_with "firefox-dev-zhcn"
    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/firefox" => "firefox-browser-dev")
    end

    def caveats; <<-EOS.undent
        Executable is linked as "firefox-browser-dev".
        For more usage information, see "firefox-browser-dev --help".
        EOS
    end
end
