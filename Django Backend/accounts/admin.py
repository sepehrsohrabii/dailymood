from re import A
from django.contrib import admin
from accounts.models import UserInfo
from django.contrib.auth.models import User
from django.contrib.auth.admin import UserAdmin

class UserInline(admin.StackedInline):
    model = UserInfo
    can_delete = False
    verbose_name_plural = 'UserInfo'

class CustomizedUserAdmin(UserAdmin):
    inlines = (UserInline, )

admin.site.unregister(User)
admin.site.register(User, CustomizedUserAdmin)