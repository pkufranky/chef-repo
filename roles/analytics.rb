name "analytics"
description "analytics role"
run_list(
  'role[coffeescript]',
  'recipe[analytics]'
)

