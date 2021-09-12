select ceiling(avg(convert(decimal,salary))-avg(convert(decimal,replace(salary,0,''))))
from employees