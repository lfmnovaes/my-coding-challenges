def domain_name(url)
  url.split(/[.,:\/\/]/).reject { |word| word.empty? || word == 'www' || word == 'http' || word == 'https' }.first
end

p domain_name('http://google.com') # 'google'
p domain_name('http://google.co.jp') # 'google'
p domain_name('www.xakep.ru') # 'xakep'
p domain_name('https://youtube.com') # 'youtube'
