contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_21786ec4(?) payable {
    require calldata.size - 4 >= 64
    require cd[36] <= 4294967296
    require cd[36] + 36 <= calldata.size
    require ('cd', 36).length <= 4294967296 and cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = 0
    while idx < ('cd', 36).length:
        if eth.balance(cd[((32 * idx) + cd[36] + 36)]) >= cd[4]:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = s + 1
        continue 
    if s:
        mem[128 len 32 * s] = code.data[666 len 32 * s]
    idx = 0
    t = 0
    while idx < ('cd', 36).length:
        if eth.balance(cd[((32 * idx) + cd[36] + 36)]) >= cd[4]:
            idx = idx + 1
            t = t
            continue 
        require idx < ('cd', 36).length
        require t < s
        mem[(32 * t) + 128] = address(cd[((32 * idx) + cd[36] + 36)])
        idx = idx + 1
        t = t + 1
        continue 
    mem[(32 * s) + 192 len floor32(s)] = mem[128 len floor32(s)]
    return Array(len=s, data=mem[128 len floor32(s)], mem[(32 * s) + floor32(s) + 192 len (32 * s) - floor32(s)])
}



}
