/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package postodecombustivel;

import com.mysql.jdbc.Statement;
import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author Henrique
 */
public class CombustivelDAO {
    
    public Connection c;
    public CombustivelDAO(){
        conectar();
    }
    
    
    public void conectar() {

        try {
            String url = "jdbc:mysql://localhost:3306/posto?user=root&password=mysql";
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            c = (Connection) DriverManager.getConnection(url);
            System.out.println("conectado  em " + url);


        } catch (Exception e) {
        }

    }
    
    

    public void inserir(String tipo, String dataColeta,Float preco) {
        try {
            String query = "insert into posto (tipo,dataColeta,preco) values ('" + tipo + "', '" + dataColeta + "', '" + preco + "')";
            System.out.println(query);
            Statement st = (Statement) c.createStatement();
            int resultado = st.executeUpdate(query);
        } catch (Exception e) {
        }

    }
/*
    public void alterar(String horaFinal, String vaga) {
        try {
            String query;
            query = "update posto set horaFinal = '" + horaFinal + "' where vaga = '" + vaga + "'";
            System.out.print(query);
            Statement st = (Statement) c.createStatement();
            int resultado = st.executeUpdate(query);
        } catch (Exception e) {
        }

    }
  */  
}
