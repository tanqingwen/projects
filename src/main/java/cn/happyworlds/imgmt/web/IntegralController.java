package cn.happyworlds.imgmt.web;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import cn.happyworlds.imgmt.entity.YwIntegral;
import cn.happyworlds.imgmt.service.MemberService;
import cn.happyworlds.imgmt.service.YwIntegralService;
import cn.happyworlds.imgmt.util.Result;

/**
 * 
 * @author 2017-07-27
 */

@Controller
@RequestMapping("/integral")
public class IntegralController {

	@Autowired
	private YwIntegralService ywintegralService;
	
	@Autowired
	private MemberService memberService;
	
//	@WebAction(Permission.MERCHANT_LIST)
//	@RequestMapping("list")
//	public String list(String hwIntegralId, String hwMemberId, String hwPeriodDate, String hwIntegralStatus, Integer p, Model m) {
//		Result<PageInfo<YwIntegral>> r = ywintegralService.integralList(hwIntegralId, hwMemberId, hwPeriodDate, hwIntegralStatus, new PageBounds(p, 10));
//		List<CpCsttbl> csttblList = memberService.csttblList();
//		Map<String, String> provinceies = new HashMap<>();
//		for(CpCsttbl province : csttblList){
//			provinceies.put(province.getHwMemberId(), province.getHwMemberId());
//		}
//		if (r.isError()) {
//			m.addAttribute(WebContext.ACTION_FAILURE_TIP, "查询出现异常");
//		} else {
//			m.addAttribute("pageInfo", r.getValue());
//			m.addAttribute("provinceies", provinceies);
//		}
//		return "integral/list";
//	}
	
	@WebAction(Permission.STAFF_ADD)
	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public String add(String hwIntegralId, RedirectAttributes ra, Model m) {
		Result<YwIntegral> r = ywintegralService.integralGetById(hwIntegralId);
		if (r.isError()) {
			ra.addFlashAttribute(WebContext.ACTION_FAILURE_TIP, r.getComment());
			return "redirect:/integral/list";
		}
		m.addAttribute("integral", r.getValue());
		return "integral/add";
	}
	
//	@WebAction(Permission.STAFF_ADD)
//	@RequestMapping(value = "/add", method = RequestMethod.POST)
//	public String add(CpCsttbl csttbl, YwIntegral hwIntegralId, RedirectAttributes ra) {
//		//hwIntegralId.setHwIntegralId(WebContext.getCurrentIntegral().getHwMemberId());
//		//CpCsttbl staff = WebContext.getCurrentIntegral();
//		//hwIntegralId.setHwMemberId(staff.getHwMemberId());
//		Result<YwIntegral> r = ywintegralService.integralAdd(hwIntegralId, csttbl);
//		if (r.isError()) {
//			ra.addFlashAttribute(WebContext.ACTION_FAILURE_TIP, r.getComment());
//			//return "redirect:/integral/add?hwIntegralId=" + hwIntegralId;
//			return "redirect:/integral/add";
//		}
//		ra.addFlashAttribute(WebContext.ACTION_SUCCESS_TIP, "积分添加成功");
//		return "redirect:/integral/list";
//	}
	
	@WebAction(Permission.STAFF_UPDATE)
	@RequestMapping(value = "/update", method = RequestMethod.GET)
	public String tempUpdate(String hwIntegralId, Model m) {
		Result<YwIntegral> r = ywintegralService.integralGetById(hwIntegralId);
		if (r.isError()) {
			m.addAttribute(WebContext.ACTION_FAILURE_TIP, r.getComment());
			return "redirect:/integral/list";
		}
		m.addAttribute("item", r.getValue());
		return "integral/update";
	}

	@WebAction(Permission.STAFF_UPDATE)
	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public String tempUpdate(YwIntegral integral, RedirectAttributes ra) {
		Result<YwIntegral> r = ywintegralService.integralUpdate(integral);
		if (r.isError()) {
			ra.addFlashAttribute(WebContext.ACTION_FAILURE_TIP, r.getComment());
			return "redirect:/integral/update?hwIntegralId" + integral.getHwMemberId();
		}
		ra.addFlashAttribute(WebContext.ACTION_SUCCESS_TIP, "积分ID更新成功");
		return "redirect:/integral/list";
	}
	
	@WebAction(Permission.STAFF_SHOW)
	@RequestMapping(value = "/show", method = RequestMethod.GET)
	public String tempShow(String hwIntegralId, Model m, RedirectAttributes ra) {
		if (StringUtils.isEmpty(hwIntegralId)) {
			ra.addFlashAttribute(WebContext.ACTION_FAILURE_TIP, "积分ID不能为空");
			return "redirect:/integral/list";
		}
		Result<YwIntegral> r1 = ywintegralService.integralGetById(hwIntegralId);
		if (r1.isError()) {
			ra.addFlashAttribute(WebContext.ACTION_FAILURE_TIP, r1.getComment());
			return "redirect:/integral/list";
		}
		m.addAttribute("item", r1.getValue());
		return "integral/show";
	}
	
	@WebAction(Permission.ROLE_DELETE)
	@RequestMapping(value = "/delete", method = RequestMethod.GET)
	public String tempDelete(String hwIntegralId, RedirectAttributes ra) {
		Result<YwIntegral> r = ywintegralService.integralDelete(hwIntegralId);
		//ywintegralService.dataForward(id);
		if (r.isError()) {
			ra.addFlashAttribute(WebContext.ACTION_FAILURE_TIP, r.getComment());
		} else {
			ra.addFlashAttribute(WebContext.ACTION_SUCCESS_TIP, "积分ID删除成功");
		}
		return "redirect:/integral/list";
	}
	
}
