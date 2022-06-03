class IntellijIdeaCeNoJdk < Formula
    desc "The Most Intelligent Java IDE, community edition (without bundled JDK)."
    homepage "http://www.jetbrains.com/idea/"
    version "2018.1.4"
    url "https://download.jetbrains.com/idea/ideaIC-#{version}-no-jdk.tar.gz"
    sha256 "a31f0e08d718df6794e178e299cc41b16b62127d431a32b9a17568e7fb4b6c33"


    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/bin/idea.sh" => "ideacn")
    end

    def caveats; <<~EOS
        Executable is linked as "ideacn" so that it doesn't conflict with intellij-idea-ce.
        EOS
    end
end
