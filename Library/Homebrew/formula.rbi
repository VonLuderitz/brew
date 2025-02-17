# typed: strict

class Formula
  def initialize(name, path, spec, alias_path: nil, tap: nil, force_bottle: false)
    # These are set in the inherited block, but sorbet doesn't know that,
    #   so we need to declare them here.
    @head = T.let(nil, T.nilable(SoftwareSpec))
    @stable = T.let(nil, T.nilable(SoftwareSpec))
  end
end
