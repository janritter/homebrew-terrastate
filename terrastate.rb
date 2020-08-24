# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://www.rubydoc.info/github/Homebrew/brew/master/Formula

class Terrastate < Formula
    desc "Tool to manage multiple state backends in Terraform - Allows Multi account setups"
    if OS.mac?
      url "https://github.com/janritter/terrastate/releases/download/1.6.0/darwin_amd64_terrastate"
      sha256 "c62b186a89f28802d9c18388b79df6272ffe204f6476b52743fa4da209e8f4d5"
      version "1.6.0"
    elsif OS.linux?
      url "https://github.com/janritter/terrastate/releases/download/1.6.0/linux_amd64_terrastate"
      sha256 "f76c4c5201cd935400d19b752faf9de7adc30333b36937af33aae248c184f20f"
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