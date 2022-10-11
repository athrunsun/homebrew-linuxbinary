class IntellijIdeaCe < Formula
    desc "The Most Intelligent Java IDE, community edition."
    homepage "http://www.jetbrains.com/idea/"
    version "2022.2.3"
    url "https://download.jetbrains.com/idea/ideaIC-#{version}.tar.gz"
    sha256 "4ba5faafad48d58db5099fae080ae2238086d3d9803080082de8efe35d8bf4ed"


    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/bin/idea.sh" => "ideac")
    end

    def caveats; <<~EOS
        Executable is linked as "ideac".
        EOS
    end
end
