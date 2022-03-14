class SecretDiary
  def initialize(diary) # diary is an instance of Diary
    @diary = diary
    @locked = true
  end

  def read
    # Raises the error "Go away!" if the diary is locked
    # Returns the diary's contents if the diary is unlocked
    # The diary starts off locked
    if @locked
      "Go away!"
    else
      @diary.contents
    end
  end

  def lock
    @locked = true
  end

  def unlock
    @locked = false
  end
end

