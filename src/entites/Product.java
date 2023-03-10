package entites;

public class Product {
	
	public String name;
	public double price;
	public int quantity;
	
	
	//Método para verificar o total em estoque
	public double totalValueInStock() {
		return price * quantity;
	}
	
	//Método para adicionar estoque de produto
	public void addProduct(int quantity) {
		this.quantity += quantity;
		
	}
	
	//Método para remover estoque de produto
	public void removeProduct(int quantity) {
		this.quantity += quantity;
		
	}

	@Override
	
	//Método para transformar objeto em string
	public String toString() {
		return name
				+ ", $"
				+ String.format("%.2f", price)
				+ ", "
				+ quantity
				+ " units, Total: $"
				+ String.format("%.2f", totalValueInStock());
	}
	
	
} 
