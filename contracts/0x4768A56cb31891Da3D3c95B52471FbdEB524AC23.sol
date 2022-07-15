contract main {




// =====================  Runtime code  =====================


address stor1;
mapping of uint256 stor99;
uint256 stor6BEC;

function _fallback() payable {
    revert
}

function airdrop(address[] arg1, uint256[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(32 * arg1.length) + 97 < 96 or ceil32(32 * arg1.length) + 97 > test266151307():
        revert with 'NH{q', 65
    mem[96] = arg1.length
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    s = 128
    idx = arg1 + 36
    while idx < arg1 + (32 * arg1.length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        s = s + 32
        idx = idx + 32
        continue 
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(32 * arg2.length) + 98 < 97 or ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 98 > test266151307():
        revert with 'NH{q', 65
    mem[ceil32(32 * arg1.length) + 97] = arg2.length
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    idx = arg2 + 36
    s = ceil32(32 * arg1.length) + 129
    while idx < arg2 + (32 * arg2.length) + 36:
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    if stor1 != msg.sender:
        revert with 0, 'owner'
    mem[ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 98] = 8
    mem[ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 130] = 'balances'
    mem[ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 198] = 32
    mem[ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 230] = 8
    mem[ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 262] = 'balances'
    mem[ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 270] = 0
    mem[ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 162] = 100
    mem[ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 194 len 4] = getId(string arg1)
    mem[ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 294 len 128] = 0, 'balances', 0, mem[ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 302 len 20]
    mem[ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 394] = 0
    staticcall this.address with:
            gas gas_remaining wei
           args mem[ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 298 len 96]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'getMappingId transferrer'
        _740 = sha3(mem[192 len mem[160]])
        idx = 0
        while idx < arg1.length:
            if idx >= arg2.length:
                revert with 'NH{q', 50
            if mem[(32 * idx) + ceil32(32 * arg1.length) + 129] and stor6BEC > -1 / mem[(32 * idx) + ceil32(32 * arg1.length) + 129]:
                revert with 'NH{q', 17
            if stor[_740][msg.sender] < mem[(32 * idx) + ceil32(32 * arg1.length) + 129] * stor6BEC:
                revert with 'NH{q', 17
            stor[_740][msg.sender] += -1 * mem[(32 * idx) + ceil32(32 * arg1.length) + 129] * stor6BEC
            if idx >= arg2.length:
                revert with 'NH{q', 50
            if mem[(32 * idx) + ceil32(32 * arg1.length) + 129] and stor6BEC > -1 / mem[(32 * idx) + ceil32(32 * arg1.length) + 129]:
                revert with 'NH{q', 17
            if idx >= arg1.length:
                revert with 'NH{q', 50
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = _740
            if stor[_740][mem[(32 * idx) + 140 len 20]] > !(mem[(32 * idx) + ceil32(32 * arg1.length) + 129] * stor6BEC):
                revert with 'NH{q', 17
            stor[_740][mem[(32 * idx) + 140 len 20]] += mem[(32 * idx) + ceil32(32 * arg1.length) + 129] * stor6BEC
            if idx >= arg1.length:
                revert with 'NH{q', 50
            _957 = mem[(32 * idx) + 128]
            if idx >= arg2.length:
                revert with 'NH{q', 50
            mem[ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 294] = mem[(32 * idx) + ceil32(32 * arg1.length) + 129]
            emit Transfer(mem[ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 294], msg.sender, address(_957));
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    else:
        mem[ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 294] = return_data.size
        mem[ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 326 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'getMappingId transferrer'
        _743 = sha3(mem[ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 390 len mem[ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 358]])
        idx = 0
        while idx < arg1.length:
            if idx >= arg2.length:
                revert with 'NH{q', 50
            if mem[(32 * idx) + ceil32(32 * arg1.length) + 129] and stor6BEC > -1 / mem[(32 * idx) + ceil32(32 * arg1.length) + 129]:
                revert with 'NH{q', 17
            if stor[_743][msg.sender] < mem[(32 * idx) + ceil32(32 * arg1.length) + 129] * stor6BEC:
                revert with 'NH{q', 17
            stor[_743][msg.sender] += -1 * mem[(32 * idx) + ceil32(32 * arg1.length) + 129] * stor6BEC
            if idx >= arg2.length:
                revert with 'NH{q', 50
            if mem[(32 * idx) + ceil32(32 * arg1.length) + 129] and stor6BEC > -1 / mem[(32 * idx) + ceil32(32 * arg1.length) + 129]:
                revert with 'NH{q', 17
            if idx >= arg1.length:
                revert with 'NH{q', 50
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = _743
            if stor[_743][mem[(32 * idx) + 140 len 20]] > !(mem[(32 * idx) + ceil32(32 * arg1.length) + 129] * stor6BEC):
                revert with 'NH{q', 17
            stor[_743][mem[(32 * idx) + 140 len 20]] += mem[(32 * idx) + ceil32(32 * arg1.length) + 129] * stor6BEC
            if idx >= arg1.length:
                revert with 'NH{q', 50
            _959 = mem[(32 * idx) + 128]
            if idx >= arg2.length:
                revert with 'NH{q', 50
            mem[ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + ceil32(return_data.size) + 295] = mem[(32 * idx) + ceil32(32 * arg1.length) + 129]
            emit Transfer(mem[ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + ceil32(return_data.size) + 295], msg.sender, address(_959));
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
}



}
