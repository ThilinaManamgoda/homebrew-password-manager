class PasswordManagerAT090 < Formula
  desc "Encrypt your passwords into a file and have access with ease."
  homepage "https://github.com/ThilinaManamgoda/password-manager"
  version "v0.9.0"
  url "https://github.com/ThilinaManamgoda/password-manager/releases/download/v0.9.0/password-manager-darwin-v0.9.0.tar.gz"
  sha256 "816ecce9b091d79fcc77c440aec1bb2bba6f5496c470d4cd272b00bb69e30d14"

  def install
    bin.install "password-manager"
    system "chmod", "+x", "#{bin}/password-manager"
  end

  test do
    assert_equal "password-manager version " + version, shell_output("#{bin}/password-manager --version").strip
  end
end
