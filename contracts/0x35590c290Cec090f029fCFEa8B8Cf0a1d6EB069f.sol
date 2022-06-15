contract main {




// =====================  Runtime code  =====================


uint256 totalEther;

function totalEther() {
    return totalEther
}

function _fallback() payable {
    revert
}

function distribute(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg1.length) + 97 > test266151307() or ceil32(32 * arg1.length) + 97 < 96:
        revert with 0, 65
    require calldata.size >= arg1 + (32 * arg1.length) + 36
    s = arg1 + 36
    t = 128
    idx = 0
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    require arg1.length > 0
    if not arg1.length:
        revert with 0, 18
    if 1 == arg1.length:
        if 0 >= arg1.length:
            revert with 0, 50
        call mem[140 len 20] with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if totalEther > !msg.value:
            revert with 0, 17
        if totalEther + msg.value < totalEther:
            revert with 0, 1
        totalEther += msg.value
    if 1 > arg1.length:
        revert with 0, 1
    if arg1.length < 1:
        revert with 0, 17
    if var52002 < arg1.length - 1:
        if var54001 >= arg1.length:
            revert with 0, 50
        call mem[(32 * var56001) + 140 len 20] with:
           value msg.value / arg1.length wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if msg.value / arg1.length > var60002:
            revert with 0, 1
        if var64001 < msg.value / arg1.length:
            revert with 0, 17
        if var72001 == -1:
            revert with 0, 17
        # nil
    else:
        if arg1.length < 1:
            revert with 0, 17
        if arg1.length - 1 >= arg1.length:
            revert with 0, 50
        call mem[(32 * arg1.length - 1) + 140 len 20] with:
           value var52005 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if totalEther > !msg.value:
            revert with 0, 17
        if totalEther + msg.value < totalEther:
            revert with 0, 1
        totalEther += msg.value
}



}
