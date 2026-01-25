Version = "2.0.80";
class Askreditor < Formula
  desc "CLI editor for .askr files with Supabase replace integration"
  homepage "https://github.com/sakitibi/askreditor"
  version Version

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/sakitibi/askreditor/releases/download/v#{Version}/askreditor-#{Version}-darwin-arm64.tar.gz"
      sha256 "ea28b290a55eb59aa723dfff8aaf245910894f6f86fec52588c61f7517633a6f"
    else
      url "https://github.com/sakitibi/askreditor/releases/download/v#{Version}/askreditor-#{Version}-darwin-amd64.tar.gz"
      sha256 "e5f4e05a228cb567c9a81ab1d3fa0130ee46d141ef7d85883983789bcd7b5668"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/sakitibi/askreditor/releases/download/v#{Version}/askreditor-#{Version}-linux-arm64.tar.gz"
      sha256 "849decbf031355ed34b3e6b9343261261591d1e5f85893b5e5d9a2759fb3f096"
    else
      url "https://github.com/sakitibi/askreditor/releases/download/v#{Version}/askreditor-#{Version}-linux-amd64.tar.gz"
      sha256 "06694f4dd0887c0f01617f2f4577163f166b507e00f078b6992fa23b904f1603"
    end
  end

  def install
    bin.install "askreditor"
  end

  test do
    system "#{bin}/askreditor", "--help"
  end
end
