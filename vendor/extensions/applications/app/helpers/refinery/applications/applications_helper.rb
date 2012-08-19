module Refinery::Applications::ApplicationsHelper
  def append_classes(*args)
    args.compact.collect(&:split).flatten.compact.collect(&:strip).join(' ')
  end
end