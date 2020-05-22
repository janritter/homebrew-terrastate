# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://www.rubydoc.info/github/Homebrew/brew/master/Formula

class Terrastate < Formula
    desc "Tool to manage multiple state backends in Terraform - Allows Multi account setups"
    if OS.mac?
      url "https://github.com/janritter/terrastate/releases/download/1.5.0/darwin_amd64_terrastate"
      sha256 "2df78c68fa5c75a9bbcfe0f0a18659fea9ef82ae1cfc5c3fef6c57f42d58031e"
      version "1.5.0"
    elsif OS.linux?
      url "https://github.com/janritter/terrastate/releases/download/1.5.0/linux_amd64_terrastate"
      sha256 "242ee3843ce3b0abeab845f9b2bdc1d7198046eae520549b1f96f912cf5b7418"
      version "1.5.0"
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