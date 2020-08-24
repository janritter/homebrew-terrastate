# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://www.rubydoc.info/github/Homebrew/brew/master/Formula

class Terrastate < Formula
    desc "Tool to manage multiple state backends in Terraform - Allows Multi account setups"
    if OS.mac?
      url "https://github.com/janritter/terrastate/releases/download/1.6.0/darwin_amd64_terrastate"
      sha256 "d5c5a3768eb4b2e3d66e6eb7ba3fcbca66b968caef69f93242082bb5f972b6af"
      version "1.6.0"
    elsif OS.linux?
      url "https://github.com/janritter/terrastate/releases/download/1.6.0/linux_amd64_terrastate"
      sha256 "805913a649323246ee2c84c3ec4fcb5ca64abf7d6d7b342c1951b6728f16b9cb"
      version "1.6.0"
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