contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
address _previousOwner;
uint256 _lockTime;
mapping of uint8 stor4;
mapping of address stor5;
uint256 index;
address stor7;
address stor8;
address buyTokenAddress;
address targetTokenAddress;

function index() {
    return index
}

function targetToken() {
    return targetTokenAddress
}

function _previousOwner() {
    return _previousOwner
}

function _lockTime() {
    return _lockTime
}

function buyToken() {
    return buyTokenAddress
}

function isAuthorized(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor4[address(arg1)])
}

function _fallback() payable {
    revert
}

function sub_55d720fb(?) {
    require calldata.size - 4 >= 32
    return (arg1 == stor1)
}

function isOwner(address arg1) {
    require calldata.size - 4 >= 32
    return (arg1 == stor0)
}

function sub_24f91e1a(?) {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        revert with 0, '!OWNER'
    stor8 = arg1
}

function setRouterAddress(address arg1) {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        revert with 0, '!OWNER'
    stor7 = arg1
}

function setBuyToken(address arg1) {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        revert with 0, '!OWNER'
    buyTokenAddress = arg1
}

function unauthorize(address arg1) {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        revert with 0, '!OWNER'
    stor4[address(arg1)] = 0
}

function setTargetToken(address arg1) {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        revert with 0, '!OWNER'
    targetTokenAddress = arg1
}

function authorize(address arg1) {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        revert with 0, '!OWNER'
    stor4[address(arg1)] = 1
    index++
    stor5[stor6] = arg1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if stor1 != msg.sender:
        revert with 0, '!Creater'
    stor0 = arg1
    stor4[address(arg1)] = 1
    index++
    stor5[stor6] = arg1
    emit OwnershipTransferred(arg1);
}

function sub_d4abcacb(?) {
    require calldata.size - 4 >= 64
    if stor1 != msg.sender:
        revert with 0, '!Creater'
    _previousOwner = stor0
    stor0 = arg1
    _lockTime = block.timestamp + arg2
    stor4[stor0] = 1
    index++
    stor5[stor6] = stor0
}

