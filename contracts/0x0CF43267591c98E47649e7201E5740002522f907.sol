contract main {




// =====================  Runtime code  =====================


uint256 retrieve;

function retrieve() payable {
    emit LogValue(retrieve);
    return retrieve
}

function test() payable {
    # nil
}

function _fallback() payable {
    revert
}

function store(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    retrieve = arg1
    emit Stored(arg1);
}

function give(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_f02fb832(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if 0 >= ('cd', 4).length:
        revert with 'NH{q', 50
    mem[floor32(('cd', 4).length) + 97] = mem[140 len 20]
    emit LogAddress(mem[floor32(('cd', 4).length) + 97]);
}



}
