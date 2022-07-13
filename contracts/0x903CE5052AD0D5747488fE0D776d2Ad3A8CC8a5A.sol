contract main {




// =====================  Runtime code  =====================


address SELFAddress;
address WETHAddress;

function SELF() {
    return SELFAddress
}

function WETH() {
    return WETHAddress
}

function _fallback() payable {
    revert
}

function deposit() payable {
    if SELFAddress != msg.sender:
        revert with 0, 'only self can do.'
    require ext_code.size(WETHAddress)
    call WETHAddress.0xd0e30db0 with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdraw() {
    if SELFAddress != msg.sender:
        revert with 0, 'only self can do.'
    require ext_code.size(WETHAddress)
    staticcall WETHAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] > 0:
        require ext_code.size(WETHAddress)
        call WETHAddress.withdraw(uint256 arg1) with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    if eth.balance(this.address) > 0:
        call SELFAddress with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function addLiquidity(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if SELFAddress != msg.sender:
        revert with 0, 'only self can do.'
    require ext_code.size(arg2)
    call arg2.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(WETHAddress)
    call WETHAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(arg2)
    staticcall arg2.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(arg1)
    call arg1.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
         gas gas_remaining wei
        args WETHAddress, address(arg2), arg3, ext_call.return_data[0], 0, 0, address(this.address), block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
}

function getAmountOut(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require ext_code.size(arg1)
    staticcall arg1.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(arg1)
    staticcall arg1.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    if arg3 and 997 > -1 / arg3:
        revert with 'NH{q', 17
    if arg2 == address(ext_call.return_data[0]):
        if 997 * arg3 and ext_call.return_data[50 len 14] > -1 / 997 * arg3:
            revert with 'NH{q', 17
        if ext_call.return_data[18 len 14] and 1000 > -1 / ext_call.return_data[18 len 14]:
            revert with 'NH{q', 17
        if 1000 * ext_call.return_data[18 len 14] > (-997 * arg3) - 1:
            revert with 'NH{q', 17
        if not (1000 * ext_call.return_data[18 len 14]) + (997 * arg3):
            revert with 'NH{q', 18
        if arg2 == address(ext_call.return_data[0]):
            return 0, 997 * arg3 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg3)
        return 997 * arg3 * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * arg3), 0
    if 997 * arg3 and ext_call.return_data[18 len 14] > -1 / 997 * arg3:
        revert with 'NH{q', 17
    if ext_call.return_data[50 len 14] and 1000 > -1 / ext_call.return_data[50 len 14]:
        revert with 'NH{q', 17
    if 1000 * ext_call.return_data[50 len 14] > (-997 * arg3) - 1:
        revert with 'NH{q', 17
    if not (1000 * ext_call.return_data[50 len 14]) + (997 * arg3):
        revert with 'NH{q', 18
    if arg2 == address(ext_call.return_data[0]):
        return 0, 997 * arg3 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg3)
    return 997 * arg3 * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * arg3), 0
}

