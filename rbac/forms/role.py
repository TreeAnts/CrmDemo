from rbac import models
from django import forms


class RoleModelForm(forms.ModelForm):
    class Meta:
        model = models.Role
        fields = ['title',]
        widgets = {
            'title': forms.TextInput(attrs={'class': 'form-control'})
        }