class ElectronSsr < Formula
    desc "Shadowsocksr client using electron"
    homepage "https://github.com/erguotou520/electron-ssr"
    version "0.2.4"

    url "https://github.com/erguotou520/electron-ssr/releases/download/v#{version}/electron-ssr-#{version}.tar.gz"
    sha256 "9252536da44ef1cb61a65e3ee6f5ffb330c885f403f6d4eddf55a59a49be17bf"

    conflicts_with "electron-ssr-appimage", :because => "both install `electron-ssr` binary"

    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/electron-ssr" => "electron-ssr")
    end

    def caveats; <<~EOS
        Executable is linked as "electron-ssr".
        EOS
    end
end
