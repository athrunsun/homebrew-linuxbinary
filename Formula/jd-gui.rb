class JdGui < Formula
    desc "A standalone graphical utility that displays Java sources from CLASS files."
    homepage "https://github.com/java-decompiler/jd-gui"
    version "1.4.0"

    url "https://github.com/java-decompiler/jd-gui/releases/download/v#{version}/jd-gui-#{version}.jar"
    sha256 "bdd2f3dc8750910e0d69378482cff57f2ff29d23983d1e55d266390527bd6b67"

    bottle :unneeded

    def install
        prefix.install Dir["*"]
        
        ("#{prefix}/jdgui").write <<-EOS.undent
            #!/usr/bin/env bash
            java -jar "$(brew --prefix jd-gui)/jd-gui-1.4.0.jar"
        EOS

        chmod(0755, "#{prefix}/jdgui")
        bin.install_symlink("#{prefix}/jdgui")
    end
end
