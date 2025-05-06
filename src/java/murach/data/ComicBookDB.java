package murach.data;

import murach.business.ComicBooks;
import murach.business.ConnectionPool;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;


public class ComicBookDB {
    
    public static int registerComic(ComicBooks comicBooks) {
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        PreparedStatement ps = null;
        
        String query
                    ="INSERT INTO ComicBooks (Title, Publisher, Author, Illustrator, Issue, Location, Price) " 
                + "VALUES(?, ?, ?, ?, ?, ?, ?)";
        try {
            ps = connection.prepareStatement(query);
            ps.setString(1, comicBooks.getTitle());
            ps.setString(2, comicBooks.getPublisher());
            ps.setString(3, comicBooks.getAuthor());
            ps.setString(4, comicBooks.getIllustrator());
            ps.setString(5, comicBooks.getIssue());
            ps.setString(6, comicBooks.getLocation());
            ps.setString(7, comicBooks.getPrice());
            return ps.executeUpdate();
        }catch (SQLException e){
            System.out.println(e);
            return 0;
        }finally {
            DBUtil.closePreparedStatement (ps);
            pool.freeConnection(connection);
        }
    }
    
    public static List<ComicBooks> selectComicBooks(){
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        PreparedStatement ps =null;
        ResultSet rs = null;
        List<ComicBooks> comicBooks = new ArrayList<>();
        String query = "Select * from Checkout";

        try{
            ps = connection.prepareStatement(query);
            rs = ps.executeQuery();
            while(rs.next()){
                ComicBooks comicBook = new ComicBooks();
                comicBook.setTitle(rs.getString("Title"));
                comicBook.setPublisher(rs.getString("Publisher"));
                comicBook.setAuthor(rs.getString("Author"));
                comicBook.setIllustrator(rs.getString("Illustrator"));
                comicBook.setIssue(rs.getString("Issue"));
                comicBook.setLocation(rs.getString("Location"));
                comicBook.setPrice(rs.getString("Price"));
                comicBooks.add(comicBook);
            }
        }catch (SQLException e){
            System.out.println(e);
            return null;
        }finally{
            DBUtil.closeResultSet(rs);
            DBUtil.closePreparedStatement(ps);
            pool.freeConnection(connection);
        }
        return comicBooks;
    } 
}
