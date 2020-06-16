# @param {String} ip
# @return {String}
def valid_ip_address(ip)
  
    if ip.include?(":") && ip.count(":") === 7
      output = ipv6(ip)
    elsif ip.include?(".") && ip.count(".") === 3
      output = ipv4(ip)
    else
      output = 'Neither'
    end
    
    output
  end
  
def ipv6(ip)
    check = ip.split(":").all? { |s| s === '0' ? true : s.hex != 0 && s.length <= 4 }
    
    check ? 'IPv6' : 'Neither'
end
  
def ipv4(ip)
    check = ip.split(".").all? { |s| s.match?(/^[0-9]*$/) && s.to_i >= 0 && s.to_i <= 255 && s[0] != '0' }
    
    check ? 'IPv4' : 'Neither'
end