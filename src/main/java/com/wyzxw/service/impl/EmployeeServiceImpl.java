package com.wyzxw.service.impl;

import com.wyzxw.entity.Employee;
import com.wyzxw.mapper.EmployeeMapper;
import com.wyzxw.service.EmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service//告诉框架（springmvc）这是一个业务类
@Transactional//开启事务处理
public class EmployeeServiceImpl implements EmployeeService {
    @Autowired//该注解会自动装配一个Employeemapper的实现类，赋值给employeemapper，相当去new
    private EmployeeMapper employeeMapper;

    @Override
    public List<Employee> getEmplist() {
        return employeeMapper.selectByExample(null);//根据条件查询多条记录，当参数为null时候就查询全部
    }
}
