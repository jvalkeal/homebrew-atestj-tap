# Generated with JReleaser 1.6.0 at 2023-06-30T14:22:31.412621268+01:00
class Demo < Formula
  desc "Demo App"
  homepage "https://github.com/jvalkeal/atestj"
  url "https://github.com/jvalkeal/atestj/releases/download/v0.0.1-M1/demo-0.0.1-M1.zip"
  version "0.0.1-M1"
  sha256 "c1e58bfbee36f6e3653d8c881e5fc55b77c72c53bb0905e2a23f1430abda6f36"
  license "Apache-2.0"

  depends_on "openjdk@17"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/demo" => "demo"
  end

  test do
    output = shell_output("#{bin}/demo --version")
    assert_match "0.0.1-M1", output
  end
end
