package cn.happyworlds.imgmt.web;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.github.pagehelper.PageInfo;

import cn.happyworlds.imgmt.entity.CpBlkmlc;
import cn.happyworlds.imgmt.entity.CpIdtype;
import cn.happyworlds.imgmt.mybatis.PageBounds;
import cn.happyworlds.imgmt.service.CpBlkmlcService;
import cn.happyworlds.imgmt.service.IdtypeService;
import cn.happyworlds.imgmt.util.Result;

@Controller
@RequestMapping("/cpblkmlc")
public class CpBlkmlcController {
	@Autowired
	private IdtypeService IdtypeService;//证件类型表
	@Autowired
	private CpBlkmlcService cpBlkmlcService;

	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public String add(Model m) {
		Result<List<CpIdtype>> idTypeList = IdtypeService.idTypeListAll();
		m.addAttribute("idTypeList", idTypeList.getValue());
		return "cpblkmlc/add";
	}

	@WebAction(Permission.STAFF_LIST)
	@RequestMapping(value="/list", method = {RequestMethod.GET,RequestMethod.POST})
	public String list(String bmCardNo,String bmCardName,Integer p,Model m) {
		Result<PageInfo<CpBlkmlc>> r = cpBlkmlcService.list(bmCardNo,bmCardName,new PageBounds(p, 10));
		if (r.isError()) {
			m.addAttribute(WebContext.ACTION_FAILURE_TIP, "查询出现异常");
		} else {
			m.addAttribute("bmCardNo", bmCardNo);
			m.addAttribute("bmCardName", bmCardName);
			m.addAttribute("pageInfo", r.getValue());
		}
		return "cpblkmlc/list";
	}

	@WebAction(Permission.STAFF_RESET_PASSWORD)
	@RequestMapping("/delete")
	public String delete(String bmCardNo, RedirectAttributes ra) {
		cpBlkmlcService.delete(bmCardNo);
		ra.addFlashAttribute(WebContext.ACTION_SUCCESS_TIP, "黑名单删除成功");
		return "redirect:/cpblkmlc/list";
	}

	@WebAction(Permission.VENUE_ENTRY_SHOW)
	@RequestMapping(value = "/show", method = RequestMethod.GET)
	public String show(String bmCardNo, Model m) {
		Result<CpBlkmlc> r = cpBlkmlcService.searchCpBlkmlcByBmCardNo(bmCardNo);
		if (r.isError()) {
			m.addAttribute(WebContext.ACTION_FAILURE_TIP, r.getComment());
			return "redirect:/cpblkmlc/list";
		}
		m.addAttribute("item", r.getValue());
		return "cpblkmlc/show";
	}


}
