public with sharing class MuteQuack implements IQuackBehavior{

    public void quack() {
        System.debug('Silence');
    }
}
