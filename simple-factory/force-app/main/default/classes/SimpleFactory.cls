public with sharing class SimpleFactory {


    public static Pizza createPizza(String type) {

        Pizza pizza = null;
        switch on type{
            when 'cheese'{
                pizza = new CheesePizza();
            }
            when 'clam'{
                pizza = new ClamPizza();
            }
            when 'pepperoni'{
                pizza = new PepperoniPizza();
            }
            when 'veggie'{
                pizza = new VeggiePizza();
            }
        }
        return pizza;
    }
}

