class ApplyPaid < ApplicationRecord
  belongs_to :user
  belongs_to :schedule, optional: true
  enum apply_status: {waiting: 0, permited: 1, denied: 2}
  enum reason: {私用のため: 0, 体調不良: 1, その他: 2 }

  def get_color

    if self.apply_status_before_type_cast == 0
      #緑
      color = "#f0fff0"
    elsif self.apply_status_before_type_cast == 1
      color = "#adff2f"
    elsif self.apply_status_before_type_cast == 2
      color = "#ffff00"
    end
    color
  end

end
