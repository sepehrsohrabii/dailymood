from django.contrib.auth.models import User, Group
from apisystem.models import UserMood
from rest_framework import viewsets
from rest_framework import permissions
from apisystem.serializers import UserSerializer, GroupSerializer, UserMoodSerializer


class UserViewSet(viewsets.ModelViewSet):
    """
    API endpoint that allows users to be viewed or edited.
    """
    queryset = User.objects.all().order_by('-date_joined')
    serializer_class = UserSerializer
    permission_classes = [permissions.IsAuthenticated]


class GroupViewSet(viewsets.ModelViewSet):
    """
    API endpoint that allows groups to be viewed or edited.
    """
    queryset = Group.objects.all()
    serializer_class = GroupSerializer
    permission_classes = [permissions.IsAuthenticated]

class UserMoodViewSet(viewsets.ModelViewSet):
    """
    API endpoint that allows groups to be viewed or edited.
    """
    queryset = UserMood.objects.all()
    serializer_class = UserMoodSerializer
    permission_classes = [permissions.IsAuthenticated]