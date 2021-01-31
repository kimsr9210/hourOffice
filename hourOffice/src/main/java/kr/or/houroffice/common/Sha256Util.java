package kr.or.houroffice.common;

import java.security.MessageDigest;

import org.springframework.stereotype.Component;

@Component("Sha256Util")
public class Sha256Util { /*암호화메소드*/
	public String encryData(String data, int salt)throws Exception{
		String str = data+salt;
		
		MessageDigest mDigest = MessageDigest.getInstance("SHA-256");
		mDigest.update(str.getBytes());
		byte [] msgStr = mDigest.digest();
		
		StringBuffer hexString = new StringBuffer();
		
		for(byte d : msgStr){
			hexString.append(String.format("%02X", d));
		}
		
		return hexString.toString();
	}
}
