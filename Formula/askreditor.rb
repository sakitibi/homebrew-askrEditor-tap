Version = "2.0.110";
class Askreditor < Formula
  desc "CLI editor for .askr files with Supabase replace integration"
  homepage "https://github.com/sakitibi/askreditor"
  version Version

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/sakitibi/askreditor/releases/download/v#{Version}/askreditor-#{Version}-darwin-arm64.tar.gz"
      sha256 "01044bcdadd1e4e16af5257944d68907a7b2a9d9f182edbc389f18581371659b"
    else
      url "https://github.com/sakitibi/askreditor/releases/download/v#{Version}/askreditor-#{Version}-darwin-amd64.tar.gz"
      sha256 "9e82e7c603b4d2b8b4379323dacca528876f4fcb99b364cb122984cce81bf7e0"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/sakitibi/askreditor/releases/download/v#{Version}/askreditor-#{Version}-linux-arm64.tar.gz"
      sha256 "cab245385431816cf1d7e5eee5d318ccefd4ae805cc4bc1a82138a7cae69ca81"
    else
      url "https://github.com/sakitibi/askreditor/releases/download/v#{Version}/askreditor-#{Version}-linux-amd64.tar.gz"
      sha256 "fce7da27a4453b8e17ec343d3ab1be3e110283511906f8809843fa3970d28e8b"
    end
  end

  def install
    bin.install "askreditor"
  end

  test do
    system "#{bin}/askreditor", "--help"
  end
end
