contract main {




// =====================  Runtime code  =====================


address stor0;
array of uint256 success;
array of uint256 sub_f2e5f682;

function success(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < success.length
    return success[arg1]
}

function sub_f2e5f682(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_f2e5f682.length
    return sub_f2e5f682[arg1]
}

function _fallback() payable {
    revert
}

function sub_ecdf681f(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    while idx < ('cd', 4).length:
        mem[96] = 0xb00b52f100000000000000000000000000000000000000000000000000000000
        mem[100] = cd[((32 * idx) + cd[4] + 36)]
        require ext_code.size(stor0)
        call stor0.adventure(uint256 arg1) with:
             gas gas_remaining wei
            args cd[((32 * idx) + cd[4] + 36)]
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        if not ext_call.success:
            sub_f2e5f682.length++
            mem[0] = 2
            sub_f2e5f682[sub_f2e5f682.length] = cd[((32 * idx) + cd[4] + 36)]
        else:
            success.length++
            mem[0] = 1
            success[success.length] = cd[((32 * idx) + cd[4] + 36)]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    mem[96] = 32
    mem[128] = success.length
    mem[0] = 1
    idx = 0
    s = 0
    t = mem[64] + 64
    while idx < success.length:
        mem[t] = stor[s + sha3(mem[0])]
        idx = idx + 1
        s = s + 1
        t = t + 32
        continue 
    emit 0xd915dfbe: mem[mem[64] len (32 * success.length) + -mem[64] + 160]
    _26 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = sub_f2e5f682.length
    mem[0] = 2
    idx = 0
    s = 0
    t = mem[64] + 64
    while idx < sub_f2e5f682.length:
        mem[t] = stor[s + sha3(mem[0])]
        idx = idx + 1
        s = s + 1
        t = t + 32
        continue 
    emit 0xda2a553c: mem[mem[64] len _26 + (32 * sub_f2e5f682.length) + -mem[64] + 64]
    success.length = 0
    idx = 0
    while success.length > idx:
        success[idx] = 0
        idx = idx + 1
        continue 
    sub_f2e5f682.length = 0
    idx = 0
    while sub_f2e5f682.length > idx:
        sub_f2e5f682[idx] = 0
        idx = idx + 1
        continue 
}



}
