class TorBrowser < Formula
  desc "Modified Firefox with privacy add-ons, encryption & advanced proxy"
  homepage "https://www.torproject.org/projects/torbrowser.html.en"
  version "7.0.10"

  if MacOS.prefer_64_bit?
    url "https://www.torproject.org/dist/torbrowser/#{version}/tor-browser-linux64-#{version}_en-US.tar.xz"
    sha256 "10eebffe22594d336441ed59e5edc97ba1d296eb7d94bca3ff94ebfac2da3e34"
  else
    url "https://www.torproject.org/dist/torbrowser/#{version}/tor-browser-linux32-#{version}_en-US.tar.xz"
    sha256 "e5a6e61e60d96c20fcc8a2285aacba10f72aeb84ba1cf4a186a1ae6bce475c56"
  end

  bottle :unneeded

  def install
    libexec.install Dir["*"]
    (libexec/"tor-browser_brew_exec").write <<-EOS.undent
      #!/usr/bin/env bash
      cd #{libexec}
      ./start-tor-browser.desktop "$@"
    EOS
    chmod(0755, "#{libexec}/tor-browser_brew_exec")
    bin.install_symlink("#{libexec}/tor-browser_brew_exec" => "tor-browser")
  end

  def caveats; <<-EOS.undent
    Executable is linked as "tor-browser".
    For more usage information, see "tor-browser --help".
    EOS
  end

  test do
    cd(libexec) do
      assert_equal "Launching './Browser/start-tor-browser --detach --verbose --version'...\nMozilla Firefox 52.5.0\n", shell_output("#{bin}/tor-browser --verbose --version 2>&1")
    end
  end
end
