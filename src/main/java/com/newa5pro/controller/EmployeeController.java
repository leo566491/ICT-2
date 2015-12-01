/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.newa5pro.controller;

import com.newa5pro.employee.EmEdu;
import com.newa5pro.employee.EmExp;
import com.newa5pro.employee.EmInfo;
import com.newa5pro.employee.EmployeeService;
import com.newa5pro.skill.Skill;
import com.newa5pro.skill.SkillService;
import com.newa5pro.user.User;
import com.newa5pro.user.UserService;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

/**
 *
 * @author hy
 */
@Controller
public class EmployeeController {

    @Autowired
    EmployeeService employeeService;

    @Autowired
    UserService userService;

    @Autowired
    SkillService skillService;

    //emInfo.pic,emInfo.birth,emInfo.tel,emInfo.info,emInfo.skill,emInfo.fname,emInfo.lname,emInfo.title,emInfo.industry,emInfo.location,emInfo.doc,emInfo.Id
    @RequestMapping(value = "/employee/update", method = RequestMethod.POST)//add post when deployed
    public String postResume(HttpSession session,
            @RequestParam(value = "title") String title,
            @RequestParam(value = "location") String location,
            @RequestParam(value = "contact_number") String contactNumber,
            @RequestParam(value = "about_me") String about,
            @RequestParam(value = "my_skill") String skill,
            @RequestParam(value = "key_skills", required = false) String keySkills,
            @RequestParam(value = "industry") String industry,
            @RequestParam("photo") MultipartFile photo,
            @RequestParam("resume-file") MultipartFile resumeFile,
            @RequestParam(value = "school", required = false) String[] schools,
            @RequestParam(value = "education-dates", required = false) String[] educationDates,
            @RequestParam(value = "qualifications", required = false) String[] qualifications,
            @RequestParam(value = "notes", required = false) String[] notes,
            @RequestParam(value = "employer", required = false) String[] employers,
            @RequestParam(value = "experience-dates", required = false) String[] experienceDates,
            @RequestParam(value = "job-title", required = false) String[] jobTitles,
            @RequestParam(value = "responsibilities", required = false) String[] responsibilities,
            @RequestParam(value = "dobday") int dobDay,
            @RequestParam(value = "dobmonth") int dobMonth,
            @RequestParam(value = "dobyear") int dobYear) {

        String accountType = (String) session.getAttribute("type");
        // we need to use either person or employee, do not use both of them
        if (accountType != null && "employee".equals(accountType)) {
            Calendar dob = Calendar.getInstance();
            dob.set(dobYear, dobMonth, dobDay);
            EmInfo emInfo = new EmInfo();
            emInfo.setPic(photo.getOriginalFilename());
            emInfo.setBirth(dob.getTimeInMillis() / 1000);
            emInfo.setTel(contactNumber);
            emInfo.setInfo(about);
            emInfo.setSkill(skill);
            emInfo.setTitle(title);
            emInfo.setIndustry(industry);
            emInfo.setLocation(location);
            emInfo.setDoc(resumeFile.getOriginalFilename());
            emInfo.setId((int) (Integer) session.getAttribute("id"));
            String rootPath = session.getServletContext().getRealPath("/resources/");
            File dir = new File(rootPath + File.separator + "uploadFiles" + File.separator + "resume" + File.separator + emInfo.getId());
            if (!dir.exists()) {
                dir.mkdirs();
            }
            employeeService.updateEmInfo(emInfo);
            Map<String, Skill> skillMap =getSkillMap();
            if (keySkills != null) {
                List<Skill> skillList = new ArrayList<>();
                String[] keySkillStringList = keySkills.split(", ");
                for (String keySkill : keySkillStringList) {
                    Skill e = skillMap.get(keySkill);
                    if (e != null) {
                        skillList.add(e);
                    }
                }
                skillService.addSkill(emInfo.Id, skillList, "employee");
            }

            //String msg = "";
            try {
                fileUpload(photo, emInfo.getPic(), dir);

            } catch (Exception ex) {
                //msg += ex.getMessage();
            }
            try {
                fileUpload(resumeFile, emInfo.getDoc(), dir);
            } catch (Exception ex) {
                //msg += ex.getMessage();
            }
            for (int i = 0; i < schools.length; i++) {
                EmEdu emEdu = new EmEdu();
                emEdu.setEmId(emInfo.getId());
                emEdu.setAcademy(schools[i]);
                emEdu.setMajor(qualifications[i]);
                emEdu.setYear(educationDates[i]);
                emEdu.setInfo(notes[i]);
                employeeService.addEmEdu(emEdu);
            }
            for (int i = 0; i < employers.length; i++) {
                EmExp emExp = new EmExp();
                emExp.setEmId(emInfo.getId());
                emExp.setComName(employers[i]);
                emExp.setPeriod(experienceDates[i]);
                emExp.setRespon(responsibilities[i]);
                emExp.setTitle(jobTitles[i]);
                employeeService.addEmExp(emExp);

            }

            return "redirect:/resumeview" + emInfo.getId();
        } else {
            return "post-a-resume";
        }
    }

