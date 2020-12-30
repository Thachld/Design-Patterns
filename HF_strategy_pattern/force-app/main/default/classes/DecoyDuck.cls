/**
 * Created by brooks on 11/22/2020.
 */

public with sharing class DecoyDuck extends Duck{

    public override void display() {
        System.debug('Display a decoy duck');
    }
}