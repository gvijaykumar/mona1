/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package databaseconnection;
import java.util.Properties;
import javax.mail.*;
import javax.mail.internet.*;

public class SendEmail {
String d_email = "liotechdeveloper@gtmail.com",d_password = "sandeep@987",d_host = "smtp.gmail.com",d_port = "465",
m_to = "laxman.mca12@gmail.com",
m_subject = "hello",
m_text = "this is just a test mail";

public void Email(String to,int  pwd) {
    m_to =to;
Properties props = new Properties();
props.put("mail.smtp.user", d_email);
props.put("mail.smtp.host", d_host);
props.put("mail.smtp.port", d_port);
props.put("mail.smtp.starttls.enable","true");
props.put("mail.smtp.auth", "true");
//props.put("mail.smtp.debug", "true");
props.put("mail.smtp.socketFactory.port", d_port);
props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
props.put("mail.smtp.socketFactory.fallback", "false");

SecurityManager security = System.getSecurityManager();

try {
Authenticator auth = new SMTPAuthenticator();
Session session = Session.getInstance(props, auth);
//session.setDebug(true);

MimeMessage msg = new MimeMessage(session);
msg.setText("your key "+pwd);
msg.setSubject("Privacy Preserving");
msg.setFrom(new InternetAddress("liotechdeveloper@gmail.com"));
msg.addRecipient(Message.RecipientType.TO, new InternetAddress(m_to));
Transport.send(msg);
} catch (Exception mex) {
mex.printStackTrace();
}
}
private class SMTPAuthenticator extends javax.mail.Authenticator {
    @Override
    public PasswordAuthentication getPasswordAuthentication() {
return new PasswordAuthentication("liotechdeveloper@gmail.com","sandeep@987");
}
}

}