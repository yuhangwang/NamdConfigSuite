source "../../config/lastTimeStep-0.1.0.tm"

proc test {xsc_file solution} {
    set answer [::namd::lastTimeStep $xsc_file]
    if {$answer != $solution} {
        puts "test failed!"
    } else {
        puts "pass! $answer == $solution"
    }
}

test "NON-EXISTENT.xsc" 0
