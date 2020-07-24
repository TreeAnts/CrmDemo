from stark.service.v1 import site
from apps.web import models
from apps.web.views.department import DepartmentHandler
from apps.web.views.userinfo import UserInfoHandler
from apps.web.views.course import CourseHandler
from apps.web.views.school import SchoolHandler
from apps.web.views.class_list import ClassListHandler
from apps.web.views.private_customer import PrivateCustomerHandler
from apps.web.views.public_customer import PublicCustomerHandler
from apps.web.views.consult_record import ConsultRecordHandler
from apps.web.views.payment_record import PaymentRecordHandler
from apps.web.views.check_payment_record import CheckPaymentRecordHandler
from apps.web.views.student import StudentHandler
from apps.web.views.score_record import ScoreHandler
from apps.web.views.course_record import CourseRecordHandler



site.register(models.Department, DepartmentHandler)
site.register(models.UserInfo, UserInfoHandler)

site.register(models.School, SchoolHandler)
site.register(models.Course, CourseHandler)
site.register(models.ClassList, ClassListHandler)

site.register(models.Customer, PublicCustomerHandler, 'pub')
site.register(models.Customer, PrivateCustomerHandler, 'priv')

site.register(models.ConsultRecord, ConsultRecordHandler)
site.register(models.PaymentRecord, PaymentRecordHandler)
site.register(models.PaymentRecord, CheckPaymentRecordHandler, 'check')

site.register(models.Student, StudentHandler)
site.register(models.ScoreRecord, ScoreHandler)
site.register(models.CourseRecord, CourseRecordHandler)