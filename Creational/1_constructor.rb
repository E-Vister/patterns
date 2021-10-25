class Server
  def initialize(name, ip)
    @name = name
    @ip = ip
  end

  def get_url
    "https://#{@ip}:80"
  end
end

aws = Server.new('AWS German', '82.21.21.32').freeze
puts aws.get_url