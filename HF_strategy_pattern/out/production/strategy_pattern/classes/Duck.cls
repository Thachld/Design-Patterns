/**
 * Created by brooks on 11/22/2020.
 */

public abstract with sharing class Duck {

    public virtual void quack(){
        System.debug('The duck goes quack');
    }

    public virtual void swim(){
        System.debug('The duck is swimming');
    }

    public void fly(){
        System.debug('The duck is flying');
    }
    public abstract void display();
}