List<Music> lstMusic = new List<Music>();

lstMusic.add(new Music.Rock('Go Johnny go',
        'Chuck Berry Is on Top'));

lstMusic.add(new Music.Pop('When Doves Cry',
        'The Very Best Of Prince'));

lstMusic.add(new Music.Electronic('Strobe',
        'For Lack of a Better Name'));

for(Music m : lstMusic){
    if(m instanceof Music.Pop)
    {
        MusicPriceCalculator.calculatePrice((Music.Pop)m) ;
    }else if(m instanceof Music.Rock){
        MusicPriceCalculator.calculatePrice((Music.Rock)m) ;
    } else if(m instanceof Music.Electronic){
        MusicPriceCalculator.calculatePrice((Music.Electronic)m) ;
    }
} 
