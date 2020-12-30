/**
 * Created by brooks on 12/30/2020.
 */

public with sharing class MusicPriceCalculator {

    //Note that these methods are being overloaded. We can repeat the same method name if the params or return type
    //change

    public static void calculatePrice(Music.Pop popMusic){
        System.debug('calculating the price of pop music');
    }

    public static void calculatePrice(Music.Rock rockMusic){
        System.debug('calculating the price of rock music');
    }

    public static void calculatePrice(Music.Electronic electronicMusic){
        System.debug('calculating the price of electronic music');
    }

    public static void calculatePrice(Music.PopRock popRockMusic){
        System.debug('calculating the price of pop rock music');
    }
}