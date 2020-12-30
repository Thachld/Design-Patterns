public with sharing class RubberDuck extends Duck{

    public RubberDuck(){
        this.setQuackType(new MuteQuack());
        this.setFlyType(new FlyNoWay());
    }
    public override void display() {
        System.debug('Displaying a Rubber Duck');
    }

    public override void quack(){
        System.debug('The rubber duck goes squeak');
    }
}
