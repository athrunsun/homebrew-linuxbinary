class ClashForWindows < Formula
    desc "A Windows/macOS/Linux GUI based on Clash and Electron"
    homepage "https://github.com/Fndroid/clash_for_windows_pkg"
    version "0.19.6"

    url "https://github.com/Fndroid/clash_for_windows_pkg/releases/download/#{version}/Clash.for.Windows-#{version}-x64-linux.tar.gz"
    sha256 "fbd628037a53fe7bafe78eeea4bf36c19320b9e82b8ec5d7c8910ee8ae85133a"

    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/cfw" => "clash-for-windows")
    end

    def caveats; <<~EOS
        Executable is linked as "clash-for-windows".
        EOS
    end
end
