class UngoogledChromium < Formula
    desc "Google Chromium, sans integration with Google"
    homepage "https://github.com/Eloston/ungoogled-chromium"
    version "70.0.3538.110"

    url "https://dl.opendesktop.org/api/files/download/id/1542708876/s/53b09686e9e33f0677c8c1d702ec9a96b01a1a59ea8b31fdc5ea5cb4a919edfa2cc8aaa6e900fa27413e613cb03a3bd14f4b02eeed8948ec03ba6d562c13da23/t/1549787470/u//ungoogled-chromium_70.0.3538.110-1_linux.tar.xz"
    sha256 "ba9be1cfe5dd52521c00771034aa0bfbf28716d0b175ba31062fa2b10944472a"

    bottle :unneeded

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
