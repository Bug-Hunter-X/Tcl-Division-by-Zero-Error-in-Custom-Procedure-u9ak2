proc safeProc {a b} {
    if {$a == 0} {
        return -code error "Division by zero error" 
    } else {
        return [expr {$b / $a}]
    }
}
proc saferProc {a b} {
    set result ""
    if {[catch {expr {$b / $a}} result]} {
        return -code error "Division error: $result"
    } else {
        return $result
    }
}