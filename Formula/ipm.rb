class Ipm < Formula
    desc "Client IPM Package"
    homepage "https://ipmhub.io"
  
    if Hardware::CPU.arm?
      url "https://github.com/ipmhubio/ipm/releases/download/0.5.5/ipm-osx-arm64-full.zip"
      sha256 "135b0924f2edf99c1a4bb5c992073cfc5735ead44b651a1f45493ab2cb94b3f1"
    else
      url "https://github.com/ipmhubio/ipm/releases/download/0.5.5/ipm-osx-x64-full.zip"
      sha256 "50f72ed4ba9b5aa5c873278a76424e768d4779a8929470e360e85c41aed92e89"
    end
  
    def install
      if Hardware::CPU.arm?
        ohai "Detected ARM architecture"
      else
        ohai "Detected Intel architecture"
      end
      ohai "Starting installation of IPM package"
      bin.install "ipm"
      ohai "IPM package installed successfully"
    end
  
  end