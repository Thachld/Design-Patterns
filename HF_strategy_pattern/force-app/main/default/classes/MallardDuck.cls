public with sharing class MallardDuck  extends  Duck{

    public MallardDuck(){
        this.setFlyType(new FlyWithWings());
        this.setQuackType(new StandardQuack());
    }
    public override void display() {
        System.debug('Displaying a Mallard Duck');
    }
}
