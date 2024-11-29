package model;

import java.util.Properties;

import javax.mail.Address;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class EmailSender {
	
	
	private static Session criarSessionMail() {
	     Properties props = new Properties();

	     props.put("mail.smtp.host", "smtp.gmail.com");
	     props.put("mail.smtp.socketFactory.port", 465);
	     props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
	     props.put("mail.smtp.auth", true);
	     props.put("mail.smtp.port", 465);

	     Session session = Session.getDefaultInstance(props, new javax.mail.Authenticator() {

	            protected PasswordAuthentication getPasswordAuthentication() {
	                   return new PasswordAuthentication("doichejunior@gmail.com", "*");
	            }
	     });

	     session.setDebug(true);

	     return session;
	}
	
	private static void enviarEmail() throws AddressException, MessagingException {

	     String msg = "recuperacao de senha";
	     String assunto = "J.A Systems - Redefinição de senhas";
	     String email = "doichejunior@gmail.com";

	     String remetente = "doichejunior@gmail.com";
	     System.out.println("__________________________________________________");
	     System.out.println("Enviando email DE: " + remetente + " PARA: " + email);
	     System.out.println("Assunto: " + assunto);

	     Message message = new MimeMessage(criarSessionMail());
	     message.setFrom(new InternetAddress(remetente)); // Remetente

	     Address[] toUser = InternetAddress // Destinatário(s)
	                   .parse(email.trim().toLowerCase());

	     message.setRecipients(Message.RecipientType.TO, toUser);
	     message.setSubject(assunto);// Assunto
	     message.setContent(msg, "text/html");
	     /** Método para enviar a mensagem criada */
	     Transport.send(message);

	     System.out.println("Email enviado com sucesso !");
	     System.out.println("__________________________________________________");

	}
	
	public static void main(String[] args) {
		try {
			enviarEmail();
		} catch (AddressException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (MessagingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}