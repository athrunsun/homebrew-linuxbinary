class UngoogledChromium < Formula
    desc "Google Chromium, sans integration with Google"
    homepage "https://github.com/Eloston/ungoogled-chromium"
    version "75.0.3770.10"

    url "https://github.com/Eloston/ungoogled-chromium-binaries/releases/download/75.0.3770.100-1.2/ungoogled-chromium_75.0.3770.100-1.2_linux.tar.xz"
    sha256 "5ac39f58152844ad2f8b19769a52f83c84544b257a93abc2fdfc3a4bf613f9b8"


    conflicts_with "ungoogled-chromium-appimage", :because => "both install chrome binaries"

    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/chrome" => "ungoogled-chromium")
        bin.install_symlink("#{libexec}/chrome" => "ugc")
    end

    def caveats; <<~EOS
        Executable linked as "ungoogled-chromium" or "ugc".
        EOS
    end
end
