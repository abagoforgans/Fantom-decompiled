contract main {




// =====================  Runtime code  =====================


uint8 stor0; offset 160
address assetAddress;
array of address stor1;
array of uint256 stor2;
address stor3;
uint256 stor3;
address stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
array of address stor8;
uint8 stor9;

function asset() payable {
    return assetAddress
}

function sub_abd29ba4(?) payable {
    return bool(stor0)
}

function _fallback() payable {
    revert
}

function setOwner() payable {
    if address(stor3):
        if address(stor3) != msg.sender:
            revert with 0, '!owen'
    uint256(stor3) = msg.sender or Mask(96, 160, uint256(stor3))
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(stor3):
        if address(stor3) != msg.sender:
            revert with 0, '!owen'
    address(stor3) = arg1
}

function sub_7c46499b(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    stor4 = address(arg1)
    stor5 = arg2
    stor7 = arg2
    if stor6 >= stor8.length:
        revert with 0, 50
    require ext_code.size(assetAddress)
    staticcall assetAddress.0x70a08231 with:
            gas gas_remaining wei
           args address(stor8[stor6])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(stor8[stor6]))
    if ext_call.return_data[0] < arg2:
        call address(stor8[stor6]).0x1e7dcc0d with:
             gas gas_remaining wei
            args this.address, this.address, ext_call.return_data[0], 128, 6, 0x66696c6c65720000000000000000000000000000000000000000000000000000
    else:
        call address(stor8[stor6]).0x1e7dcc0d with:
             gas gas_remaining wei
            args this.address, this.address, arg2, 128, 6, 0x66696c6c65720000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function updatePairs(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg1.length) + 97 > test266151307() or ceil32(32 * arg1.length) + 97 < 96:
        revert with 0, 65
    mem[96] = arg1.length
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
    if address(stor3):
        if address(stor3) != msg.sender:
            revert with 0, '!owen'
    if 0 >= arg1.length:
        revert with 0, 50
    require ext_code.size(mem[140 len 20])
    staticcall mem[140 len 20].underlying() with:
            gas gas_remaining wei
    mem[ceil32(32 * arg1.length) + 97] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    assetAddress = ext_call.return_data[12 len 20]
    stor8.length = arg1.length
    if not arg1.length:
        idx = 0
        while stor8.length > idx:
            uint256(stor8[idx]) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * arg1.length) + 128 > idx:
            address(stor8[s]) = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg1.length) + 31) >> 5
        while stor8.length > idx:
            uint256(stor8[idx]) = 0
            idx = idx + 1
            continue 
}

function getAvailableLiquidity() payable {
    mem[64] = 96
    idx = 0
    s = 0
    while idx < stor8.length:
        mem[0] = 8
        mem[mem[64] + 4] = address(stor8[idx])
        require ext_code.size(assetAddress)
        staticcall assetAddress.0x70a08231 with:
                gas gas_remaining wei
               args address(stor8[idx])
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _13 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if s > !mem[_13]:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + mem[_13]
        continue 
    return (s * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length * stor8.length)
}

function initialize(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg1.length) + 97 > test266151307() or ceil32(32 * arg1.length) + 97 < 96:
        revert with 0, 65
    mem[96] = arg1.length
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
    require not stor9
    if address(stor3):
        if address(stor3) != msg.sender:
            revert with 0, '!owen'
    if 0 >= arg1.length:
        revert with 0, 50
    require ext_code.size(mem[140 len 20])
    staticcall mem[140 len 20].underlying() with:
            gas gas_remaining wei
    mem[ceil32(32 * arg1.length) + 97] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    assetAddress = ext_call.return_data[12 len 20]
    stor8.length = arg1.length
    if not arg1.length:
        idx = 0
        while stor8.length > idx:
            uint256(stor8[idx]) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * arg1.length) + 128 > idx:
            address(stor8[s]) = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg1.length) + 31) >> 5
        while stor8.length > idx:
            uint256(stor8[idx]) = 0
            idx = idx + 1
            continue 
    stor0 = 1
    stor9 = 0
    if address(stor3):
        if address(stor3) != msg.sender:
            revert with 0, '!owen'
    uint256(stor3) = msg.sender or Mask(96, 160, uint256(stor3))
}

function sub_6d29e7fc(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    stor1.length++
    uint256(stor1[stor1.length]) = msg.sender or Mask(96, 160, uint256(stor1[stor1.length]))
    stor2.length++
    mem[0] = 2
    stor2[stor2.length] = arg3
    if stor7 < arg3:
        revert with 0, 17
    stor7 -= arg3
    mem[128] = stor7
    emit Borrowed(arg3, stor7);
    if stor7:
        if stor6 == -1:
            revert with 0, 17
        stor6++
        if stor6 >= stor8.length:
            revert with 0, 50
        require ext_code.size(assetAddress)
        staticcall assetAddress.0x70a08231 with:
                gas gas_remaining wei
               args address(stor8[stor6])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(stor8[stor6]))
        if ext_call.return_data[0] < stor7:
            call address(stor8[stor6]).0x1e7dcc0d with:
                 gas gas_remaining wei
                args this.address, this.address, ext_call.return_data[0], 128, 6, 0x66696c6c65720000000000000000000000000000000000000000000000000000
        else:
            call address(stor8[stor6]).0x1e7dcc0d with:
                 gas gas_remaining wei
                args this.address, this.address, stor7, 128, 6, 0x66696c6c65720000000000000000000000000000000000000000000000000000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        mem[100] = this.address
        require ext_code.size(assetAddress)
        staticcall assetAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < stor5:
            revert with 0, 'not enough'
        mem[ceil32(return_data.size) + 100] = stor4
        mem[ceil32(return_data.size) + 132] = stor5
        require ext_code.size(assetAddress)
        call assetAddress.0xa9059cbb with:
             gas gas_remaining wei
            args stor4, stor5
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(stor4)
        call stor4.0x23293328 with:
             gas gas_remaining wei
            args stor5
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(2 * ceil32(return_data.size)) + 100] = this.address
        require ext_code.size(assetAddress)
        staticcall assetAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = (4 * ceil32(return_data.size)) + 96
        require return_data.size >= 32
        require ext_call.return_data[0] >= stor5
        idx = 0
        while idx < stor1.length:
            if idx >= stor2.length:
                revert with 0, 50
            mem[0] = 2
            mem[mem[64] + 4] = address(stor1[idx])
            mem[mem[64] + 36] = stor2[idx]
            require ext_code.size(assetAddress)
            call assetAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args address(stor1[idx]), stor2[idx]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _41 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_41] == bool(mem[_41])
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        stor1.length = 0
        idx = 0
        while stor1.length > idx:
            uint256(stor1[idx]) = 0
            idx = idx + 1
            continue 
        stor2.length = 0
        idx = 0
        while stor2.length > idx:
            stor2[idx] = 0
            idx = idx + 1
            continue 
        stor6 = 0
}



}
