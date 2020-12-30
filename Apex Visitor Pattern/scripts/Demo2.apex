List<Music> lstMusic = new List<Music>();

lstMusic.add(new Music.Pop('Pop Song',
        'Pop Album'));

lstMusic.add(new Music.PopRock('PopRock Song',
        'PopRock Album'));


for(Music m : lstMusic){
    if(m instanceof Music.Pop)
    {
        MusicPriceCalculator.calculatePrice((Music.Pop)m) ;
    }else if(m instanceof Music.Rock){
        MusicPriceCalculator.calculatePrice((Music.Rock)m) ;
    } else if(m instanceof Music.Electronic){
        MusicPriceCalculator.calculatePrice((Music.Electronic)m) ;
    }  else if(m instanceof Music.PopRock){
        MusicPriceCalculator.calculatePrice((Music.PopRock)m) ;
    }
} 
