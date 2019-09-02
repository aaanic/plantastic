class Reminder < ApplicationRecord
  belongs_to :user
  belongs_to :environment

  after_create :schedule_reminder

  private

  def getDateTime
    if [1,2,3,4,5,6,7,8,9].include?(self.hours)
      DateTime.parse(DateTime.parse(self.weekday).strftime("%Y-%m-%dT0#{self.hours}:00:00+02:00"))
    else
      DateTime.parse(DateTime.parse(self.weekday).strftime("%Y-%m-%dT#{self.hours}:00:00+02:00"))
    end
  end


  def getDayInTime

    preWeekday = getDateTime

    if preWeekday < DateTime.parse(DateTime.now.strftime("%Y-%m-%dT00:00:00+02:00"))
      preWeekday + 7
    else
      preWeekday
    end
  end

  def repeatMailer(waitDate)
    if self.frequency == 'DAILY'
        # new_date = DateTime.parse(waitDate.strftime("%Y-%m-%dT16:00:00%z"))
        new_date = waitDate + 1
        SendRemindersJob.set(wait_until: new_date).perform_later(self.id)

      elsif self.frequency == 'WEEKLY'
        new_date = waitDate + 7
        SendRemindersJob.set(wait_until: new_date).perform_later(self.id)

      elsif self.frequency == 'EVERY TWO WEEKS'
        new_date = waitDate + 14
        SendRemindersJob.set(wait_until: new_date).perform_later(self.id)

      elsif self.frequency == 'MONTHLY'
        new_date = waitDate + 30
        SendRemindersJob.set(wait_until: new_date).perform_later(self.id)
      end
  end


  def schedule_reminder
    unless self.frequency == 'NONE'
      actualDate = getDayInTime

      SendRemindersJob.set(wait_until: actualDate).perform_later(self.id)

      waitDate = getDateTime
      repeatMailer(waitDate)
    end
  end
end
