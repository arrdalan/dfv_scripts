#!python

import sys
sys.path.append('/usr/lib/python2.7/site-packages/')
from xen.xend.xenstore.xsutil import *
from xen.xend.xenstore.xstransact import *


b_id = int(sys.argv[1]) #backend id
f_id = int(sys.argv[2]) #frontend id

xs = xshandle()

b_path = xs.get_domain_path(b_id) + "/backend/dfv/" + str(f_id) + "/0"
f_path = xs.get_domain_path(f_id) + "/device/dfv/0"
print(b_path)
print(f_path)

xstr = xstransact("");

xstr.write(b_path, "")
xstr.write(f_path, "")

xstr.set_permissions(b_path, { 'dom'   : b_id,
                                    'read'  : True,
                                    'write' : True },
                                  { 'dom'   : f_id,
                                    'read'  : True,
                                    'write' : False })
xstr.set_permissions(f_path, { 'dom'   : f_id,
                                    'read'  : True,
                                    'write' : True },
                                  { 'dom'   : b_id,
                                    'read'  : True,
                                    'write' : False })

xstr.write(b_path + "/state", "1")
xstr.write(b_path + "/frontend-id", str(f_id))


xstr.write(f_path + "/state", "1")
xstr.write(f_path + "/backend-id", str(b_id))

xstr.write(b_path + "/frontend", f_path)
xstr.write(f_path + "/backend", b_path)


xstr.commit();
