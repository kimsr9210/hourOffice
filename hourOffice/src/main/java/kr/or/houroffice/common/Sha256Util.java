package kr.or.houroffice.common;

import java.security.MessageDigest;

import org.springframework.stereotype.Component;

@Component("Sha256Util")
public class Sha256Util {
	public String encryData(String data, String salt)throws Exception{
		System.out.println("------------------ 암호화 로직 동작 ------------------");
		System.out.println("평문 데이터 출력 : " + data);
		System.out.println("평문 데이터 길이 : " + data.length());
		//import java.security.MessageDigest;
		//암호화를 처리할 수 있는 MessageDigest 객체를 생성 (java에서 기본 제공)
		MessageDigest mDigest = MessageDigest.getInstance("SHA-256");	//SHA-256 알고리즘 사용
		
		//생성된 MessageDigest 객체를 가지고 데이터를 암호화
		//update 메소드를 사용할때에는 문자열을 Byte 배열로 변경해서 넘겨주어야 함
		
		String str = data+salt;		//data는 비밀번호, salt userId라고 할 때 1234user1
		
		mDigest.update(str.getBytes());	//문자열의 데이터를 꺼내서 암호화 처리
		
		
		byte [] msgStr = mDigest.digest();	//SHA-256으로 변환하여 데이터를 가져오는 메소드
		
		System.out.println("암호화 데이터 길이 : " + msgStr.length);
		System.out.println("암호화 데이터 출력 : ");
		
		//현재 데이터는 10진수이기 때문에 16진수로 바꾸어서 표기할 수 있어야 함
		StringBuffer hexString = new StringBuffer();
		
		for(byte d : msgStr){
			hexString.append(String.format("%02X", d));
			//%X : 16진수를 대문자로 표기
			//%x : 16진수를 소문자로 표기
			//%02X : 16진수를 2자리 대문자로 표기
			//ex) ff -> FF / ac -> AC / 3 -> 03
		}
		
		
		return hexString.toString();
		
		
	}
}
