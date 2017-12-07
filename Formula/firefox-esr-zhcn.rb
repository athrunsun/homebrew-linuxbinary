class FirefoxEsrZhcn < Formula
    desc 'The 100% fresh, free-range, ethical browser, with more speed, privacy and freedom. This is the ESR version, in zh-CN (Chinese (Simplified), i.e. 中文 (简体)).'
    homepage "https://www.mozilla.org/zh-CN/firefox/organizations/all/"
    version "52.5.0"

    if MacOS.prefer_64_bit?
        url "https://download-installer.cdn.mozilla.net/pub/firefox/releases/#{version}esr/linux-x86_64/zh-CN/firefox-#{version}esr.tar.bz2"
        sha256 "9155bf7546ffc31865ebdaf8f8a3961627ccfc1a829194ab6611f16b18668abe"
    else
        url "https://download-installer.cdn.mozilla.net/pub/firefox/releases/#{version}esr/linux-i686/zh-CN/firefox-#{version}esr.tar.bz2"
        sha256 "a9c6dc211631ddc597edb5f4f0db8a1a68ee1a1927e2a605fcbf41aa31694027"
    end

    conflicts_with "firefox-esr"
    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/firefox" => "firefox-esr")
    end

    def caveats; <<-EOS.undent
        Executable is linked as "firefox-esr".
        For more usage information, see "firefox-esr --help".
        EOS
    end
end
