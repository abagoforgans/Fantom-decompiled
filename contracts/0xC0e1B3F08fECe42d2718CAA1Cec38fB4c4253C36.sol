contract main {




// =====================  Runtime code  =====================


#
#  - getProfit(address arg1, address arg2)
#  - _fallback()
#
address owner;
array of struct stor2;
mapping of uint256 stor3;

function baseTokensContains(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor3[address(arg1)])
}

function owner() {
    return owner
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function addBaseToken(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor3[address(arg1)]:
        stor2.length++
        stor2[stor2.length].field_0 = arg1
        stor2[stor2.length].field_160 = 0
        stor3[address(arg1)] = stor2.length
    emit BaseTokenAdded(arg1);
}

function getBaseTokens() {
    if stor2.length > test266151307():
        revert with 0, 65
    mem[96] = stor2.length
    mem[64] = (32 * stor2.length) + 128
    if stor2.length:
        mem[128 len 32 * stor2.length] = call.data[calldata.size len 32 * stor2.length]
    idx = 0
    while idx < stor2.length:
        mem[0] = 2
        if idx >= stor2.length:
            revert with 0, 50
        mem[(32 * idx) + 128] = stor2[idx].field_0
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    mem[(32 * stor2.length) + 128] = 32
    mem[(32 * stor2.length) + 160] = stor2.length
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < stor2.length:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * stor2.length) + -mem[64] + 192
}

function removeBaseToken(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args owner, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if stor3[address(arg1)]:
        if stor3[address(arg1)] < 1:
            revert with 0, 17
        if stor2.length < 1:
            revert with 0, 17
        if stor2.length - 1 != stor3[address(arg1)] - 1:
            if stor2.length - 1 >= stor2.length:
                revert with 0, 50
            if stor3[address(arg1)] - 1 >= stor2.length:
                revert with 0, 50
            stor2[stor3[address(arg1)]].field_0 = stor2[stor2.length].field_0
            stor3[stor2[stor2.length].field_0] = stor3[address(arg1)]
        if not stor2.length:
            revert with 0, 49
        stor2[stor2.length].field_0 = 0
        stor2.length--
        stor3[address(arg1)] = 0
    emit BaseTokenRemoved(arg1);
}

function withdraw() payable {
    mem[64] = 96
    require not msg.value
    if not eth.balance(this.address):
        if var38002 >= stor2.length:
        if var44001 >= stor2.length:
            revert with 0, 50
        mem[0] = 2
        mem[96] = 0x70a0823100000000000000000000000000000000000000000000000000000000
        mem[100] = this.address
        require ext_code.size(address(var50001))
        staticcall var52002.mem[var52003 len 4] with:
                gas gas_remaining wei
               args mem[var52003 + 4 len var52004 - 4]
        mem[var52005] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require var56002 - var56001 >= 32
        if not var60001:
            if var64001 == -1:
                revert with 0, 17
            # nil
        else:
            mem[ceil32(return_data.size) + 96] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 100] = owner
            mem[ceil32(return_data.size) + 132] = var64006
            require ext_code.size(var64003)
            call var66002.mem[var66004 len 4] with:
                 gas gas_remaining wei
                args mem[var66004 + 4 len var66005 - 4]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            # nil
    else:
        call owner with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit Withdrawn(owner, eth.balance(this.address));
        if var41002 >= stor2.length:
        if var47001 >= stor2.length:
            revert with 0, 50
        mem[0] = 2
        mem[96] = 0x70a0823100000000000000000000000000000000000000000000000000000000
        mem[100] = this.address
        require ext_code.size(address(var53001))
        staticcall var55002.mem[var55003 len 4] with:
                gas gas_remaining wei
               args mem[var55003 + 4 len var55004 - 4]
        mem[var55005] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require var59002 - var59001 >= 32
        if not var63001:
            if var67001 == -1:
                revert with 0, 17
            # nil
        else:
            mem[ceil32(return_data.size) + 96] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 100] = owner
            mem[ceil32(return_data.size) + 132] = var67006
            require ext_code.size(var67003)
            call var69002.mem[var69004 len 4] with:
                 gas gas_remaining wei
                args mem[var69004 + 4 len var69005 - 4]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            # nil
}



}
