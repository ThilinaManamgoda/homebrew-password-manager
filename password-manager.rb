class PasswordManager < Formula
  desc "Encrypt your passwords into a file and have access with ease."
  homepage "https://github.com/ThilinaManamgoda/password-manager"
  version "v0.9.0"
  url "https://github.com/ThilinaManamgoda/password-manager/releases/download/v0.9.0/password-manager-darwin-v0.9.0.tar.gz"
  sha256 "7b3fc707a4c325470b592b52d1f4bfd04e6af3e8eb8509c5260daefa3b736f3d"

  def install
    bin.install "password-manager"
    system "chmod", "+x", "#{bin}/password-manager"
  end

  test do
    assert_equal "password-manager version " + version, shell_output("#{bin}/password-manager --version").strip
  end
end
