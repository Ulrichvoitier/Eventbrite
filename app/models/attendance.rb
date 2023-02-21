class Attendance < ApplicationRecord
    after_create :attendance_send
      
    def attendance_send
        admin = self.event.admin
        user = self.user
        AttendanceMailer.attendance_email(admin, user).deliver_now
    end

    belongs_to :user
    belongs_to :event
end
