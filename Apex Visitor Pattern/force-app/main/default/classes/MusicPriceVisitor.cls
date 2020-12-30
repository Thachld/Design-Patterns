/**
 * Created by brooks on 12/30/2020.
 */

public with sharing class MusicPriceVisitor implements IMusicVisitor{

    public double finalPrice = 0;
    public List<Music> musicList = new List<Music>();

    public MusicPriceVisitor(){}

    public void calculatePrice(){
        for (Music music : this.musicList){
            music.accept(this);
        }
    }


    public void visit(Music.Rock music) {
        System.debug('In Rock Music Algo');
        finalPrice += 2;
    }

    public void visit(Music.Pop music) {
        System.debug('In pop music algo');
        finalPrice += 3;
    }

    public void visit(Music.Electronic music) {
        System.debug('In Electronic Music algo');
        finalPrice += 4;
    }

    public void visit(Music.PopRock music) {
        System.debug('In pop rock algo');
        finalPrice += 2.50;
    }
}