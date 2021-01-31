package kr.or.houroffice.common;

import org.aspectj.lang.annotation.Aspect;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

@Service
@Aspect
public class MemberAOP {
	
	@Autowired
	@Qualifier(value="Sha256Util")
	private Sha256Util enc;
	
}
