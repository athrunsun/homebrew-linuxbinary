class Shuttle < Formula
    desc "A web proxy in Golang with amazing features"
    homepage "https://github.com/sipt/shuttle"
    version "0.6.0"

    url "https://github.com/sipt/shuttle/releases/download/alpha-v#{version}/shuttle_linux_amd64_alpha_v#{version}.zip"
    sha256 "7286dcf0cfe884e616d9743062624bc159e2f24e5e065076e83d285fd71383f5"


    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/shuttle" => "shuttle")

        (libexec/"start_shuttle").write <<~EOS
            #!/usr/bin/env bash
            cd $(brew --prefix shuttle)/libexec
            ./start.sh
        EOS

        chmod(0755, "#{libexec}/start_shuttle")
        bin.install_symlink("#{libexec}/start_shuttle" => "start_shuttle")
    end

    def caveats; <<~EOS
        Executable is linked as "shuttle" and "start_shuttle".
        EOS
    end
end
