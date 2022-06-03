class Dbdeployer < Formula
    desc "A tool that deploys MySQL database servers easily."
    homepage "https://github.com/datacharmer/dbdeployer"
    version "1.4.0"

    url "https://github.com/datacharmer/dbdeployer/releases/download/#{version}/dbdeployer-#{version}.linux.tar.gz"
    sha256 "5065d1e7ee2ff89f2d568bf5075689a640915bb108a3559d82f405d264787d35"


    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/dbdeployer-#{version}.linux" => "dbdeployer")
    end

    def caveats; <<~EOS
        Executable is linked as "dbdeployer".
        EOS
    end
end
