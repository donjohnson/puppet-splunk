# Specify a path to exclude
# splunk::inputs::blacklist { '/exclude_me': }
# 
# generates:
# [blacklist:/exclude_me]
#
define splunk::inputs::blacklist (
  $target = 'inputs.conf',
  $order  = '30',
  $path   = $title,
) {
  concat::fragment { "inputs::blacklist::${title}":
    target  => $target,
    order   => $order,
    content => template("${module_name}/30-blacklist.erb"),
  }
}
