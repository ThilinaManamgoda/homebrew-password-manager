class PasswordManager < Formula
  desc "Encrypt your passwords into a file and have access with ease."
  homepage "https://github.com/ThilinaManamgoda/password-manager"
  version "v0.9.1"
  url "https://github.com/ThilinaManamgoda/password-manager/releases/download/v0.9.1/password-manager-darwin-v0.9.1.tar.gz"
  sha256 "15a14eac7b51b53b251b47500a4bc2bee68c8b9691c9dbc32817856fc2aa10aa"

  def install
    bin.install "password-manager"
    system "chmod", "+x", "#{bin}/password-manager"
  end

  test do
    assert_equal "password-manager version " + version, shell_output("#{bin}/password-manager --version").strip
  end
end