function removeLiquidity(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if SELFAddress != msg.sender:
        revert with 0, 'only self can do.'
    require ext_code.size(arg2)
    staticcall arg2.0x70a08231 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(arg2)
    staticcall arg2.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(arg1)
    staticcall arg1.factory() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args WETHAddress, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(arg1)
    call arg1.removeLiquidityETHSupportingFeeOnTransferTokens(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
         gas gas_remaining wei
        args address(arg2), ext_call.return_data[0], 0, 0, address(this.address), block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(arg2)
    staticcall arg2.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 'NH{q', 17
    if 0 < ext_call.return_data[0]:
        revert with 0, 'profit amount is not enough'
}

function sub_1036e7f1(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    if SELFAddress != msg.sender:
        revert with 0, 'only self can do.'
    require ext_code.size(address(arg1))
    staticcall address(arg1).token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(arg1))
    staticcall address(arg1).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    if arg2 and 997 > -1 / arg2:
        revert with 'NH{q', 17
    if WETHAddress == address(ext_call.return_data[0]):
        if 997 * arg2 and ext_call.return_data[50 len 14] > -1 / 997 * arg2:
            revert with 'NH{q', 17
        if ext_call.return_data[18 len 14] and 1000 > -1 / ext_call.return_data[18 len 14]:
            revert with 'NH{q', 17
        if 1000 * ext_call.return_data[18 len 14] > (-997 * arg2) - 1:
            revert with 'NH{q', 17
        if not (1000 * ext_call.return_data[18 len 14]) + (997 * arg2):
            revert with 'NH{q', 18
        require ext_code.size(WETHAddress)
        call WETHAddress.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg1), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(address(arg1))
        if WETHAddress == address(ext_call.return_data[0]):
            call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, 997 * arg2 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg2), address(this.address), 128, 0
        else:
            call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 997 * arg2 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg2), 0, address(this.address), 128, 0
    else:
        if 997 * arg2 and ext_call.return_data[18 len 14] > -1 / 997 * arg2:
            revert with 'NH{q', 17
        if ext_call.return_data[50 len 14] and 1000 > -1 / ext_call.return_data[50 len 14]:
            revert with 'NH{q', 17
        if 1000 * ext_call.return_data[50 len 14] > (-997 * arg2) - 1:
            revert with 'NH{q', 17
        if not (1000 * ext_call.return_data[50 len 14]) + (997 * arg2):
            revert with 'NH{q', 18
        require ext_code.size(WETHAddress)
        call WETHAddress.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg1), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(address(arg1))
        if WETHAddress == address(ext_call.return_data[0]):
            call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, 997 * arg2 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg2), address(this.address), 128, 0
        else:
            call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 997 * arg2 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg2), 0, address(this.address), 128, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_d5a15823(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if SELFAddress != msg.sender:
        revert with 0, 'only self can do.'
    require ext_code.size(address(arg2))
    staticcall address(arg2).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(address(arg1))
    staticcall address(arg1).token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(arg1))
    staticcall address(arg1).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    if ext_call.return_data[0] and 997 > -1 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    if address(arg2) == address(ext_call.return_data[0]):
        if 997 * ext_call.return_data[0] and ext_call.return_data[50 len 14] > -1 / 997 * ext_call.return_data[0]:
            revert with 'NH{q', 17
        if ext_call.return_data[18 len 14] and 1000 > -1 / ext_call.return_data[18 len 14]:
            revert with 'NH{q', 17
        if 1000 * ext_call.return_data[18 len 14] > (-997 * ext_call.return_data[0]) - 1:
            revert with 'NH{q', 17
        if not (1000 * ext_call.return_data[18 len 14]) + (997 * ext_call.return_data[0]):
            revert with 'NH{q', 18
        require ext_code.size(address(arg2))
        call address(arg2).0xa9059cbb with:
             gas gas_remaining wei
            args address(arg1), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(address(arg1))
        if address(arg2) == address(ext_call.return_data[0]):
            call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
        else:
            call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
    else:
        if 997 * ext_call.return_data[0] and ext_call.return_data[18 len 14] > -1 / 997 * ext_call.return_data[0]:
            revert with 'NH{q', 17
        if ext_call.return_data[50 len 14] and 1000 > -1 / ext_call.return_data[50 len 14]:
            revert with 'NH{q', 17
        if 1000 * ext_call.return_data[50 len 14] > (-997 * ext_call.return_data[0]) - 1:
            revert with 'NH{q', 17
        if not (1000 * ext_call.return_data[50 len 14]) + (997 * ext_call.return_data[0]):
            revert with 'NH{q', 18
        require ext_code.size(address(arg2))
        call address(arg2).0xa9059cbb with:
             gas gas_remaining wei
            args address(arg1), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(address(arg1))
        if address(arg2) == address(ext_call.return_data[0]):
            call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
        else:
            call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function multicall(bytes[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    if SELFAddress != msg.sender:
        revert with 0, 'only self can do.'
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    mem[96] = arg1.length
    mem[64] = (32 * arg1.length) + 128
    if not arg1.length:
        idx = 0
        while idx < arg1.length:
            require cd[(arg1 + (32 * idx) + 36)] < calldata.size + -arg1 - 67
            require cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)] <= test266151307()
            require arg1 + cd[(arg1 + (32 * idx) + 36)] + 68 <= calldata.size - cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]
            _93 = mem[64]
            mem[mem[64] len cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]] = call.data[arg1 + cd[(arg1 + (32 * idx) + 36)] + 68 len cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]]
            mem[mem[64] + cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]] = 0
            delegate this.address.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _93 + cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)] + -mem[64] - 4]
            if not return_data.size:
                if delegate.return_code:
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = 96
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                require mem[96] >= 68
                _109 = mem[100]
                require mem[100] >= 32
                _113 = mem[132]
                require mem[132] <= test266151307()
                require mem[132] + 163 < mem[100] + 132
                _121 = mem[mem[132] + 132]
                if mem[mem[132] + 132] > test266151307():
                    revert with 'NH{q', 65
                _128 = mem[64]
                if mem[64] + ceil32(ceil32(mem[mem[132] + 132])) + 1 > test266151307() or mem[64] + ceil32(ceil32(mem[mem[132] + 132])) + 1 < mem[64]:
                    revert with 'NH{q', 65
                mem[64] = mem[64] + ceil32(ceil32(mem[mem[132] + 132])) + 1
                mem[_128] = mem[mem[132] + 132]
                require _113 + _121 + 164 <= _109 + 132
                idx = 0
                while idx < _121:
                    mem[_128 + idx + 32] = mem[_113 + idx + 164]
                    idx = idx + 32
                    continue 
                if ceil32(_121) <= _121:
                    _183 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    _188 = mem[_128]
                    mem[mem[64] + 36] = mem[_128]
                    idx = 0
                    while idx < _188:
                        mem[_183 + idx + 68] = mem[_128 + idx + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_188) > _188:
                        mem[_183 + _188 + 68] = 0
                    revert with memory
                      from mem[64]
                       len _183 + ceil32(_188) + -mem[64] + 68
                mem[_128 + _121 + 32] = 0
                _185 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _191 = mem[_128]
                mem[mem[64] + 36] = mem[_128]
                idx = 0
                while idx < _191:
                    mem[_185 + idx + 68] = mem[_128 + idx + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_191) > _191:
                    mem[_185 + _191 + 68] = 0
                revert with memory
                  from mem[64]
                   len _185 + ceil32(_191) + -mem[64] + 68
            _101 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_101] = return_data.size
            mem[_101 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if delegate.return_code:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = _101
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            require return_data.size >= 68
            _110 = Mask(224, 0, return_data.size), mem[_101 + 32 len 4]
            require Mask(224, 0, return_data.size), mem[_101 + 32 len 4] >= 32
            _114 = mem[_101 + 36]
            require mem[_101 + 36] <= test266151307()
            require _101 + mem[_101 + 36] + 67 < _101 + Mask(224, 0, return_data.size), mem[_101 + 32 len 4] + 36
            _122 = mem[_101 + mem[_101 + 36] + 36]
            if mem[_101 + mem[_101 + 36] + 36] > test266151307():
                revert with 'NH{q', 65
            _129 = mem[64]
            if mem[64] + ceil32(ceil32(mem[_101 + mem[_101 + 36] + 36])) + 1 > test266151307() or mem[64] + ceil32(ceil32(mem[_101 + mem[_101 + 36] + 36])) + 1 < mem[64]:
                revert with 'NH{q', 65
            mem[64] = mem[64] + ceil32(ceil32(mem[_101 + mem[_101 + 36] + 36])) + 1
            mem[_129] = _122
            require _114 + _122 + 68 <= _110 + 36
            idx = 0
            while idx < _122:
                mem[_129 + idx + 32] = mem[_101 + _114 + idx + 68]
                idx = idx + 32
                continue 
            if ceil32(_122) <= _122:
                _184 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = _122
                idx = 0
                while idx < _122:
                    mem[_184 + idx + 68] = mem[_129 + idx + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_122) > _122:
                    mem[_184 + _122 + 68] = 0
                revert with memory
                  from mem[64]
                   len _184 + ceil32(_122) + -mem[64] + 68
            mem[_129 + _122 + 32] = 0
            _186 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = _122
            idx = 0
            while idx < _122:
                mem[_186 + idx + 68] = mem[_129 + idx + 32]
                idx = idx + 32
                continue 
            if ceil32(_122) > _122:
                mem[_186 + _122 + 68] = 0
            revert with memory
              from mem[64]
               len _186 + ceil32(_122) + -mem[64] + 68
        _90 = mem[64]
        mem[mem[64]] = 32
        _91 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + (32 * mem[96]) + 64
        u = mem[64] + 64
        while idx < _91:
            mem[u] = t + -_90 - 64
            _176 = mem[s]
            _181 = mem[mem[s]]
            mem[t] = mem[mem[s]]
            v = 0
            while v < _181:
                mem[t + v + 32] = mem[_176 + v + 32]
                v = v + 32
                continue 
            if ceil32(_181) > _181:
                mem[t + _181 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_181) + 32
            u = u + 32
            continue 
    else:
        mem[128] = 96
        s = 128
        idx = arg1.length
        while idx - 1:
            mem[s + 32] = 96
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        while idx < arg1.length:
            require cd[(arg1 + (32 * idx) + 36)] < calldata.size + -arg1 - 67
            require cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)] <= test266151307()
            require arg1 + cd[(arg1 + (32 * idx) + 36)] + 68 <= calldata.size - cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]
            mem[mem[64] len cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]] = call.data[arg1 + cd[(arg1 + (32 * idx) + 36)] + 68 len cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]]
            mem[mem[64] + cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]] = 0
            delegate this.address with:
                 gas gas_remaining wei
                args call.data[arg1 + cd[(arg1 + (32 * idx) + 36)] + 68 len cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]]
            if not return_data.size:
                if delegate.return_code:
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = 96
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                require mem[96] >= 68
                _206 = mem[100]
                require mem[100] >= 32
                _211 = mem[132]
                require mem[132] <= test266151307()
                require mem[132] + 163 < mem[100] + 132
                _219 = mem[mem[132] + 132]
                if mem[mem[132] + 132] > test266151307():
                    revert with 'NH{q', 65
                _221 = mem[64]
                if mem[64] + ceil32(ceil32(mem[mem[132] + 132])) + 1 > test266151307() or mem[64] + ceil32(ceil32(mem[mem[132] + 132])) + 1 < mem[64]:
                    revert with 'NH{q', 65
                mem[64] = mem[64] + ceil32(ceil32(mem[mem[132] + 132])) + 1
                mem[_221] = mem[mem[132] + 132]
                require _211 + _219 + 164 <= _206 + 132
                idx = 0
                while idx < _219:
                    mem[_221 + idx + 32] = mem[_211 + idx + 164]
                    idx = idx + 32
                    continue 
                if ceil32(_219) <= _219:
                    _255 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    _267 = mem[_221]
                    mem[mem[64] + 36] = mem[_221]
                    idx = 0
                    while idx < _267:
                        mem[_255 + idx + 68] = mem[_221 + idx + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_267) > _267:
                        mem[_255 + _267 + 68] = 0
                    revert with memory
                      from mem[64]
                       len _255 + ceil32(_267) + -mem[64] + 68
                mem[_221 + _219 + 32] = 0
                _261 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _270 = mem[_221]
                mem[mem[64] + 36] = mem[_221]
                idx = 0
                while idx < _270:
                    mem[_261 + idx + 68] = mem[_221 + idx + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_270) > _270:
                    mem[_261 + _270 + 68] = 0
                revert with memory
                  from mem[64]
                   len _261 + ceil32(_270) + -mem[64] + 68
            _201 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_201] = return_data.size
            mem[_201 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if delegate.return_code:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = _201
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            require return_data.size >= 68
            _207 = Mask(224, 0, return_data.size), mem[_201 + 32 len 4]
            require Mask(224, 0, return_data.size), mem[_201 + 32 len 4] >= 32
            _212 = mem[_201 + 36]
            require mem[_201 + 36] <= test266151307()
            require _201 + mem[_201 + 36] + 67 < _201 + Mask(224, 0, return_data.size), mem[_201 + 32 len 4] + 36
            _220 = mem[_201 + mem[_201 + 36] + 36]
            if mem[_201 + mem[_201 + 36] + 36] > test266151307():
                revert with 'NH{q', 65
            _222 = mem[64]
            if mem[64] + ceil32(ceil32(mem[_201 + mem[_201 + 36] + 36])) + 1 > test266151307() or mem[64] + ceil32(ceil32(mem[_201 + mem[_201 + 36] + 36])) + 1 < mem[64]:
                revert with 'NH{q', 65
            mem[64] = mem[64] + ceil32(ceil32(mem[_201 + mem[_201 + 36] + 36])) + 1
            mem[_222] = _220
            require _212 + _220 + 68 <= _207 + 36
            idx = 0
            while idx < _220:
                mem[_222 + idx + 32] = mem[_201 + _212 + idx + 68]
                idx = idx + 32
                continue 
            if ceil32(_220) <= _220:
                _256 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = _220
                idx = 0
                while idx < _220:
                    mem[_256 + idx + 68] = mem[_222 + idx + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_220) > _220:
                    mem[_256 + _220 + 68] = 0
                revert with memory
                  from mem[64]
                   len _256 + ceil32(_220) + -mem[64] + 68
            mem[_222 + _220 + 32] = 0
            _262 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = _220
            idx = 0
            while idx < _220:
                mem[_262 + idx + 68] = mem[_222 + idx + 32]
                idx = idx + 32
                continue 
            if ceil32(_220) > _220:
                mem[_262 + _220 + 68] = 0
            revert with memory
              from mem[64]
               len _262 + ceil32(_220) + -mem[64] + 68
        _179 = mem[64]
        mem[mem[64]] = 32
        _182 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + (32 * mem[96]) + 64
        u = mem[64] + 64
        while idx < _182:
            mem[u] = t + -_179 - 64
            _250 = mem[s]
            _254 = mem[mem[s]]
            mem[t] = mem[mem[s]]
            v = 0
            while v < _254:
                mem[t + v + 32] = mem[_250 + v + 32]
                v = v + 32
                continue 
            if ceil32(_254) > _254:
                mem[t + _254 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_254) + 32
            u = u + 32
            continue 
    return memory
      from mem[64]
       len t - mem[64]
}

