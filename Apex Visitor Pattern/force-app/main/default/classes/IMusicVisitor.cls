/**
 * Created by brooks on 12/30/2020.
 * @DESCRIPTION This is a replaces for the MusicPriceCalculator class to solve the double dispatch problem
 */

public interface IMusicVisitor {

    void visit(Music.Rock music);
    void visit(Music.Pop music);
    void visit(Music.Electronic music);
    void visit(Music.PopRock music);

}