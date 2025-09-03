import 'package:flutter/material.dart';

@immutable
class CareerEvent {
  const CareerEvent({
    required this.year,
    required this.title,
    required this.description,
    required this.icon,
    this.company,
    this.location,
  });
  final int year;
  final String title;
  final String description;
  final IconData icon;
  final String? company;
  final String? location;

  static List<CareerEvent> get sampleEvents => [
    const CareerEvent(
      year: 2023,
      title: 'BSc Information Technology',
      description:
          'I began my BSc IT journey , building a strong foundation in software development, programming, and system design..',
      icon: Icons.code,
      company: 'Nallamuthu Gounder Mahalingam College.',
      location: 'Coimbatore,India',
    ),
    const CareerEvent(
      year: 2025,
      title: 'Java Developer Intern',
      description:
          "Currently working as a Java Developer Intern at CodeSoft, focused on backend development and core Java projects.",
      icon: Icons.code,
      company: 'CodeSoft',
      location: 'Coimbatore, India',
    ),
  ];

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CareerEvent &&
          runtimeType == other.runtimeType &&
          year == other.year &&
          title == other.title &&
          description == other.description &&
          icon == other.icon &&
          company == other.company &&
          location == other.location;

  @override
  int get hashCode =>
      year.hashCode ^ title.hashCode ^ description.hashCode ^ icon.hashCode ^ company.hashCode ^ location.hashCode;

  @override
  String toString() => 'CareerEvent(year: $year, title: $title, company: $company)';
}
