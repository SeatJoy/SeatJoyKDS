platform = RUBY_PLATFORM

if Rails.env.production?
  if platform.include?("darwin")      # OS X machine
    binary_path = Rails.root.join("bin", "wkhtmltopdf-0.9.9-OS-X-i386").to_s
  elsif platform.include?("64-linux") # 64-bit linux machine
    binary_path = Rails.root.join("bin", "wkhtmltopdf").to_s
  end
else
  # binary_path = Rails.root.join("bin", "wkhtmltopdf-dev").to_s - when App is stored in linux partition. If it's stored on NTFS partition, this file can't be set as executable from a Linux environment.
  binary_path = "/usr/local/bin/wkhtmltopdf-dev"
end

WickedPdf.config = {
  :wkhtmltopdf => binary_path,
  #:layout => "pdf.html",
  # :exe_path => "/usr/bin/wkhtmltopdf" #path inside OS
  :exe_path => binary_path #path inside Rails App
}
