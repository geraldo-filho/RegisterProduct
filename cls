[1mdiff --git a/bin/entites/Main.class b/bin/entites/Main.class[m
[1mindex 6a844b1..b196aad 100644[m
Binary files a/bin/entites/Main.class and b/bin/entites/Main.class differ
[1mdiff --git a/bin/entites/Product.class b/bin/entites/Product.class[m
[1mindex 048866d..a9bdc94 100644[m
Binary files a/bin/entites/Product.class and b/bin/entites/Product.class differ
[1mdiff --git a/src/entites/Main.java b/src/entites/Main.java[m
[1mindex 6f2677c..ca659f9 100644[m
[1m--- a/src/entites/Main.java[m
[1m+++ b/src/entites/Main.java[m
[36m@@ -7,11 +7,17 @@[m [mpublic class Main {[m
 [m
 	public static void main(String[] args) {[m
 		[m
[32m+[m		[32m//Transformando o double no formato dos US[m
 		Locale.setDefault(Locale.US);[m
[32m+[m[41m		[m
[32m+[m		[32m//importando o scanner[m
 		Scanner sc = new Scanner(System.in);[m
 		[m
[32m+[m		[32m//Instanciando um produto[m
 		Product p1 = new Product();[m
 		[m
[32m+[m[41m		[m
[32m+[m		[32m//Passando a instancia do produtos para os atributos[m
 		System.out.println("Enter product data: ");[m
 		System.out.print("Name: ");[m
 		p1.name = sc.nextLine();[m
[36m@@ -26,6 +32,8 @@[m [mpublic class Main {[m
 		System.out.println();[m
 		System.out.print("Enter the number of products to be added in stock: ");[m
 		int quantity = sc.nextInt();[m
[32m+[m[41m		[m
[32m+[m		[32m//adicionando mais estoque daquele produto[m
 		p1.addProduct(quantity);[m
 		[m
 		System.out.println();[m
[36m@@ -34,6 +42,8 @@[m [mpublic class Main {[m
 		System.out.println();[m
 		System.out.print("Enter the number of products to be remove from stock: ");[m
 		quantity = sc.nextInt();[m
[32m+[m[41m	[m
[32m+[m		[32m//reduzindo estoque do produto[m
 		p1.removeProduct(quantity);[m
 		[m
 		System.out.println();[m
[1mdiff --git a/src/entites/Product.java b/src/entites/Product.java[m
[1mindex b1588f6..0635f37 100644[m
[1m--- a/src/entites/Product.java[m
[1m+++ b/src/entites/Product.java[m
[36m@@ -6,20 +6,27 @@[m [mpublic class Product {[m
 	public double price;[m
 	public int quantity;[m
 	[m
[32m+[m[41m	[m
[32m+[m	[32m//Método para verificar o total em estoque[m
 	public double totalValueInStock() {[m
 		return price * quantity;[m
 	}[m
 	[m
[32m+[m	[32m//Método para adicionar estoque de produto[m
 	public void addProduct(int quantity) {[m
 		this.quantity += quantity;[m
 		[m
 	}[m
[32m+[m[41m	[m
[32m+[m	[32m//Método para remover estoque de produto[m
 	public void removeProduct(int quantity) {[m
 		this.quantity += quantity;[m
 		[m
 	}[m
 [m
 	@Override[m
[32m+[m[41m	[m
[32m+[m	[32m//Método para transformar objeto em string[m
 	public String toString() {[m
 		return name[m
 				+ ", $"[m
