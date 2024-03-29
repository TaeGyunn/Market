package com.ho.MK.Naver;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.github.scribejava.core.model.OAuth2AccessToken;

@Controller
public class LoginController {
	
	@Autowired
	NaverService service;
	
	@ModelAttribute("cp")
	public String getContextPath(HttpServletRequest request) {
		System.out.println("Test_cp");
		return request.getContextPath();
	}
		
		private NaverLoginBO naverLoginBO;
		private String apiResult = null;
		
		@Autowired
		private void setNaverLoginBO(NaverLoginBO naverLoginBO) {
			this.naverLoginBO = naverLoginBO;
		}
		
		//로그인 첫 화면 요청 메소드
		 @RequestMapping(value = "/naverlogin", method = { RequestMethod.GET, RequestMethod.POST })
		    public String login(Model model, HttpSession session) {
		        
		        /* 네이버아이디로 인증 URL을 생성하기 위하여 naverLoginBO클래스의 getAuthorizationUrl메소드 호출 */
		        String naverAuthUrl = naverLoginBO.getAuthorizationUrl(session);
		        
		        //https://nid.naver.com/oauth2.0/authorize?response_type=code&client_id=sE***************&
		        //redirect_uri=http%3A%2F%2F211.63.89.90%3A8090%2Flogin_project%2Fcallback&state=e68c269c-5ba9-4c31-85da-54c16c658125
		        System.out.println("네이버:" + naverAuthUrl);
		        
		        //네이버 
		        model.addAttribute("url", naverAuthUrl);

		        /* 생성한 인증 URL을 View로 전달 */
		        return "/naverLogin";
		    }

		    //네이버 로그인 성공시 callback호출 메소드
		    @RequestMapping(value = "/callback.do", method = { RequestMethod.GET, RequestMethod.POST })
		    public String callback(Model model, @RequestParam String code, @RequestParam String state, HttpSession session)
		            throws IOException, ParseException {
		        System.out.println("여기는 callback");
		        OAuth2AccessToken oauthToken;
		        oauthToken = naverLoginBO.getAccessToken(session, code, state);
		        //로그인 사용자 정보를 읽어온다.
		        apiResult = naverLoginBO.getUserProfile(oauthToken);
		        
		        //String형식인 apiresult를 json형태로 변환
		        JSONParser parser = new JSONParser();
		        Object obj = parser.parse(apiResult);
		        JSONObject jsonObj = (JSONObject) obj;
		        
		        //데이터 파싱
		        JSONObject response_obj = (JSONObject)jsonObj.get("response");
		        String id = (String)response_obj.get("id");
		        String nickName = (String)response_obj.get("nickName");
		        String email = (String)response_obj.get("email");
		        String phone = (String)response_obj.get("phone");
		        
		        NaverMember NMember = new NaverMember();
		        NMember.setNaId(id);
		        NMember.setNaName(nickName);
		        NMember.setNaEmail(email);
		        NMember.setNaNumber(phone);
		        
		        NaverMember Nmem = service.NmemberSearch(NMember);
				if(Nmem == null) {
					service.NaverRegister(NMember);
				}
				
		        model.addAttribute("result", apiResult);
		    
		        return"/01_Main";
		    }

}
