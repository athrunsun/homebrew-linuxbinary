class IntellijIdea < Formula
    desc "The Most Intelligent Java IDE, ultimate edition."
    homepage "http://www.jetbrains.com/idea/"
    version "2018.3.4"
    url "https://download.jetbrains.com/idea/ideaIU-#{version}.tar.gz"
    sha256 "3866349090ea295c0ac4f1b77d20c74d8c9647e73e5ad541c61b3dfbfc4ab5f3"


    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/bin/idea.sh" => "idea")
    end

    def caveats; <<~EOS
        Executable is linked as "idea".
        EOS
    end
end
