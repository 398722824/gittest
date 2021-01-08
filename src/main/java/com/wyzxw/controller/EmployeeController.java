package com.wyzxw.controller;

import com.wyzxw.entity.Employee;
import com.wyzxw.service.EmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;
import java.util.Map;

@Controller//告诉框架这是控制器
public class EmployeeController {
    @Autowired//自动装配一个实现类，相当于new
    private EmployeeService employeeService;


    /**
     * 原来在servlet中会配置servlet-mappingurl，现在它是通过
     * @RequestMapping来声明请求url的
     * http://localhost：8080/empsys/list.jsp
     * @param map
     * @return
     */
    @RequestMapping(value="/list")
    public String getEmpList(Map map){
        List<Employee> empList = employeeService.getEmplist();
        //原来我们在servlet中可以把数据存储在request和session中，现在存在map中相当去存储到request的作用域中。
        map.put("empList",empList);
        System.out.println(empList);
        /**
         * return "list"中的list称为视图逻辑名，我们的目的是要找到物理视图名
         * list。jsp是物理视图名
         *<bean
         * 		class="org.springframework.web.servlet.view.InternalResourceViewResolver">
         * 		<property name="prefix" value="/WEB-INF/jsp/" />
         * 		<property name="suffix" value=".jsp" />
         * 	</bean>
         * 	匹配方式：前缀+逻辑名+后缀
         * 	/WEB—INF/jsp/list.jsp
         */

        return "list";
    }
}
