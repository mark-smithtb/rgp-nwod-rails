module ApplicationHelper
  def title title
    content_for :title, title
  end

  def page_header
    render partial: 'layouts/page_header'
  end

  def flash_messages
    render partial: 'layouts/flash_messages'
  end

  def footer
    render partial: 'layouts/footer'
  end

  ###############################################
  # Alerts
  def bootstrap_class_for flash_type
    {
      success: 'alert-success',
      error: 'alert-danger',
      alert: 'alert-warning',
      notice: 'alert-info'
    }[flash_type.to_sym] || flash_type.to_s
  end

  ###############################################
  # Datetime Helpers
  def date_only datetime
    I18n.l datetime.in_time_zone, format: :date_only unless datetime.nil?
  end

  def time_only datetime
    I18n.l datetime.in_time_zone, format: :time_only unless datetime.nil?
  end

  def mf_date_and_time datetime
    render partial: 'layouts/microformats/date_and_time', locals: { datetime: datetime }
  end

  def mf_email email
    render partial: 'layouts/microformats/email', locals: { email: email }
  end

  def mf_image_preview image
    render partial: 'layouts/microformats/image_preview', locals: { image: image }
  end

  def mf_time_ago time
    render partial: 'layouts/microformats/time_ago', locals: { time: time }
  end

  def mf_telephone telephone
    render partial: 'layouts/microformats/telephone', locals: { telephone: telephone }
  end

  ###############################################
  # Sorting
  def sortable column, title = nil
    title ||= column.titleize
    css_class = (column.to_s == sort_column) ? "current #{sort_direction}" : nil
    direction = (column.to_s == sort_column && sort_direction == 'desc') ? 'asc' : 'desc'
    logger.debug "Sortable - column: #{column}, sort_column: #{sort_column}, sort_direction: #{sort_direction}, direction: #{direction}"
    link_to title, { sort: column, direction: direction }, class: css_class
  end

end

