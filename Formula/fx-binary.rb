class FxBinary < Formula
    desc "Command-line tool and terminal JSON viewer"
    homepage "https://github.com/antonmedv/fx"
    version "3.1.0"

    url "https://github.com/antonmedv/fx/releases/download/#{version}/fx-linux"
    sha256 "7c2632ed00aebd70d44e3a7c0bf1e360ca8d7520f4cd37fbd46002a312708137"


    def install
        libexec.install Dir["*"]
        chmod(0755, "#{libexec}/fx-linux")
        bin.install_symlink("#{libexec}/fx-linux" => "fx")
    end

    def caveats; <<~EOS
        Executable linked as "fx".
        EOS
    end
end
