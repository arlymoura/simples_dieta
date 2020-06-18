class DietaryKind < EnumerateIt::Base
  associate_values(
    :breakfast,
    :morning_snack,
    :lunch,
    :afternoon_snack,
    :dinner,
    :supper
  )
end
