class ClashForWindows < Formula
    desc "A Windows/macOS/Linux GUI based on Clash and Electron"
    homepage "https://github.com/Fndroid/clash_for_windows_pkg"
    version "0.19.14"

    url "https://github.com/Fndroid/clash_for_windows_pkg/releases/download/#{version}/Clash.for.Windows-#{version}-x64-linux.tar.gz"
    sha256 "b0be6a36830ab18ee1545c5e997626736725abf7a1fe46b5c01343c028c6e512"

    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/cfw" => "clash-for-windows")
    end

    def caveats; <<~EOS
        Executable is linked as "clash-for-windows".
        EOS
    end
end
