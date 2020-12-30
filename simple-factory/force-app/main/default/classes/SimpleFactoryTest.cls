/**
 * Created by brooks on 11/22/2020.
 */
@IsTest
public with sharing class SimpleFactoryTest {

    @IsTest
    static void shouldReturnCheese(){
        //given
        Pizza pizza = null;
        //when
        Test.startTest();
        pizza = SimpleFactory.createPizza('cheese');
        Test.stopTest();

        System.assertEquals('Cheese Pizza', pizza.name, 'It should return a cheese pizza');
    }
    @IsTest
    static void shouldReturnClam(){
        //given
        Pizza pizza = null;
        //when
        Test.startTest();
        pizza = SimpleFactory.createPizza('clam');
        Test.stopTest();
        //then
        System.assertEquals('Clam Pizza', pizza.name, 'It should return a clam pizza');
    }

    @IsTest
    static void shouldReturnVeggie(){
       //given
        Pizza pizza = null;
        //when
        Test.startTest();
        pizza = SimpleFactory.createPizza('veggie');
        Test.stopTest();
        //then
        System.assertEquals('Veggie Pizza', pizza.name, 'It should return a veggie pizza');
    }
    @IsTest
    static void shouldReturnPepperoni(){
        //given
        Pizza pizza = null;
        //when
        Test.startTest();
        pizza = SimpleFactory.createPizza('pepperoni');
        Test.stopTest();
        //then
        System.assertEquals('Pepperoni Pizza', pizza.name, 'It should return a pepperoni pizza');
    }
}