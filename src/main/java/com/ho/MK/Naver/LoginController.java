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
		
		//�α��� ù ȭ�� ��û �޼ҵ�
		 @RequestMapping(value = "/naverlogin", method = { RequestMethod.GET, RequestMethod.POST })
		    public String login(Model model, HttpSession session) {
		        
		        /* ���̹����̵�� ���� URL�� �����ϱ� ���Ͽ� naverLoginBOŬ������ getAuthorizationUrl�޼ҵ� ȣ�� */
		        String naverAuthUrl = naverLoginBO.getAuthorizationUrl(session);
		        
		        //https://nid.naver.com/oauth2.0/authorize?response_type=code&client_id=sE***************&
		        //redirect_uri=http%3A%2F%2F211.63.89.90%3A8090%2Flogin_project%2Fcallback&state=e68c269c-5ba9-4c31-85da-54c16c658125
		        System.out.println("���̹�:" + naverAuthUrl);
		        
		        //���̹� 
		        model.addAttribute("url", naverAuthUrl);

		        /* ������ ���� URL�� View�� ���� */
		        return "/naverLogin";
		    }

		    //���̹� �α��� ������ callbackȣ�� �޼ҵ�
		    @RequestMapping(value = "/callback.do", method = { RequestMethod.GET, RequestMethod.POST })
		    public String callback(Model model, @RequestParam String code, @RequestParam String state, HttpSession session)
		            throws IOException, ParseException {
		        System.out.println("����� callback");
		        OAuth2AccessToken oauthToken;
		        oauthToken = naverLoginBO.getAccessToken(session, code, state);
		        //�α��� ����� ������ �о�´�.
		        apiResult = naverLoginBO.getUserProfile(oauthToken);
		        
		        //String������ apiresult�� json���·� ��ȯ
		        JSONParser parser = new JSONParser();
		        Object obj = parser.parse(apiResult);
		        JSONObject jsonObj = (JSONObject) obj;
		        
		        //������ �Ľ�
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
