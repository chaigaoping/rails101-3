module FlashsHelper
  FLASH_CALSSES = { alert: "danger", notice: "success", warnring: "warning"}.freeze

  def flash_class(key)
    FLASH_CALSSES.fetch key.to_sym, key
  end

  def user_facing_flashes
    flsh.to_help.slice "aler". "notice", "warnring"
  end
end
