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
public class PostoDAO {
    
    public Connection c;
    public PostoDAO(){
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

    public void inserir(String razaoSocial, String nomeFantasis, String bandeira, String endereco, String cep, String imagem) {
        try {
            String query = "insert into posto (razaoSocial,nomeFantasis,bandeira,endereco,cep,imagem) values ('" + razaoSocial + "', '" + nomeFantasis + "', '" + bandeira + "', '" + endereco + "','" + cep + "','" + imagem + "')";
            System.out.println(query);
            Statement st = (Statement) c.createStatement();
            int resultado = st.executeUpdate(query);
        } catch (Exception e) {
        }

    }
/*
    public void alterar(String razaoSocial, String nomeFantasis, String bandeira, String endereco, String cep, String imagem) {
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
