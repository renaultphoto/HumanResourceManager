package com.renault.util;

import com.renault.domain.Department;
import com.renault.domain.Employee;
import com.renault.domain.Position;

/**
 * 完成 Employee 与 Department, Position 对象的关联映射
 * @author renault
 *
 */
public class IntegrateObject {

    public static void genericAssociation(Integer dept_id,Integer pos_id,Employee employee){
        Department department = new Department();
        department.setId(dept_id);
        Position position = new Position();
        position.setId(pos_id);
        employee.setDepartment(department);
        employee.setPosition(position);
    }
}
