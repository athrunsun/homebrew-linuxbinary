class FirefoxEsr < Formula
    desc 'The 100% fresh, free-range, ethical browser, with more speed, privacy and freedom. This is the ESR version, in en-US.'
    homepage "https://www.mozilla.org/en-US/firefox/organizations/all/"
    version "52.5.0"

    if MacOS.prefer_64_bit?
        url "https://download-installer.cdn.mozilla.net/pub/firefox/releases/#{version}esr/linux-x86_64/en-US/firefox-#{version}esr.tar.bz2"
        sha256 "234a8debdbdb3a715708aa2d4f9844811e7b416a442d072dcc28867442a066f3"
    else
        url "https://download-installer.cdn.mozilla.net/pub/firefox/releases/#{version}esr/linux-i686/en-US/firefox-#{version}esr.tar.bz2"
        sha256 "52abfaa69316d97e3025ef4fb4b7fd89d42e7dd98d61849148d8d19c960c176f"
    end

    conflicts_with "firefox-esr-zhcn"
    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/firefox" => "firefox-esr")
    end

    def caveats; <<~EOS
        Executable is linked as "firefox-esr".
        For more usage information, see "firefox-esr --help".
        EOS
    end
end
