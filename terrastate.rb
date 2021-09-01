# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://www.rubydoc.info/github/Homebrew/brew/master/Formula

class Terrastate < Formula
    desc "Tool to manage multiple state backends in Terraform - Allows Multi account setups"
    if OS.mac?
      url "https://github.com/janritter/terrastate/releases/download/1.9.0/darwin_amd64_terrastate"
      sha256 "698efa747a879306a33487db7956a32480ef722310fe613e86db7bab8ffce65a"
      version "1.9.0"
    elsif OS.linux?
      url "https://github.com/janritter/terrastate/releases/download/1.9.0/linux_amd64_terrastate"
      sha256 "6d3a1552ad0708541d98657b408116cb98cfd7fb54d8ea062a741874e3752083"
      version "1.9.0"
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