function sub_45866989(?) {
    require calldata.size - 4 >= 64
    if stor0 != msg.sender:
        revert with 0, '!OWNER'
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawETH(uint256 arg1) {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        revert with 0, '!OWNER'
    call stor0 with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_52f1fa80(?) {
    require calldata.size - 4 >= 96
    if stor0 != msg.sender:
        revert with 0, '!OWNER'
    require ext_code.size(arg2)
    call arg2.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function withdrawToken(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if stor0 != msg.sender:
        revert with 0, '!OWNER'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args stor0, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_0398563d(?) {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        revert with 0, '!OWNER'
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor7, 1000000000000 * 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_a84ec55f(?) {
    if block.timestamp <= _lockTime:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0xfe436f6e74726163742069732072656e746564206f757420666f7220333020646179,
                    mem[198 len 30]
    idx = 7
    while idx < index:
        mem[0] = stor5[idx]
        mem[32] = 4
        stor4[stor5[idx]] = 0
        idx = idx + 1
        continue 
    index = 7
}

function recycle() {
    if stor1 != msg.sender:
        revert with 0, '!Creater'
    if block.timestamp <= _lockTime:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0xfe436f6e74726163742069732072656e746564206f757420666f7220333020646179,
                    mem[198 len 30]
    idx = 7
    while idx < index:
        mem[0] = stor5[idx]
        mem[32] = 4
        stor4[stor5[idx]] = 0
        idx = idx + 1
        continue 
    index = 7
    stor0 = _previousOwner
}

function getAmountOutMin(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    mem[160] = arg2
    mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[196] = arg3
    mem[228] = 64
    mem[260] = 2
    mem[292 len 0] = None
    require ext_code.size(stor7)
    staticcall stor7.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg3, Array(len=2, data=mem[292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _23 = mem[192 len 4], Mask(224, 32, arg3) >> 32
    require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
    require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
    require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
    _26 = mem[_23 + 192]
    mem[ceil32(return_data.size) + 224 len floor32(mem[_23 + 192])] = mem[_23 + 224 len floor32(mem[_23 + 192])]
    require 1 < mem[ceil32(return_data.size) + 192]
    mem[(32 * _26) + ceil32(return_data.size) + 224] = mem[ceil32(return_data.size) + 256]
    return memory
      from (32 * _26) + ceil32(return_data.size) + 224
       len 32
}

function sub_9c232396(?) {
    require calldata.size - 4 >= 160
    if not stor4[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    if not arg5:
        mem[160] = arg2
        mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[196] = arg3
        mem[228] = arg4
        mem[292] = stor0
        mem[324] = block.timestamp + 120
        mem[260] = 160
        mem[356] = 2
        mem[388 len 0] = None
        require ext_code.size(stor7)
        call stor7.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg3, arg4, Array(len=2, data=mem[388 len 64]), stor0, block.timestamp + 120
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 192
        require return_data.size >= 32
        require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
    else:
        if arg1 != stor8:
            mem[192] = arg2
            mem[224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[228] = arg3
            mem[260] = arg4
            mem[324] = stor0
            mem[356] = block.timestamp + 120
            mem[292] = 160
            mem[388] = 3
            mem[420 len 0] = None
            require ext_code.size(stor7)
            call stor7.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args arg3, arg4, Array(len=3, data=mem[420 len 96]), stor0, block.timestamp + 120
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 224
            require return_data.size >= 32
            require mem[224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[mem[224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
        else:
            mem[160] = arg2
            mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[196] = arg3
            mem[228] = arg4
            mem[292] = stor0
            mem[324] = block.timestamp + 120
            mem[260] = 160
            mem[356] = 2
            mem[388 len 0] = None
            require ext_code.size(stor7)
            call stor7.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args arg3, arg4, Array(len=2, data=mem[388 len 64]), stor0, block.timestamp + 120
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 192
            require return_data.size >= 32
            require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
}

function sub_1880e0ff(?) {
    require calldata.size - 4 >= 192
    if not stor4[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    if not arg6:
        mem[160] = arg2
        mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[196] = arg3
        mem[228] = arg4
        mem[292] = arg5
        mem[324] = block.timestamp + 120
        mem[260] = 160
        mem[356] = 2
        mem[388 len 0] = None
        require ext_code.size(stor7)
        call stor7.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg3, arg4, Array(len=2, data=mem[388 len 64]), address(arg5), block.timestamp + 120
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 192
        require return_data.size >= 32
        require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
    else:
        if arg1 != stor8:
            mem[192] = arg2
            mem[224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[228] = arg3
            mem[260] = arg4
            mem[324] = arg5
            mem[356] = block.timestamp + 120
            mem[292] = 160
            mem[388] = 3
            mem[420 len 0] = None
            require ext_code.size(stor7)
            call stor7.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args arg3, arg4, Array(len=3, data=mem[420 len 96]), address(arg5), block.timestamp + 120
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 224
            require return_data.size >= 32
            require mem[224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[mem[224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
        else:
            mem[160] = arg2
            mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[196] = arg3
            mem[228] = arg4
            mem[292] = arg5
            mem[324] = block.timestamp + 120
            mem[260] = 160
            mem[356] = 2
            mem[388 len 0] = None
            require ext_code.size(stor7)
            call stor7.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args arg3, arg4, Array(len=2, data=mem[388 len 64]), address(arg5), block.timestamp + 120
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 192
            require return_data.size >= 32
            require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
}

function sub_47014c9d(?) {
    require calldata.size - 4 >= 96
    if not stor4[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    if not arg3:
        mem[160] = targetTokenAddress
        mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[196] = arg1
        mem[228] = arg2
        mem[292] = stor0
        mem[324] = block.timestamp + 120
        mem[260] = 160
        mem[356] = 2
        mem[388 len 0] = None
        require ext_code.size(stor7)
        call stor7.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg1, arg2, Array(len=2, data=mem[388 len 64]), stor0, block.timestamp + 120
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 192
        require return_data.size >= 32
        require mem[192 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
        require mem[192 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
        require mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 32 <= return_data.size
    else:
        if buyTokenAddress != stor8:
            mem[192] = targetTokenAddress
            mem[224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[228] = arg1
            mem[260] = arg2
            mem[324] = stor0
            mem[356] = block.timestamp + 120
            mem[292] = 160
            mem[388] = 3
            mem[420 len 0] = None
            require ext_code.size(stor7)
            call stor7.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args arg1, arg2, Array(len=3, data=mem[420 len 96]), stor0, block.timestamp + 120
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 224
            require return_data.size >= 32
            require mem[224 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
            require mem[224 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
            require mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224] <= 4294967296 and mem[224 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224]) + 32 <= return_data.size
        else:
            mem[160] = targetTokenAddress
            mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[196] = arg1
            mem[228] = arg2
            mem[292] = stor0
            mem[324] = block.timestamp + 120
            mem[260] = 160
            mem[356] = 2
            mem[388 len 0] = None
            require ext_code.size(stor7)
            call stor7.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args arg1, arg2, Array(len=2, data=mem[388 len 64]), stor0, block.timestamp + 120
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 192
            require return_data.size >= 32
            require mem[192 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
            require mem[192 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
            require mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 32 <= return_data.size
}

function sub_d760843c(?) {
    require calldata.size - 4 >= 192
    if not stor4[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not arg6:
        mem[160] = arg2
        mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[196] = arg3
        mem[228] = arg4
        mem[292] = arg5
        mem[324] = block.timestamp
        mem[260] = 160
        mem[356] = 2
        mem[388 len 0] = None
        require ext_code.size(stor7)
        call stor7.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg3, arg4, Array(len=2, data=mem[388 len 64]), address(arg5), block.timestamp
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 192
        require return_data.size >= 32
        require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
    else:
        if arg1 != stor8:
            mem[192] = arg2
            mem[224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[228] = arg3
            mem[260] = arg4
            mem[324] = arg5
            mem[356] = block.timestamp
            mem[292] = 160
            mem[388] = 3
            mem[420 len 0] = None
            require ext_code.size(stor7)
            call stor7.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args arg3, arg4, Array(len=3, data=mem[420 len 96]), address(arg5), block.timestamp
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 224
            require return_data.size >= 32
            require mem[224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[mem[224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
        else:
            mem[160] = arg2
            mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[196] = arg3
            mem[228] = arg4
            mem[292] = arg5
            mem[324] = block.timestamp
            mem[260] = 160
            mem[356] = 2
            mem[388 len 0] = None
            require ext_code.size(stor7)
            call stor7.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args arg3, arg4, Array(len=2, data=mem[388 len 64]), address(arg5), block.timestamp
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 192
            require return_data.size >= 32
            require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
}

function sub_4eaa19bb(?) {
    require calldata.size - 4 >= 96
    if not stor4[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    require ext_code.size(buyTokenAddress)
    call buyTokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not arg3:
        mem[160] = targetTokenAddress
        mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[196] = arg1
        mem[228] = arg2
        mem[292] = stor0
        mem[324] = block.timestamp
        mem[260] = 160
        mem[356] = 2
        mem[388 len 0] = None
        require ext_code.size(stor7)
        call stor7.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg1, arg2, Array(len=2, data=mem[388 len 64]), stor0, block.timestamp
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 192
        require return_data.size >= 32
        require mem[192 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
        require mem[192 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
        require mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 32 <= return_data.size
    else:
        if buyTokenAddress != stor8:
            mem[192] = targetTokenAddress
            mem[224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[228] = arg1
            mem[260] = arg2
            mem[324] = stor0
            mem[356] = block.timestamp
            mem[292] = 160
            mem[388] = 3
            mem[420 len 0] = None
            require ext_code.size(stor7)
            call stor7.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args arg1, arg2, Array(len=3, data=mem[420 len 96]), stor0, block.timestamp
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 224
            require return_data.size >= 32
            require mem[224 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
            require mem[224 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
            require mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224] <= 4294967296 and mem[224 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224]) + 32 <= return_data.size
        else:
            mem[160] = targetTokenAddress
            mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[196] = arg1
            mem[228] = arg2
            mem[292] = stor0
            mem[324] = block.timestamp
            mem[260] = 160
            mem[356] = 2
            mem[388 len 0] = None
            require ext_code.size(stor7)
            call stor7.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args arg1, arg2, Array(len=2, data=mem[388 len 64]), stor0, block.timestamp
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 192
            require return_data.size >= 32
            require mem[192 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
            require mem[192 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
            require mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 32 <= return_data.size
}



}
