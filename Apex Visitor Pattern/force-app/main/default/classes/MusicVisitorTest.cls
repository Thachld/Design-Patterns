/**
 * Created by brooks on 12/30/2020.
 */

@IsTest
private class MusicVisitorTest {
    @IsTest
    static void testCalculatePrice() {

        MusicPriceVisitor visitor = new MusicPriceVisitor();
        visitor.musicList.add(new Music.Rock('MotorHead', 'MotorHead')); //2
        visitor.musicList.add(new Music.Rock('IronMaiden', 'IronMaiden')); //4
        visitor.musicList.add(new Music.Pop('When Doves Cry', 'Prince')); //7
        visitor.musicList.add(new Music.PopRock('Sweet Home Alabama', 'Second Helping')); // 9.50
        visitor.musicList.add(new Music.Electronic('Strobe', 'For bla ba')); // 13.50

        Test.startTest();
        visitor.calculatePrice();
        Test.stopTest();

        System.assertEquals(13.50, visitor.finalPrice);
    }
}