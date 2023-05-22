/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Encryption;

/**
 *
 * @author DLK
 */
import java.security.MessageDigest;
import java.util.Arrays;
import javax.crypto.Cipher;
import javax.crypto.SecretKey;
import javax.crypto.spec.SecretKeySpec;
import org.apache.commons.codec.binary.Base64;

/**
 * Simple TripleDES Encrypt/Decrypt Test 
 * sha1, utf-8, no padding
 *
 * uses commons-codec-1.6 
 * javac -cp :commons-codec-1.6.jar TripleDESTest.java
 * java -cp :commons-codec-1.6.jar TripleDESTest 
 */

public class TripleDESTest {

String secretKey="123456789";
	public static void main(String[] args) throws Exception {
		  
	    String text = "textToEncrypt";
	    String codedtext = new TripleDESTest().Encrypt(text);
	    String decodedtext = new TripleDESTest().Decrypt(codedtext);
	 	System.out.println(codedtext + " ---> " + decodedtext);	
	  }  
  
	public String Encrypt(String message) throws Exception {
	
		MessageDigest md = MessageDigest.getInstance("SHA-1");
		byte[] digestOfPassword = md.digest(secretKey.getBytes("utf-8"));
		byte[] keyBytes = Arrays.copyOf(digestOfPassword, 24);
		
		SecretKey key = new SecretKeySpec(keyBytes, "DESede");
		Cipher cipher = Cipher.getInstance("DESede");
		cipher.init(Cipher.ENCRYPT_MODE, key);
		
		byte[] plainTextBytes = message.getBytes("utf-8");
	    byte[] buf = cipher.doFinal(plainTextBytes);
	    byte [] base64Bytes = Base64.encodeBase64(buf);
	    String base64EncryptedString = new String(base64Bytes);
	    
	    return base64EncryptedString;
	}

	public String Decrypt(String encryptedText) throws Exception {
	
	    byte[] message = Base64.decodeBase64(encryptedText.getBytes("utf-8"));
		
		MessageDigest md = MessageDigest.getInstance("SHA-1");
		byte[] digestOfPassword = md.digest(secretKey.getBytes("utf-8"));
		byte[] keyBytes = Arrays.copyOf(digestOfPassword, 24);
		SecretKey key = new SecretKeySpec(keyBytes, "DESede");
		
		Cipher decipher = Cipher.getInstance("DESede");
		decipher.init(Cipher.DECRYPT_MODE, key);
		
		byte[] plainText = decipher.doFinal(message);
		
		return new String(plainText, "UTF-8");
	}
}
