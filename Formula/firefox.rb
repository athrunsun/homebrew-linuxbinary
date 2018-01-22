class Firefox < Formula
    desc 'The 100% fresh, free-range, ethical browser, with more speed, privacy and freedom. This is the stable version, in en-US.'
    homepage "https://www.mozilla.org/en-US/firefox/all/"
    version "57.0.1"

    if MacOS.prefer_64_bit?
        url "https://download-installer.cdn.mozilla.net/pub/firefox/releases/#{version}/linux-x86_64/en-US/firefox-#{version}.tar.bz2"
        sha256 "c232cd66ecebae6dcb0e25dbdd0901d238ea218ab8256adf1afacc1fe4a1941c"
    else
        url "https://download-installer.cdn.mozilla.net/pub/firefox/releases/#{version}/linux-i686/en-US/firefox-#{version}.tar.bz2"
        sha256 "1f749be0e9591606ac1656ef65afe302cc3afc487a779b02871098f2702bb079"
    end

    conflicts_with "firefox-zhcn"
    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/firefox" => "firefox-browser")
    end

    def caveats; <<~EOS
        Executable is linked as "firefox-browser".
        For more usage information, see "firefox-browser --help".
        EOS
    end
end
