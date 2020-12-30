/**
 * Created by brooks on 11/22/2020.
 */

public abstract with sharing class Duck {
    IQuackBehavior quack;
    IFlyBehavior fly;


    public virtual void quack(){
        quack.quack();
    }

    public virtual void swim(){
        System.debug('The duck is swimming');
    }

    public void fly(){
        fly.fly();
    }
    //allows us to to change the Implementation at run time
    public void setFlyType(IFlyBehavior flyBehavior){
        this.fly = flyBehavior;
    }
    //allows us to change the Implementation at run time
    public void setQuackType(IQuackBehavior quackBehavior){
        this.quack = quackBehavior;
    }
    public abstract void display();
}