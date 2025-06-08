from dataclasses import dataclass, field
from typing import List

@dataclass
class Room:
    id: str
    type: str

@dataclass
class Teacher:
    name: str

@dataclass
class SchoolClass:
    name: str

@dataclass
class Activity:
    teacher: Teacher
    school_class: SchoolClass
    subject: str
    weekly_count: int

@dataclass
class Lesson:
    day: int
    slot: int
    room: Room
    activity: Activity

@dataclass
class Timetable:
    rooms: List[Room] = field(default_factory=list)
    activities: List[Activity] = field(default_factory=list)
    lessons: List[Lesson] = field(default_factory=list)

    def add_room(self, room: Room):
        self.rooms.append(room)

    def add_activity(self, activity: Activity):
        self.activities.append(activity)

    def add_lesson(self, lesson: Lesson):
        self.lessons.append(lesson)
