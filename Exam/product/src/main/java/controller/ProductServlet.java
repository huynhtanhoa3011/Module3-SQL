package controller;

import dao.CategoryDAO;
import dao.ICategoryDAO;
import dao.IProductDAO;
import dao.ProductDAO;
import model.Category;
import model.Product;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "ProductServlet", urlPatterns = "/categorys")
public class ProductServlet extends HttpServlet {
    private static final long serialVersionUID = 1l;

    private IProductDAO productDAO;

    private ICategoryDAO categoryDAO = new CategoryDAO();

    public void init() {
        productDAO = new ProductDAO();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");

        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        try {
            switch (action) {
                case "create":
                    insertProducts(request, response);
                    break;
                case "edit":
                    updateProducts(request, response);
                    break;
                case "delete":
                    deleteProducts(request, response);
                    break;
            }
        } catch (SQLException ex) {
            throw new ServletException(ex);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        try {
            switch (action) {
                case "create":
                    showNewForm(request, response);
                    break;
                case "edit":
                    showEditForm(request, response);
                    break;
                case "delete":
                    showDeleteForm(request, response);
                    break;
                default:
                    listProduct(request, response);
                    break;
            }
        } catch (SQLException ex) {
            throw new ServletException(ex);
        }
    }

    private void listProduct(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException, SQLException, ServletException {
        List<Product> listProduct = productDAO.selectAllProduct();
        request.setAttribute("listProduct", listProduct);
        RequestDispatcher dispatcher = request.getRequestDispatcher("product/list.jsp");
        dispatcher.forward(request, response);
    }

    private void deleteProducts(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException, ServletException {
        int id =Integer.parseInt(request.getParameter("id"));

        productDAO.deleteProduct(id);
        response.sendRedirect("/categorys");

    }

    private void showDeleteForm(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException {
        int id = Integer.parseInt(request.getParameter("id"));
        request.setAttribute("product",productDAO.selectProduct(id));
        RequestDispatcher dis = request.getRequestDispatcher("product/delete.jsp");
        dis.forward(request,response);
    }

    private void updateProducts(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException, ServletException{
        int id = Integer.parseInt(request.getParameter("id"));
        String fullname = request.getParameter("fullname");
        Double price = Double.parseDouble(request.getParameter("price"));
        String quantity = request.getParameter("quantity");
        String color = request.getParameter("color");
        String description = request.getParameter("description");
        int cat_id = Integer.parseInt(request.getParameter("catId"));
        Product book = new Product(id, fullname, price, quantity, color, description, cat_id);
        productDAO.updateProduct(book);
        showEditForm(request,response);
    }

    private void showEditForm(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException, ServletException{
        int id = Integer.parseInt(request.getParameter("id"));
        Product existingUser = productDAO.selectProduct(id);
        RequestDispatcher dispatcher = request.getRequestDispatcher("product/edit.jsp");
        request.setAttribute("product", existingUser);
        List<Category> categoryList = categoryDAO.findAll();
        request.setAttribute("categoryList", categoryList);
        dispatcher.forward(request, response);
    }

    private void insertProducts(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException, ServletException{
//        int id = Integer.parseInt(request.getParameter("id"));
        String fullname = request.getParameter("fullname");
        Double price = Double.parseDouble(request.getParameter("price"));
        String quantity = request.getParameter("quantity");
        String color = request.getParameter("color");
        String description = request.getParameter("description");
        int catId = Integer.parseInt(request.getParameter("catId"));
        Product newProduct = new Product( fullname, price, quantity, color, description, catId);
        productDAO.insertProduct(newProduct);
        showNewForm(request,response);
    }

    private void showNewForm(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("product/create.jsp");
        List<Category> categoryList = categoryDAO.findAll();
        request.setAttribute("categoryList", categoryList);
        dispatcher.forward(request, response);
    }
}
