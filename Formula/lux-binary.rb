class LuxBinary < Formula
    desc "Fast and simple video download library and CLI tool written in Go"
    homepage "https://github.com/iawia002/lux"
    version "0.12.0"

    url "https://github.com/iawia002/lux/releases/download/v#{version}/lux_#{version}_Linux_64-bit.tar.gz"
    sha256 "9800251b980a76b6a57f041947e7c7738c760e29894065d4df96edba09d3d79c"

    if Hardware::CPU.arm?
        url "https://github.com/iawia002/lux/releases/download/v#{version}/lux_#{version}_Linux_ARM64.tar.gz"
        sha256 "5721ab938c62d9199bc1a1721ab2939849dc35b089a179fc3ca7c3702babeb89"
    end

    conflicts_with "lux"

    def install
        libexec.install Dir["*"]
        chmod(0755, "#{libexec}/lux")
        bin.install_symlink("#{libexec}/lux" => "lux")
    end

    def caveats; <<~EOS
        Executable is linked as "lux".
        EOS
    end
end
