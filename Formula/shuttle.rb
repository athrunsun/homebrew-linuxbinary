class Shuttle < Formula
    desc "A web proxy in Golang with amazing features"
    homepage "https://github.com/sipt/shuttle"
    version "0.6.0"

    url "https://github.com/sipt/shuttle/releases/download/alpha-v#{version}/shuttle_linux_amd64_alpha_v#{version}.zip"
    sha256 "7286dcf0cfe884e616d9743062624bc159e2f24e5e065076e83d285fd71383f5"

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/shuttle" => "shuttle")
        bin.install_symlink("#{libexec}/start.sh" => "start_shuttle")
    end

    def caveats; <<~EOS
        Executable is linked as "shuttle" and "start_shuttle".
        EOS
    end
end
