public abstract  with sharing class Pizza {
    @TestVisible
    protected String name;
    protected String dough;
    protected String sauce;
    protected List<String> toppings;

    public Pizza() {
        this.toppings = new List<String>();
    }

    public void prepare(){
        System.debug('Preparing a pizza of type ' + name);
    }

    public void bake(){
        System.debug('Baking ' + name);
    }

    public void cut(){
        System.debug('Cutting ' + name);
    }
    public void box(){
        System.debug('Boxing ' + name);
    }

    public void displayNameAndIngredients(){
        System.debug('This is a ' + this.name + ' Pizza.');
        System.debug('It\'s ingredients are');
        for (String topping : toppings){
            System.debug(String.valueOf(topping));
        }
    }
}
