class PasswordManager < Formula
  desc "Encrypt your passwords into a file and have access with ease."
  homepage "https://github.com/ThilinaManamgoda/password-manager"
  version "v0.8.0"
  url "https://github.com/ThilinaManamgoda/password-manager/releases/download/v0.8.0/password-manager-darwin-v0.8.0.tar.gz"
  sha256 "a9a5081cbe27250902cc854a9605a6cb0ee31e76c9cdf3d25895f35d32707a6a"

  def install
    bin.install "password-manager"
    system "chmod", "+x", "#{bin}/password-manager"
  end

  test do
    assert_equal "password-manager version " + version, shell_output("#{bin}/password-manager --version").strip
  end
end
