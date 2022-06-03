class IntellijIdeaNoJdk < Formula
    desc "The Most Intelligent Java IDE, ultimate edition."
    homepage "http://www.jetbrains.com/idea/"
    version "2018.1.4"
    url "https://download.jetbrains.com/idea/ideaIU-#{version}-no-jdk.tar.gz"
    sha256 "e1f426c24e9a31d016d7225763c926107eff419c99cf81c4b44caf047e38c74a"


    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/bin/idea.sh" => "idean")
    end

    def caveats; <<~EOS
        Executable is linked as "idean" so that it doesn't conflict with intellij-idea.
        EOS
    end
end
