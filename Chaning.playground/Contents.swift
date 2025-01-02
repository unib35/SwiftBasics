import Foundation

// MARK: - 모델 정의
class Employee {
    var name: String
    var jobTitle: String?
    
    init(name: String, jobTitle: String? = nil) {
        self.name = name
        self.jobTitle = jobTitle
    }
    
    func getJobDescription() -> String? {
        if let jobTitle = jobTitle {
            return "\(name) is working as a \(jobTitle)."
        } else {
            return "\(name) has no job title assigned."
        }
    }
}

class Department {
    var name: String
    var employees: [Employee]?
    
    init(name: String, employees: [Employee]? = nil) {
        self.name = name
        self.employees = employees
    }
}

class Company {
    var name: String
    var department: Department?
    
    init(name: String, department: Department? = nil) {
        self.name = name
        self.department = department
    }
}

// MARK: - 데이터 생성
let employee1 = Employee(name: "Alice", jobTitle: "iOS Developer")
let employee2 = Employee(name: "Bob", jobTitle: "Android Developer")
let employee3 = Employee(name: "Charlie") // Job title 없음

let itDepartment = Department(name: "IT", employees: [employee1, employee2, employee3])

let myCompany = Company(name: "TechCorp", department: itDepartment)

// MARK: - 옵셔널 체이닝 실습

// 1. 회사 이름 출력
print("Company Name: \(myCompany.name)")

// 2. 부서 이름 확인
if let departmentName = myCompany.department?.name {
    print("Department Name: \(departmentName)")
} else {
    print("No department found.")
}

// 3. 직원 수 확인
if let employeeCount = myCompany.department?.employees?.count {
    print("Number of employees: \(employeeCount)")
} else {
    print("No employees found.")
}

// 4. 첫 번째 직원 이름 출력
if let firstEmployeeName = myCompany.department?.employees?.first?.name {
    print("First employee name: \(firstEmployeeName)")
} else {
    print("No employees available.")
}

// 5. 직원들의 직업 설명 출력
if let employees = myCompany.department?.employees {
    for employee in employees {
        if let jobDescription = employee.getJobDescription() {
            print(jobDescription)
        }
    }
} else {
    print("No employees to display.")
}

// 6. 부서가 없는 회사 생성
let emptyCompany = Company(name: "EmptyCorp")

// 부서 이름 확인 (부서가 없을 경우 처리)
let emptyDepartmentName = emptyCompany.department?.name ?? "No department"
print("Department in EmptyCorp: \(emptyDepartmentName)")

// 직원 수 확인 (부서와 직원이 모두 없을 경우 처리)
let emptyEmployeeCount = emptyCompany.department?.employees?.count ?? 0
print("Number of employees in EmptyCorp: \(emptyEmployeeCount)")
