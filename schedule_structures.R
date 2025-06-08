# Basic R6 data structures for a timetable generator

library(R6)

Room <- R6Class("Room",
  public = list(
    id = NULL,
    type = NULL,
    initialize = function(id, type) {
      self$id <- id
      self$type <- type
    }
  )
)

Teacher <- R6Class("Teacher",
  public = list(
    name = NULL,
    initialize = function(name) {
      self$name <- name
    }
  )
)

SchoolClass <- R6Class("SchoolClass",
  public = list(
    name = NULL,
    initialize = function(name) {
      self$name <- name
    }
  )
)

Activity <- R6Class("Activity",
  public = list(
    teacher = NULL,
    school_class = NULL,
    subject = NULL,
    weekly_count = NULL,
    initialize = function(teacher, school_class, subject, weekly_count) {
      self$teacher <- teacher
      self$school_class <- school_class
      self$subject <- subject
      self$weekly_count <- weekly_count
    }
  )
)

Lesson <- R6Class("Lesson",
  public = list(
    day = NULL,
    slot = NULL,
    room = NULL,
    activity = NULL,
    initialize = function(day, slot, room, activity) {
      self$day <- day
      self$slot <- slot
      self$room <- room
      self$activity <- activity
    }
  )
)

Timetable <- R6Class("Timetable",
  public = list(
    rooms = list(),
    activities = list(),
    lessons = list(),
    initialize = function() {
      self$rooms <- list()
      self$activities <- list()
      self$lessons <- list()
    },
    add_room = function(room) {
      self$rooms[[length(self$rooms) + 1]] <- room
    },
    add_activity = function(activity) {
      self$activities[[length(self$activities) + 1]] <- activity
    },
    add_lesson = function(lesson) {
      self$lessons[[length(self$lessons) + 1]] <- lesson
    }
  )
)

