module FlashesHelper
  FLASH_CALSSES = { alert: "danger", notice: "success", warnring: "warning"}.freeze

  def flash_class(key)
    FLASH_CALSSES.fetch key.to_sym, key
  end

  def user_facing_flashes
    flash.to_hash.slice  "alert", "notice", "warnring"
  end
end
