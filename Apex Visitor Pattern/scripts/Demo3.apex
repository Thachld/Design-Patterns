List<Music> lstMusic = new List<Music>();
lstMusic.add(new Music.Rock('Go Johnny go','Chuck Berry Is on Top'));
lstMusic.add(new Music.Pop('When Doves Cry','The Very Best Of Prince'));
lstMusic.add(new Music.Electronic('Strobe','For Lack of a Better Name'));
lstMusic.add(new Music.PopRock('Sweet Home Alabama','Second Helping'));

MusicPriceVisitor visitor = new MusicPriceVisitor();

for(Music m : lstMusic)
{
    m.accept(visitor);
}
System.debug('Final Amount - '+visitor.finalPrice); 
