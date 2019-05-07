# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://www.rubydoc.info/github/Homebrew/brew/master/Formula

class Terrastate < Formula
    desc "Tool to manage multiple state backends in Terraform - Allows Multi account setups"
    if OS.mac?
      url "https://github.com/janritter/terrastate/releases/download/1.2.0/darwin_amd64_terrastate"
      sha256 "8432deaa894579e878fdaf6bc654d2c1dc1bed944a9ed9dbdfed855be3fc75c7"
    elsif OS.linux?
      url "https://github.com/janritter/terrastate/releases/download/1.2.0/linux_amd64_terrastate"
      sha256 "fe2ea08b74d2c237eaa7858675d094b1e58f9394e07289c60dc92fcfd76a93b8"
    end

    def install
      if OS.mac?
        bin.install "darwin_amd64_terrastate"
        mv bin/"darwin_amd64_terrastate", bin/"terrastate"
      elsif OS.linux?
        bin.install "linux_amd64_terrastate"
        mv bin/"linux_amd64_terrastate", bin/"terrastate"
      end
    end
  
    test do
      system "false"
    end
  end