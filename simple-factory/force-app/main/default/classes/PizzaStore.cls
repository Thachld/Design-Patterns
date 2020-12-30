public with sharing class PizzaStore {

    public Pizza orderPizza(String type){
        Pizza pizza = null;
        pizza = SimpleFactory.createPizza(type);
        System.debug(pizza);
        pizza.prepare();
        pizza.bake();
        pizza.cut();
        pizza.box();
        return pizza;

    }
}
