part of 'social_media_bloc.dart';

abstract class SocialMediaState {}

class SocialMediaInitial extends SocialMediaState {}

class SocialMediaLoading extends SocialMediaState {}

class SocialMediaError extends SocialMediaState {}

class SocialMediaSuccess extends SocialMediaState {}
