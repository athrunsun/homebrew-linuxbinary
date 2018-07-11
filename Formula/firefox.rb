class Firefox < Formula
    desc 'The 100% fresh, free-range, ethical browser, with more speed, privacy and freedom. This is the stable version, in en-US.'
    homepage "https://www.mozilla.org/en-US/firefox/all/"
    version "61.0.1"

    if MacOS.prefer_64_bit?
        url "https://download-installer.cdn.mozilla.net/pub/firefox/releases/#{version}/linux-x86_64/en-US/firefox-#{version}.tar.bz2"
        sha256 "e59fc49056d03c9b614e8131551f9d1979a84459b9896ed42c04a3fd9dad2425"
    else
        url "https://download-installer.cdn.mozilla.net/pub/firefox/releases/#{version}/linux-i686/en-US/firefox-#{version}.tar.bz2"
        sha256 "3fcd3faf06280dc54bc4544a13d10d40f81d6ef5235624116e846c65000aad13"
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
