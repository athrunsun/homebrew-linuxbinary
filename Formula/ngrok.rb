class Ngrok < Formula
  desc "expose a local server behind a NAT or firewall to the internet"
  homepage "https://ngrok.com"
  version "2.2.8"

  url "https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-#{version}-linux-amd64.zip"
  sha256 "1761f150c5e1d210e8148a863441af4bf0f0ae413d205fdb3ce9db4a3454d504"


  def install
    libexec.install Dir["*"]
    bin.install_symlink("#{libexec}/ngrok" => "ngrok")
  end

  def caveats; <<~EOS
    Executable is linked as "ngrok".
    For more usage information, see "ngrok help".
    EOS
  end

  test do
    assert_equal "ngrok version #{version}\n", shell_output("#{bin}/ngrok version")
  end
end