    @RequestMapping(value = "/resumeview{id}")//change this to restful url after refactoring
    public String viewJob(ModelMap model, @PathVariable("id") int id) {
        EmInfo emInfo = employeeService.getEmInfo(id);
        User user = userService.getUser(id, "employee");
        List<EmExp> emExp = employeeService.getEmExp(id);
        List<EmEdu> emEdu = employeeService.getEmEdu(id);
        List<Skill> keySkill = skillService.getSkill(id, "employee");
        Calendar cal = Calendar.getInstance();
        cal.setTimeInMillis(emInfo.getBirth() * 1000);
        model.addAttribute("fullname", String.format("%s %s", emInfo.getFname(), emInfo.getLname()));
        model.addAttribute("title", emInfo.getTitle());
        model.addAttribute("email", user.email);
        model.addAttribute("pic", "/resources/uploadFiles/resume/" + id + "/" + emInfo.getPic());
        model.addAttribute("doc", "/resources/uploadFiles/resume/" + id + "/" + emInfo.getDoc());
        model.addAttribute("about", emInfo.getInfo());
        model.addAttribute("skill", emInfo.getSkill());
        model.addAttribute("keyskill", keySkill);
        model.addAttribute("location", emInfo.getLocation());
        model.addAttribute("phone", emInfo.getTel());
        model.addAttribute("dob", new SimpleDateFormat("yy/MM/dd").format(cal.getTime()));
        model.addAttribute("experience", emExp);
        model.addAttribute("education", emEdu);
        try {
            model.addAttribute("url", URLEncoder.encode("http://youtube.com" + id, "UTF-8"));
        } catch (UnsupportedEncodingException ex) {
            Logger.getLogger(EmployeeController.class.getName()).log(Level.SEVERE, null, ex);
        }
        model.addAttribute("resume", "http://localhost:8080/resources/uploadFiles/resume/" + id + "/" + emInfo.getDoc());
        return "resume";
    }

    void fileUpload(MultipartFile file, String name, File dir) throws Exception {
        if (!file.isEmpty()) {

            byte[] bytes = file.getBytes();
            File serverFile = new File(dir.getAbsolutePath()
                    + File.separator + name);
            BufferedOutputStream stream = new BufferedOutputStream(
                    new FileOutputStream(serverFile));
            stream.write(bytes);
            stream.close();

        } else {
            throw new Exception("File " + name + " is empty");
        }
    }

    private Map<String, Skill> getSkillMap() {
        List<Skill> allSkill = skillService.getAllSkill();
        Map<String, Skill> skillMap = new HashMap<>();
        for (Skill s : allSkill) {
            skillMap.put(s.skillInfo, s);
        }
        return skillMap;
    }

}
