class Server
  attr_accessor :port, :ip

  def initialize(ip, port)
    @ip = ip
    @port = port
  end

  def url
    "https://#{@ip}:#{@port}"
  end
end

def aws(server)
  def server.AWS? = true
  def server.aws_info = self.url
  server
end

def azure(server)
  def server.azure? = true
  server.port += 500
  server
end

s1 = aws(Server.new('12.34.56.78', 8080))
p s1.AWS?
p s1.aws_info

s2 = azure(Server.new('98.87.76.12', 1000))
p s2.azure?
p s2.url