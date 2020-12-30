public with sharing class RedHeadDuck extends Duck{

    public RedHeadDuck(){
        this.setFlyType(new FlyWithWings());
        this.setQuackType(new StandardQuack());
    }
    public override void display() {
        System.debug('Display a Redhead Duck on the screen');
    }

}
