class FirefoxEsrZhcn < Formula
    desc "The 100% fresh, free-range, ethical browser, with more speed, privacy and freedom. This is the ESR version, in zh-CN (Chinese (Simplified), i.e. 中文 (简体))."
    homepage "https://www.mozilla.org/zh-CN/firefox/organizations/all/"
    version "52.5.0"

    url "https://download-installer.cdn.mozilla.net/pub/firefox/releases/#{version}esr/linux-x86_64/zh-CN/firefox-#{version}esr.tar.bz2"
    sha256 "9155bf7546ffc31865ebdaf8f8a3961627ccfc1a829194ab6611f16b18668abe"

    conflicts_with "firefox-esr"

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
