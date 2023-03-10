package entites;

import java.util.Locale;
import java.util.Scanner;

public class Main {

	public static void main(String[] args) {
		
		//Transformando o double no formato dos US
		Locale.setDefault(Locale.US);
		
		//importando o scanner
		Scanner sc = new Scanner(System.in);
		
		//Instanciando um produto
		Product p1 = new Product();
		
		
		//Passando a instancia do produtos para os atributos
		System.out.println("Enter product data: ");
		System.out.print("Name: ");
		p1.name = sc.nextLine();
		System.out.print("Price: ");
		p1.price = sc.nextDouble();
		System.out.print("Quantity in stock: ");
		p1.quantity = sc.nextInt();
		
		System.out.println();
		System.out.println("Product data: " + p1);
		
		System.out.println();
		System.out.print("Enter the number of products to be added in stock: ");
		int quantity = sc.nextInt();
		
		//adicionando mais estoque daquele produto
		p1.addProduct(quantity);
		
		System.out.println();
		System.out.println("Update data: " + p1);
		
		System.out.println();
		System.out.print("Enter the number of products to be remove from stock: ");
		quantity = sc.nextInt();
	
		//reduzindo estoque do produto
		p1.removeProduct(quantity);
		
		System.out.println();
		System.out.println("Update data: " + p1);
		
		sc.close();
	}

}
