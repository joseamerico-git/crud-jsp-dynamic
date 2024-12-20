package action.services;

import com.google.gson.Gson;
import model.api.Usuario;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.net.HttpURLConnection;
import java.net.URL;

public class RegisterApiHidrobike {

    public void register(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    	System.out.println("rota do registro de usuarios");
        try {
            // URL da API
            URL url = new URL("http://localhost:8081/auth/register");
            HttpURLConnection con = (HttpURLConnection) url.openConnection();

            // Configurações da conexão
            con.setRequestMethod("POST");
            con.setRequestProperty("Content-Type", "application/json");
            con.setDoOutput(true);
            String role = req.getParameter("role");

            Usuario usuario = new Usuario();
            usuario.setLogin(req.getParameter("login"));
            usuario.setPassword(req.getParameter("password"));
            usuario.setRole(role);

            System.out.println("usuario "+usuario.toString());
            System.out.println("role "+usuario.getRole());




           // usuario.setLogin("doichejunior@gmail.com");
           // usuario.setPassword("1");
            //usuario.setRole("1");

            Gson gson = new Gson();
            String json = gson.toJson(usuario);
            System.out.println("Cheguei aqui "+ json);




            String jsonInputString = "{\n" +
                    "  \"login\":\"zetxxx@teste1\",\n" +
                    "  \"password\":\"1\",\n" +
                    "  \"role\":\"ADMIN\"\n" +
                    "  \n" +
                    "}";

            // Enviando a solicitação
            try (OutputStream os = con.getOutputStream()) {
                byte[] input = json.getBytes("UTF-8");
                os.write(input, 0, input.length);
            }

            // Verificando a resposta
            int responseCode = con.getResponseCode();

            System.out.println("Response Code: " + responseCode);
            InputStream inputStream;
            if (200 <= responseCode && responseCode <= 299) {
                inputStream = con.getInputStream();
            } else {
                inputStream = con.getErrorStream();
            }
            BufferedReader in = new BufferedReader(new InputStreamReader(inputStream));
            StringBuilder response = new StringBuilder();
            String currentLine;
            while ((currentLine = in.readLine()) != null) {
                response.append(currentLine);
            }
            System.out.println(response.toString());

           // Token tokenObj = gson.fromJson(response.toString(), Token.class);
           // System.out.println(tokenObj.getToken());
            in.close();
            
            if (200 <= responseCode && responseCode <= 299) {
            	 req.setAttribute("mensagem","Cadastrado com sucesso!");
                 //resp.getWriter().write("Cadastrado com sucesso!");
                 RequestDispatcher dispatcher = req.getRequestDispatcher("/api/api-cadastrar-usuario.jsp");
                 dispatcher.forward(req, resp);
            } else {
            	 req.setAttribute("mensagem","Problemas ao cadastrar usuário!");
                 //resp.getWriter().write("Cadastrado com sucesso!");
                 RequestDispatcher dispatcher = req.getRequestDispatcher("/api/api-cadastrar-usuario.jsp");
                 dispatcher.forward(req, resp);
            }
        

        } catch (Exception e) {
            e.printStackTrace();
        }


    }


}
