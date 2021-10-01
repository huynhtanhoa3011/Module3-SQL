package dao;

import model.Product;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ProductDAO implements IProductDAO{
    private String jdbcURL = "jdbc:mysql://localhost:3306/product";
    private String jdbcUsername = "root";
    private String jdbcPassword = "123123";

    public ProductDAO() {
    }

    protected Connection connection() {
        Connection connection = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        return connection;
    }

    @Override
    public void insertProduct(Product product) throws SQLException {
        String INSERT_PRODUCT_SQL = "INSERT INTO products" + "(fullname, price, quantity, color, description, cat_id)VALUES" + "(?, ?, ?, ?, ?, ?);";
        System.out.println(INSERT_PRODUCT_SQL);
        try (Connection connection = connection(); PreparedStatement preparedStatement = connection.prepareStatement(INSERT_PRODUCT_SQL)) {
            preparedStatement.setString(1, product.getFullname());
            preparedStatement.setDouble(2, product.getPrice());
            preparedStatement.setString(3, product.getQuantity());
            preparedStatement.setString(4, product.getColor());
            preparedStatement.setString(5, product.getDescription());
            preparedStatement.setInt(6, product.getCat_id());
            System.out.println(preparedStatement);
            preparedStatement.executeUpdate();

        } catch (SQLException e) {
            printSQLException(e);
        }
    }

    private void printSQLException(SQLException ex) {
        for (Throwable e : ex) {
            if (e instanceof SQLException) {
                e.printStackTrace(System.err);
                System.err.println("SQLState: " + ((SQLException) e).getSQLState());
                System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
                System.err.println("Message: " + e.getMessage());
                Throwable t = ex.getCause();
                while (t != null) {
                    System.out.println("Cause: " + t);
                    t = t.getCause();
                }
            }
        }
    }

    @Override
    public Product selectProduct(int id) throws SQLException {
        String SELECT_PRODUCT_BY_ID = "select id, fullname, price, quantity, color, description, cat_id from products where id = ?";
        Product product = null;
        try (Connection connection = connection(); PreparedStatement preparedStatement = connection.prepareStatement(SELECT_PRODUCT_BY_ID);) {
            preparedStatement.setInt(1, id);
            System.out.println(preparedStatement);
            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {
                String fullname = resultSet.getString("fullname");
                Double price = resultSet.getDouble("price");
                String quantity = resultSet.getString("quantity");
                String color = resultSet.getString("color");
                String description = resultSet.getString("description");
                int cat_id = resultSet.getInt("cat_id");

                product = new Product(id, fullname, price, quantity, color, description, cat_id);
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return product;
    }

    @Override
    public List<Product> selectAllProduct() throws SQLException {
        String SELECT_ALL_PRODUCT = "select * from products";
        List<Product> product = new ArrayList<>();
        try (Connection connection = connection(); PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_PRODUCT);) {
            System.out.println(preparedStatement);
            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {
                int id = resultSet.getInt("id");
                String fullname = resultSet.getString("fullname");
                Double price = resultSet.getDouble("price");
                String quantity = resultSet.getString("quantity");
                String color = resultSet.getString("color");
                String description = resultSet.getString("description");
                int cat_id = resultSet.getInt("cat_id");

                product.add(new Product(id, fullname, price, quantity, color, description, cat_id));
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return product;
    }

    @Override
    public boolean deleteProduct(int id) throws SQLException {
        String DELETE_PRODUCT_SQL = "delete from products where id = ?;";
        boolean rowDelete;
        try (Connection connection = connection(); PreparedStatement statement = connection.prepareStatement(DELETE_PRODUCT_SQL)) {
            statement.setInt(1, id);
            rowDelete = statement.executeUpdate() > 0;
        }
        return rowDelete;
    }

    @Override
    public boolean updateProduct(Product product) throws SQLException {
        String UPDATE_PRODUCT_SQL = "update products set fullname = ?, price = ?, quantity = ?, color = ?, description = ?, cat_id = ? where id = ?;";
        boolean rowUpdate;
        try (Connection connection = connection(); PreparedStatement statement = connection.prepareStatement(UPDATE_PRODUCT_SQL)) {
            statement.setString(1, product.getFullname());
            statement.setDouble(2, product.getPrice());
            statement.setString(3, product.getQuantity());
            statement.setString(4, product.getColor());
            statement.setString(5, product.getDescription());
            statement.setInt(6, product.getCat_id());
            statement.setInt(7, product.getId());

            rowUpdate = statement.executeUpdate() > 0;
        }
        return rowUpdate;
    }
}
