class DS
  def initialized
    p "Initialized!"
  end

  def get_cpu_info(workstation_id)
    return "#{workstation_id} has 2.9 Ghz qurd-core"
  end

  def get_cpu_price(workstation_id)
    return 120
  end

  def get_mouse_info(workstation_id)
    return "#{workstation_id} has Wireless Touch"
  end

  def get_mouse_price(workstation_id)
    return 60
  end

  def get_keybord_info(workstation_id)
    return "#{workstation_id} has backlight on kyes."
  end

  def get_keybord_price(workstation_id)
    return 55
  end
end