function sub_b23a6b25(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    if SELFAddress != msg.sender:
        revert with 0, 'only self can do.'
    require ext_code.size(WETHAddress)
    call WETHAddress.0xd0e30db0 with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if SELFAddress != msg.sender:
        revert with 0, 'only self can do.'
    require ext_code.size(address(arg2))
    staticcall address(arg2).token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(arg2))
    staticcall address(arg2).getReserves() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 96 len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    if Mask(255, 1, msg.value) and 997 > -1 / msg.value / 2:
        revert with 'NH{q', 17
    if WETHAddress == address(ext_call.return_data[0]):
        if 997 * msg.value / 2 and ext_call.return_data[50 len 14] > -1 / 997 * msg.value / 2:
            revert with 'NH{q', 17
        if ext_call.return_data[18 len 14] and 1000 > -1 / ext_call.return_data[18 len 14]:
            revert with 'NH{q', 17
        if 1000 * ext_call.return_data[18 len 14] > (-997 * msg.value / 2) - 1:
            revert with 'NH{q', 17
        if not (1000 * ext_call.return_data[18 len 14]) + (997 * msg.value / 2):
            revert with 'NH{q', 18
        mem[(2 * ceil32(return_data.size)) + 100] = address(arg2)
        mem[(2 * ceil32(return_data.size)) + 132] = msg.value / 2
        require ext_code.size(WETHAddress)
        call WETHAddress.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg2), msg.value / 2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[(4 * ceil32(return_data.size)) + 196] = this.address
        mem[(4 * ceil32(return_data.size)) + 228] = 128
        mem[(4 * ceil32(return_data.size)) + 260] = 0
        mem[(4 * ceil32(return_data.size)) + 292 len 0] = None
        require ext_code.size(address(arg2))
        if WETHAddress == address(ext_call.return_data[0]):
            call address(arg2).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, 997 * msg.value / 2 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * msg.value / 2), address(this.address), 128, 0
        else:
            call address(arg2).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 997 * msg.value / 2 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * msg.value / 2), 0, address(this.address), 128, 0
    else:
        if 997 * msg.value / 2 and ext_call.return_data[18 len 14] > -1 / 997 * msg.value / 2:
            revert with 'NH{q', 17
        if ext_call.return_data[50 len 14] and 1000 > -1 / ext_call.return_data[50 len 14]:
            revert with 'NH{q', 17
        if 1000 * ext_call.return_data[50 len 14] > (-997 * msg.value / 2) - 1:
            revert with 'NH{q', 17
        if not (1000 * ext_call.return_data[50 len 14]) + (997 * msg.value / 2):
            revert with 'NH{q', 18
        mem[(2 * ceil32(return_data.size)) + 100] = address(arg2)
        mem[(2 * ceil32(return_data.size)) + 132] = msg.value / 2
        require ext_code.size(WETHAddress)
        call WETHAddress.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg2), msg.value / 2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[(4 * ceil32(return_data.size)) + 196] = this.address
        mem[(4 * ceil32(return_data.size)) + 228] = 128
        mem[(4 * ceil32(return_data.size)) + 260] = 0
        mem[(4 * ceil32(return_data.size)) + 292 len 0] = None
        require ext_code.size(address(arg2))
        if WETHAddress == address(ext_call.return_data[0]):
            call address(arg2).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, 997 * msg.value / 2 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * msg.value / 2), address(this.address), 128, 0
        else:
            call address(arg2).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 997 * msg.value / 2 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * msg.value / 2), 0, address(this.address), 128, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if SELFAddress != msg.sender:
        revert with 0, 'only self can do.'
    mem[(4 * ceil32(return_data.size)) + 132] = address(arg1)
    mem[(4 * ceil32(return_data.size)) + 164] = -1
    require ext_code.size(address(arg3))
    call address(arg3).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), -1
    mem[(4 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(6 * ceil32(return_data.size)) + 132] = address(arg1)
    mem[(6 * ceil32(return_data.size)) + 164] = -1
    require ext_code.size(WETHAddress)
    call WETHAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), -1, mem[(6 * ceil32(return_data.size)) + 196 len 9 * ceil32(return_data.size)]
    mem[(6 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(8 * ceil32(return_data.size)) + 132] = this.address
    require ext_code.size(address(arg3))
    staticcall address(arg3).0x70a08231 with:
            gas gas_remaining wei
           args mem[(8 * ceil32(return_data.size)) + 132 len (13 * ceil32(return_data.size)) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[(8 * ceil32(return_data.size)) + 132] = WETHAddress
    mem[(8 * ceil32(return_data.size)) + 164] = address(arg3)
    mem[(8 * ceil32(return_data.size)) + 196] = msg.value / 2
    mem[(8 * ceil32(return_data.size)) + 228] = ext_call.return_data[0]
    mem[(8 * ceil32(return_data.size)) + 260] = 0
    mem[(8 * ceil32(return_data.size)) + 292] = 0
    mem[(8 * ceil32(return_data.size)) + 324] = this.address
    mem[(8 * ceil32(return_data.size)) + 356] = block.timestamp
    require ext_code.size(address(arg1))
    call address(arg1).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
         gas gas_remaining wei
        args mem[(8 * ceil32(return_data.size)) + 132 len (15 * ceil32(return_data.size)) + 256]
    mem[(8 * ceil32(return_data.size)) + 128 len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    if SELFAddress != msg.sender:
        revert with 0, 'only self can do.', mem[(11 * ceil32(return_data.size)) + 228 len 9 * ceil32(return_data.size)]
    mem[(11 * ceil32(return_data.size)) + 132] = address(arg1)
    require ext_code.size(address(arg3))
    staticcall address(arg3).0x70a08231 with:
            gas gas_remaining wei
           args address(arg1), mem[(11 * ceil32(return_data.size)) + 164 len 9 * ceil32(return_data.size)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[(12 * ceil32(return_data.size)) + 132] = this.address
    require ext_code.size(address(arg3))
    staticcall address(arg3).0x70a08231 with:
            gas gas_remaining wei
           args address(this.address), mem[(12 * ceil32(return_data.size)) + 164 len 9 * ceil32(return_data.size)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[(14 * ceil32(return_data.size)) + 128] = 0xc45a015500000000000000000000000000000000000000000000000000000000
    require ext_code.size(address(arg1))
    staticcall address(arg1).factory() with:
            gas gas_remaining wei
           args mem[(14 * ceil32(return_data.size)) + 132 len 24 * ceil32(return_data.size)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[(15 * ceil32(return_data.size)) + 132] = WETHAddress
    mem[(15 * ceil32(return_data.size)) + 164] = address(arg3)
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args WETHAddress, address(arg3), mem[(15 * ceil32(return_data.size)) + 196 len 9 * ceil32(return_data.size)]
    mem[(15 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[(16 * ceil32(return_data.size)) + 132] = address(arg1)
    mem[(16 * ceil32(return_data.size)) + 164] = -1
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args mem[(16 * ceil32(return_data.size)) + 132 len (9 * ceil32(return_data.size)) + 64]
    mem[(16 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(17 * ceil32(return_data.size)) + 132] = this.address
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args address(this.address), mem[(17 * ceil32(return_data.size)) + 164 len 9 * ceil32(return_data.size)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[(18 * ceil32(return_data.size)) + 132] = address(arg3)
    mem[(18 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
    mem[(18 * ceil32(return_data.size)) + 196] = 0
    mem[(18 * ceil32(return_data.size)) + 228] = 0
    mem[(18 * ceil32(return_data.size)) + 260] = this.address
    mem[(18 * ceil32(return_data.size)) + 292] = block.timestamp
    require ext_code.size(address(arg1))
    call address(arg1).removeLiquidityETHSupportingFeeOnTransferTokens(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
         gas gas_remaining wei
        args address(arg3), ext_call.return_data[0], 0, 0, address(this.address), block.timestamp, mem[(18 * ceil32(return_data.size)) + 324 len 9 * ceil32(return_data.size)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[(19 * ceil32(return_data.size)) + 132] = this.address
    require ext_code.size(address(arg3))
    staticcall address(arg3).0x70a08231 with:
            gas gas_remaining wei
           args address(this.address), mem[(19 * ceil32(return_data.size)) + 164 len 9 * ceil32(return_data.size)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 'NH{q', 17
    if 0 < ext_call.return_data[0]:
        revert with 0, 'profit amount is not enough', mem[(20 * ceil32(return_data.size)) + 228 len 9 * ceil32(return_data.size)]
    if SELFAddress != msg.sender:
        revert with 0, 'only self can do.', mem[(20 * ceil32(return_data.size)) + 228 len 9 * ceil32(return_data.size)]
    mem[(20 * ceil32(return_data.size)) + 132] = this.address
    require ext_code.size(address(arg3))
    staticcall address(arg3).0x70a08231 with:
            gas gas_remaining wei
           args address(this.address), mem[(20 * ceil32(return_data.size)) + 164 len 9 * ceil32(return_data.size)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[(22 * ceil32(return_data.size)) + 128] = 0xdfe168100000000000000000000000000000000000000000000000000000000
    require ext_code.size(address(arg2))
    staticcall address(arg2).token0() with:
            gas gas_remaining wei
           args mem[(22 * ceil32(return_data.size)) + 132 len 40 * ceil32(return_data.size)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[(23 * ceil32(return_data.size)) + 128] = 0x902f1ac00000000000000000000000000000000000000000000000000000000
    require ext_code.size(address(arg2))
    staticcall address(arg2).getReserves() with:
            gas gas_remaining wei
           args mem[(23 * ceil32(return_data.size)) + 132 len 8 * ceil32(return_data.size)]
    mem[(23 * ceil32(return_data.size)) + 128 len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    if ext_call.return_data[0] and 997 > -1 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    if address(arg3) == address(ext_call.return_data[0]):
        if 997 * ext_call.return_data[0] and ext_call.return_data[50 len 14] > -1 / 997 * ext_call.return_data[0]:
            revert with 'NH{q', 17
        if ext_call.return_data[18 len 14] and 1000 > -1 / ext_call.return_data[18 len 14]:
            revert with 'NH{q', 17
        if 1000 * ext_call.return_data[18 len 14] > (-997 * ext_call.return_data[0]) - 1:
            revert with 'NH{q', 17
        if not (1000 * ext_call.return_data[18 len 14]) + (997 * ext_call.return_data[0]):
            revert with 'NH{q', 18
        require ext_code.size(address(arg3))
        call address(arg3).0xa9059cbb with:
             gas gas_remaining wei
            args address(arg2), ext_call.return_data[0], mem[(24 * ceil32(return_data.size)) + 196 len 9 * ceil32(return_data.size)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if address(arg3) == address(ext_call.return_data[0]):
            mem[(25 * ceil32(return_data.size)) + 196] = 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
            mem[(25 * ceil32(return_data.size)) + 228] = this.address
            mem[(25 * ceil32(return_data.size)) + 260] = 128
            mem[(25 * ceil32(return_data.size)) + 292] = 0
            mem[(25 * ceil32(return_data.size)) + 324 len 0] = None
            require ext_code.size(address(arg2))
            call address(arg2).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
        else:
            mem[(25 * ceil32(return_data.size)) + 196] = 0
            mem[(25 * ceil32(return_data.size)) + 228] = this.address
            mem[(25 * ceil32(return_data.size)) + 260] = 128
            mem[(25 * ceil32(return_data.size)) + 292] = 0
            mem[(25 * ceil32(return_data.size)) + 324 len 0] = None
            require ext_code.size(address(arg2))
            call address(arg2).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
    else:
        if 997 * ext_call.return_data[0] and ext_call.return_data[18 len 14] > -1 / 997 * ext_call.return_data[0]:
            revert with 'NH{q', 17
        if ext_call.return_data[50 len 14] and 1000 > -1 / ext_call.return_data[50 len 14]:
            revert with 'NH{q', 17
        if 1000 * ext_call.return_data[50 len 14] > (-997 * ext_call.return_data[0]) - 1:
            revert with 'NH{q', 17
        if not (1000 * ext_call.return_data[50 len 14]) + (997 * ext_call.return_data[0]):
            revert with 'NH{q', 18
        require ext_code.size(address(arg3))
        call address(arg3).0xa9059cbb with:
             gas gas_remaining wei
            args address(arg2), ext_call.return_data[0], mem[(24 * ceil32(return_data.size)) + 196 len 9 * ceil32(return_data.size)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if address(arg3) == address(ext_call.return_data[0]):
            mem[(25 * ceil32(return_data.size)) + 196] = 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
            mem[(25 * ceil32(return_data.size)) + 228] = this.address
            mem[(25 * ceil32(return_data.size)) + 260] = 128
            mem[(25 * ceil32(return_data.size)) + 292] = 0
            mem[(25 * ceil32(return_data.size)) + 324 len 0] = None
            require ext_code.size(address(arg2))
            call address(arg2).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
        else:
            mem[(25 * ceil32(return_data.size)) + 196] = 0
            mem[(25 * ceil32(return_data.size)) + 228] = this.address
            mem[(25 * ceil32(return_data.size)) + 260] = 128
            mem[(25 * ceil32(return_data.size)) + 292] = 0
            mem[(25 * ceil32(return_data.size)) + 324 len 0] = None
            require ext_code.size(address(arg2))
            call address(arg2).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(WETHAddress)
    staticcall WETHAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] > -eth.balance(this.address) - 1:
        revert with 'NH{q', 17
    if ext_call.return_data[0] + eth.balance(this.address) < msg.value:
        revert with 0, 'bnb loss'
    if SELFAddress != msg.sender:
        revert with 0, 'only self can do.'
    require ext_code.size(WETHAddress)
    staticcall WETHAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] > 0:
        require ext_code.size(WETHAddress)
        call WETHAddress.withdraw(uint256 arg1) with:
             gas gas_remaining wei
            args ext_call.return_data[0], mem[(28 * ceil32(return_data.size)) + 196 len 5 * ceil32(return_data.size)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    if eth.balance(this.address) > 0:
        call SELFAddress with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}



}
