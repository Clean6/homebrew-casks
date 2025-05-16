class Blackboardsync < Formula
  include Language::Python::Virtualenv

  desc "Command-line utility to sync Blackboard content"
  homepage "https://github.com/sanjacob/BlackboardSync"
  url "https://github.com/sanjacob/BlackboardSync/archive/refs/heads/main.zip"
  sha256 "4f58a5bb6458a0d259bba7ee0332f933ddab3bdee21f93cac0774416b0af14ca"
  license "MIT"
  head "https://github.com/sanjacob/BlackboardSync.git", branch: "main"

  depends_on "python@3.11"
  depends_on "pipx"

  resource "requests" do
    url "https://files.pythonhosted.org/packages/9d/be/10918a2eac4ae9f02f6cfe6414b7a155ccd8f7f9d4380b62918a991e0b99/requests-2.31.0.tar.gz"
    sha256 "942c5a758f98d790eaed1a29cb6eefc7ffb0d1cf7af05c3d2791656dbd6ad1e1"
  end

  resource "beautifulsoup4" do
    url "https://files.pythonhosted.org/packages/b3/ca/824b1195773ce6166d388573fc106ce56d4a805bd7427b624e063596ec58/beautifulsoup4-4.12.3.tar.gz"
    sha256 "74e3d1928edc070d21748185c46e3fb33490f22f52a3addee9aee0f4f7781051"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    system bin/"blackboardsync", "--version"
  end
end
