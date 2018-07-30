import java.util.ArrayList;
import java.util.List;

public class ListProducts implements Products {
    private List<Product> products = new ArrayList();

    // When an instance of this class is created, we'll populate the
    // products array list with data, "faking" the records
    public ListProducts() {
        insert(new Product("hammer", 9.99));
        insert(new Product("screwdriver", 9.99));
        insert(new Product("drill", 19.99));
    }

    // Persist a new record. We'll simulate this by adding the passed object
    // to our internal array list of products.
    // When inserting a new record into the database, the database generates
    // an id for us. We'll simulate this behavior using the current size of
    // the products array list as an id
    public void insert(Product product) {
        long id = products.size() + 1;
        product.setId(id);
        this.products.add(product);
    }

    public List<Product> all() {
        return this.products;
    }
}
