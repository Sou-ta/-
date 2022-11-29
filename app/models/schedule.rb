class Schedule < ApplicationRecord
  enum event_status: {
      出勤日（申請可）: 0,
      出勤日（申請困難）: 1,
      出勤日（申請不可）: 2,
      休日: 3,
      有給推奨日: 4
  }
  def get_color

    if self.event_status_before_type_cast == 0
      #緑
      color = "#f0fff0"
    elsif self.event_status_before_type_cast == 1
      color = "#ffff00"
    elsif self.event_status_before_type_cast == 2
      color = "#800000"
    elsif self.event_status_before_type_cast == 3
      color = "#adff2f"
    elsif self.event_status_before_type_cast == 4
      color = "#00ffff"
    end
    color
  end

  has_many :apply_paids
  has_many :user

end
