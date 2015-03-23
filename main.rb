require 'bundler'
Bundler.require

bacon_ipsum = ["Bacon ipsum dolor amet culpa ball tip hamburger irure ut alcatra shank pariatur tempor cupim ut tenderloin ullamco. Porchetta pastrami aliquip sausage sunt chuck frankfurter tongue eiusmod kielbasa jowl. Frankfurter eu occaecat beef, t-bone boudin pariatur ribeye andouille. Sausage duis culpa pig magna.","Picanha commodo landjaeger lorem, aute capicola pancetta. In ipsum consequat short ribs, reprehenderit officia ham hock sint landjaeger pork belly. Labore ipsum ad, cupim drumstick veniam swine officia. Bacon rump aliqua nostrud nulla picanha fatback venison enim non in frankfurter consectetur ad cillum. Labore lorem alcatra eu. Do drumstick bacon bresaola doner biltong shank t-bone strip steak laborum salami porchetta alcatra excepteur short ribs. Alcatra hamburger ground round incididunt ipsum drumstick.","Tail ground round labore alcatra qui ut turducken. Beef ribs aliquip tail sint bacon. Ipsum ground round pariatur, salami chuck landjaeger alcatra commodo tri-tip sausage pancetta pig turkey ea. Ribeye kevin excepteur cupim mollit sint t-bone.","Aliquip culpa meatloaf frankfurter cillum cupim picanha, tempor turkey. Labore shank filet mignon cow sunt. Chuck leberkas aliqua, sed pariatur dolore turkey occaecat ea frankfurter. Ut ground round sausage prosciutto. Sint voluptate pancetta doner venison est ball tip prosciutto cupim. Ex sausage nulla, duis pastrami pork loin sed pancetta.","Pastrami occaecat ut excepteur anim pancetta esse. Pariatur porchetta sirloin anim, ham pig officia cow nulla capicola. Short loin porchetta shoulder boudin rump. Aliquip officia duis kevin culpa tenderloin shankle dolore cupim. Beef ribs bresaola prosciutto laboris non est enim lorem. Ullamco beef ribs sirloin commodo sunt irure proident porchetta cow cupidatat spare ribs incididunt."]
$text = ''

get '/' do
  erb :main
end

post '/' do
  $text = ""
  words, paragraphs = params[:words].to_i, params[:paragraphs].to_i
  if words != 0
    i = 0
    bacon_ipsum2 = []
    while i < bacon_ipsum.length
      bacon_ipsum2 = bacon_ipsum2 + bacon_ipsum[i].split(/\W+/)
      i+=1
    end
    words_a = []
    words.times do
      words_a << bacon_ipsum2.sample
    end
    i = 0
    while i < words_a.length
      $text = "#{$text}" + "#{words_a[i]} "
      i+=1
    end
  elsif paragraphs != 0
    paragraphs_a = []
    paragraphs.times do
      paragraphs_a << bacon_ipsum.sample
    end

    i = 0

    while i < paragraphs_a.length
      $text = "#{$text}" + "#{paragraphs_a[i]}<br><br> "
      i+=1
    end

  end
  redirect '/'
end
