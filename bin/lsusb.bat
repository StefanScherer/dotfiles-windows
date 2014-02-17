@powershell -NoProfile -ExecutionPolicy unrestricted -Command "foreach ($obj in gwmi Win32_USBControllerDevice) { write-host $obj.Dependent }"


