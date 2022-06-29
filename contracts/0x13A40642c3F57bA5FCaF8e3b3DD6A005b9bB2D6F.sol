contract main {




// =====================  Runtime code  =====================


address ownerAddress;
mapping of uint32 stor1;

function ownerAddress() {
    if ownerAddress != msg.sender:
        revert with 0, 'Caller is not owner'
    return ownerAddress
}

function _fallback() payable {
    revert
}

function sub_089699aa(?) payable {
    require calldata.size - 4 >= 160
    require arg1 < 3
    require arg2 < 3
    require arg3 == address(arg3)
    require arg4 == bool(arg4)
    require arg5 == uint128(arg5)
    if ownerAddress != msg.sender:
        revert with 0, 'Caller is not owner'
    if eth.balance(msg.sender) > -msg.value - 1:
        revert with 'NH{q', 17
    if block.timestamp > -uint128(arg5) - 1:
        revert with 'NH{q', 17
    if not arg4:
        mem[96] = 2
        mem[128] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
        mem[160] = address(arg3)
        if arg1 > 2:
            revert with 'NH{q', 33
        mem[0] = arg1
        mem[32] = 1
        mem[192] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
        mem[196] = 1
        mem[228] = 128
        mem[324] = 2
        idx = 0
        s = 128
        t = 356
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[260] = this.address
        mem[292] = block.timestamp + uint128(arg5)
        require ext_code.size(address(stor1[arg1]))
        call address(stor1[arg1]).swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
           value msg.value wei
             gas gas_remaining wei
            args 1, Array(len=2, data=mem[356 len 64]), address(this.address), block.timestamp + uint128(arg5)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 192
        require return_data.size >= 32
        _239 = mem[192 len 4], 0
        require mem[192 len 4], 0 <= test266151307()
        require mem[192 len 4], 0 + 223 < return_data.size + 192
        _246 = mem[mem[192 len 4], 0 + 192]
        if mem[mem[192 len 4], 0 + 192] > test266151307():
            revert with 'NH{q', 65
        if ceil32(return_data.size) + floor32(mem[mem[192 len 4], 0 + 192]) + 193 > test266151307() or floor32(mem[mem[192 len 4], 0 + 192]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = ceil32(return_data.size) + floor32(mem[mem[192 len 4], 0 + 192]) + 193
        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], 0 + 192]
        require _239 + (32 * _246) + 32 <= return_data.size
        idx = _239 + 224
        s = ceil32(return_data.size) + 224
        while idx < _239 + (32 * _246) + 224:
            require mem[idx] == mem[idx]
            mem[s] = mem[idx]
            idx = idx + 32
            s = s + 32
            continue 
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(arg3))
        staticcall address(arg3).balanceOf(address arg1) with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _581 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _590 = mem[_581]
        require mem[_581] == mem[_581]
        _607 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        if 0 >= mem[_607]:
            revert with 'NH{q', 50
        mem[_607 + 32] = address(arg3)
        if 1 >= mem[_607]:
            revert with 'NH{q', 50
        mem[_607 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
        if arg2 > 2:
            revert with 'NH{q', 33
        mem[0] = arg2
        mem[32] = 1
        mem[_607 + 96] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
        mem[_607 + 100] = _590
        mem[_607 + 132] = 1
        mem[_607 + 164] = 160
        mem[_607 + 260] = mem[_607]
        idx = 0
        s = _607 + 32
        t = _607 + 292
        while idx < mem[_607]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_607 + 196] = msg.sender
        mem[_607 + 228] = block.timestamp + uint128(arg5)
        require ext_code.size(address(stor1[arg2]))
        call address(stor1[arg2]).mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _607 + (32 * mem[_607]) + -mem[64] + 288]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _808 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _817 = mem[_808]
        require mem[_808] <= test266151307()
        require _808 + mem[_808] + 31 < _808 + return_data.size
        _826 = mem[_808 + mem[_808]]
        if mem[_808 + mem[_808]] > test266151307():
            revert with 'NH{q', 65
        if _808 + ceil32(return_data.size) + floor32(mem[_808 + mem[_808]]) + 1 > test266151307() or floor32(mem[_808 + mem[_808]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _808 + ceil32(return_data.size) + floor32(mem[_808 + mem[_808]]) + 1
        mem[_808 + ceil32(return_data.size)] = _826
        require _817 + (32 * _826) + 32 <= return_data.size
        idx = _808 + _817 + 32
        s = _808 + ceil32(return_data.size) + 32
        while idx < _808 + _817 + (32 * _826) + 32:
            require mem[idx] == mem[idx]
            mem[s] = mem[idx]
            idx = idx + 32
            s = s + 32
            continue 
    else:
        if arg2 > 2:
            revert with 'NH{q', 33
        mem[100] = this.address
        mem[132] = address(stor1[arg2])
        require ext_code.size(address(arg3))
        staticcall address(arg3).allowance(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(this.address), address(stor1[arg2])
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0]:
            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
        mem[ceil32(return_data.size) + 132] = address(stor1[arg2])
        mem[ceil32(return_data.size) + 164] = -1
        mem[ceil32(return_data.size) + 96] = 68
        mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor1[arg2])
        mem[ceil32(return_data.size) + 128 len 4] = approve(address arg1, uint256 arg2)
        mem[ceil32(return_data.size) + 196] = 32
        mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if ext_code.size(address(arg3)) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 260 len 96] = approve(address arg1, uint256 arg2), Mask(224, 0, stor1[arg2]), uint32(stor1[arg2]), -1, 0
        mem[ceil32(return_data.size) + 328] = 0
        call address(arg3) with:
           funct Mask(32, 224, approve(address arg1, uint256 arg2), Mask(224, 0, stor1[arg2]), uint32(stor1[arg2]), -1, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, approve(address arg1, uint256 arg2), Mask(224, 0, stor1[arg2]), uint32(stor1[arg2]), -1, 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0] > 0:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0] <= 0:
                mem[ceil32(return_data.size) + 260] = 2
                mem[ceil32(return_data.size) + 292] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                mem[ceil32(return_data.size) + 324] = address(arg3)
                if arg1 > 2:
                    revert with 'NH{q', 33
                mem[0] = arg1
                mem[32] = 1
                mem[ceil32(return_data.size) + 356] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + 360] = 1
                mem[ceil32(return_data.size) + 392] = 128
                mem[ceil32(return_data.size) + 488] = 2
                idx = 0
                s = ceil32(return_data.size) + 292
                t = ceil32(return_data.size) + 520
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[ceil32(return_data.size) + 424] = this.address
                mem[ceil32(return_data.size) + 456] = block.timestamp + uint128(arg5)
                require ext_code.size(address(stor1[arg1]))
                call address(stor1[arg1]).swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                   value msg.value wei
                     gas gas_remaining wei
                    args 1, Array(len=2, data=mem[ceil32(return_data.size) + 520 len 64]), address(this.address), block.timestamp + uint128(arg5)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(return_data.size) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (2 * ceil32(return_data.size)) + 356
                require return_data.size >= 32
                _586 = mem[ceil32(return_data.size) + 356 len 4], 0
                require mem[ceil32(return_data.size) + 356 len 4], 0 <= test266151307()
                require ceil32(return_data.size) + mem[ceil32(return_data.size) + 356 len 4], 0 + 387 < ceil32(return_data.size) + return_data.size + 356
                _595 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 356 len 4], 0 + 356]
                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 356 len 4], 0 + 356] > test266151307():
                    revert with 'NH{q', 65
                if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 356 len 4], 0 + 356]) + 357 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 356 len 4], 0 + 356]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 356 len 4], 0 + 356]) + 357
                mem[(2 * ceil32(return_data.size)) + 356] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 356 len 4], 0 + 356]
                require _586 + (32 * _595) + 32 <= return_data.size
                idx = ceil32(return_data.size) + _586 + 388
                s = (2 * ceil32(return_data.size)) + 388
                while idx < ceil32(return_data.size) + _586 + (32 * _595) + 388:
                    require mem[idx] == mem[idx]
                    mem[s] = mem[idx]
                    idx = idx + 32
                    s = s + 32
                    continue 
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(arg3))
                staticcall address(arg3).balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _813 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _822 = mem[_813]
                require mem[_813] == mem[_813]
                _832 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                if 0 >= mem[_832]:
                    revert with 'NH{q', 50
                mem[_832 + 32] = address(arg3)
                if 1 >= mem[_832]:
                    revert with 'NH{q', 50
                mem[_832 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                if arg2 > 2:
                    revert with 'NH{q', 33
                mem[0] = arg2
                mem[32] = 1
                mem[_832 + 96] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                mem[_832 + 100] = _822
                mem[_832 + 132] = 1
                mem[_832 + 164] = 160
                mem[_832 + 260] = mem[_832]
                idx = 0
                s = _832 + 32
                t = _832 + 292
                while idx < mem[_832]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_832 + 196] = msg.sender
                mem[_832 + 228] = block.timestamp + uint128(arg5)
                require ext_code.size(address(stor1[arg2]))
                call address(stor1[arg2]).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _832 + (32 * mem[_832]) + -mem[64] + 288]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _973 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _982 = mem[_973]
                require mem[_973] <= test266151307()
                require _973 + mem[_973] + 31 < _973 + return_data.size
                _990 = mem[_973 + mem[_973]]
                if mem[_973 + mem[_973]] > test266151307():
                    revert with 'NH{q', 65
                if _973 + ceil32(return_data.size) + floor32(mem[_973 + mem[_973]]) + 1 > test266151307() or floor32(mem[_973 + mem[_973]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _973 + ceil32(return_data.size) + floor32(mem[_973 + mem[_973]]) + 1
                mem[_973 + ceil32(return_data.size)] = _990
                require _982 + (32 * _990) + 32 <= return_data.size
                idx = _973 + _982 + 32
                s = _973 + ceil32(return_data.size) + 32
                while idx < _973 + _982 + (32 * _990) + 32:
                    require mem[idx] == mem[idx]
                    mem[s] = mem[idx]
                    idx = idx + 32
                    s = s + 32
                    continue 
            else:
                require ext_call.return_data[0] >= 32
                require 0, Mask(224, 0, stor1[arg2]) == bool(0, Mask(224, 0, stor1[arg2]))
                if not 0, Mask(224, 0, stor1[arg2]):
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                mem[ceil32(return_data.size) + 260] = 2
                mem[ceil32(return_data.size) + 292] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                mem[ceil32(return_data.size) + 324] = address(arg3)
                if arg1 > 2:
                    revert with 'NH{q', 33
                mem[0] = arg1
                mem[32] = 1
                mem[ceil32(return_data.size) + 356] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + 360] = 1
                mem[ceil32(return_data.size) + 392] = 128
                mem[ceil32(return_data.size) + 488] = 2
                idx = 0
                s = ceil32(return_data.size) + 292
                t = ceil32(return_data.size) + 520
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[ceil32(return_data.size) + 424] = this.address
                mem[ceil32(return_data.size) + 456] = block.timestamp + uint128(arg5)
                require ext_code.size(address(stor1[arg1]))
                call address(stor1[arg1]).swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                   value msg.value wei
                     gas gas_remaining wei
                    args 1, Array(len=2, data=mem[ceil32(return_data.size) + 520 len 64]), address(this.address), block.timestamp + uint128(arg5)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(return_data.size) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (2 * ceil32(return_data.size)) + 356
                require return_data.size >= 32
                _587 = mem[ceil32(return_data.size) + 356 len 4], 0
                require mem[ceil32(return_data.size) + 356 len 4], 0 <= test266151307()
                require ceil32(return_data.size) + mem[ceil32(return_data.size) + 356 len 4], 0 + 387 < ceil32(return_data.size) + return_data.size + 356
                _596 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 356 len 4], 0 + 356]
                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 356 len 4], 0 + 356] > test266151307():
                    revert with 'NH{q', 65
                if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 356 len 4], 0 + 356]) + 357 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 356 len 4], 0 + 356]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 356 len 4], 0 + 356]) + 357
                mem[(2 * ceil32(return_data.size)) + 356] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 356 len 4], 0 + 356]
                require _587 + (32 * _596) + 32 <= return_data.size
                idx = ceil32(return_data.size) + _587 + 388
                s = (2 * ceil32(return_data.size)) + 388
                while idx < ceil32(return_data.size) + _587 + (32 * _596) + 388:
                    require mem[idx] == mem[idx]
                    mem[s] = mem[idx]
                    idx = idx + 32
                    s = s + 32
                    continue 
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(arg3))
                staticcall address(arg3).balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _814 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _823 = mem[_814]
                require mem[_814] == mem[_814]
                _833 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                if 0 >= mem[_833]:
                    revert with 'NH{q', 50
                mem[_833 + 32] = address(arg3)
                if 1 >= mem[_833]:
                    revert with 'NH{q', 50
                mem[_833 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                if arg2 > 2:
                    revert with 'NH{q', 33
                mem[0] = arg2
                mem[32] = 1
                mem[_833 + 96] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                mem[_833 + 100] = _823
                mem[_833 + 132] = 1
                mem[_833 + 164] = 160
                mem[_833 + 260] = mem[_833]
                idx = 0
                s = _833 + 32
                t = _833 + 292
                while idx < mem[_833]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_833 + 196] = msg.sender
                mem[_833 + 228] = block.timestamp + uint128(arg5)
                require ext_code.size(address(stor1[arg2]))
                call address(stor1[arg2]).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _833 + (32 * mem[_833]) + -mem[64] + 288]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _974 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _983 = mem[_974]
                require mem[_974] <= test266151307()
                require _974 + mem[_974] + 31 < _974 + return_data.size
                _991 = mem[_974 + mem[_974]]
                if mem[_974 + mem[_974]] > test266151307():
                    revert with 'NH{q', 65
                if _974 + ceil32(return_data.size) + floor32(mem[_974 + mem[_974]]) + 1 > test266151307() or floor32(mem[_974 + mem[_974]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _974 + ceil32(return_data.size) + floor32(mem[_974 + mem[_974]]) + 1
                mem[_974 + ceil32(return_data.size)] = _991
                require _983 + (32 * _991) + 32 <= return_data.size
                idx = _974 + _983 + 32
                s = _974 + ceil32(return_data.size) + 32
                while idx < _974 + _983 + (32 * _991) + 32:
                    require mem[idx] == mem[idx]
                    mem[s] = mem[idx]
                    idx = idx + 32
                    s = s + 32
                    continue 
        else:
            mem[ceil32(return_data.size) + 260] = return_data.size
            mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size <= 0:
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 261] = 2
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 293] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 325] = address(arg3)
                if arg1 > 2:
                    revert with 'NH{q', 33
                mem[0] = arg1
                mem[32] = 1
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 357] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 361] = 1
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 393] = 128
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 489] = 2
                idx = 0
                s = ceil32(return_data.size) + ceil32(return_data.size) + 293
                t = ceil32(return_data.size) + ceil32(return_data.size) + 521
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 425] = this.address
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 457] = block.timestamp + uint128(arg5)
                require ext_code.size(address(stor1[arg1]))
                call address(stor1[arg1]).swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                   value msg.value wei
                     gas gas_remaining wei
                    args 1, Array(len=2, data=mem[ceil32(return_data.size) + ceil32(return_data.size) + 521 len 64]), address(this.address), block.timestamp + uint128(arg5)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 357 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357
                require return_data.size >= 32
                _588 = mem[ceil32(return_data.size) + ceil32(return_data.size) + 357 len 4], 0
                require mem[ceil32(return_data.size) + ceil32(return_data.size) + 357 len 4], 0 <= test266151307()
                require ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 357 len 4], 0 + 388 < ceil32(return_data.size) + ceil32(return_data.size) + return_data.size + 357
                _597 = mem[ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 357 len 4], 0 + 357]
                if mem[ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 357 len 4], 0 + 357] > test266151307():
                    revert with 'NH{q', 65
                if (2 * ceil32(return_data.size)) + ceil32(return_data.size) + floor32(mem[ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 357 len 4], 0 + 357]) + 358 > test266151307() or floor32(mem[ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 357 len 4], 0 + 357]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + floor32(mem[ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 357 len 4], 0 + 357]) + 358
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357] = _597
                require _588 + (32 * _597) + 32 <= return_data.size
                idx = ceil32(return_data.size) + ceil32(return_data.size) + _588 + 389
                s = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389
                while idx < ceil32(return_data.size) + ceil32(return_data.size) + _588 + (32 * _597) + 389:
                    require mem[idx] == mem[idx]
                    mem[s] = mem[idx]
                    idx = idx + 32
                    s = s + 32
                    continue 
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(arg3))
                staticcall address(arg3).balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _815 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _824 = mem[_815]
                require mem[_815] == mem[_815]
                _834 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                if 0 >= mem[_834]:
                    revert with 'NH{q', 50
                mem[_834 + 32] = address(arg3)
                if 1 >= mem[_834]:
                    revert with 'NH{q', 50
                mem[_834 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                if arg2 > 2:
                    revert with 'NH{q', 33
                mem[0] = arg2
                mem[32] = 1
                mem[_834 + 96] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                mem[_834 + 100] = _824
                mem[_834 + 132] = 1
                mem[_834 + 164] = 160
                mem[_834 + 260] = mem[_834]
                idx = 0
                s = _834 + 32
                t = _834 + 292
                while idx < mem[_834]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_834 + 196] = msg.sender
                mem[_834 + 228] = block.timestamp + uint128(arg5)
                require ext_code.size(address(stor1[arg2]))
                call address(stor1[arg2]).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _834 + (32 * mem[_834]) + -mem[64] + 288]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _975 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _984 = mem[_975]
                require mem[_975] <= test266151307()
                require _975 + mem[_975] + 31 < _975 + return_data.size
                _992 = mem[_975 + mem[_975]]
                if mem[_975 + mem[_975]] > test266151307():
                    revert with 'NH{q', 65
                if _975 + ceil32(return_data.size) + floor32(mem[_975 + mem[_975]]) + 1 > test266151307() or floor32(mem[_975 + mem[_975]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _975 + ceil32(return_data.size) + floor32(mem[_975 + mem[_975]]) + 1
                mem[_975 + ceil32(return_data.size)] = _992
                require _984 + (32 * _992) + 32 <= return_data.size
                idx = _975 + _984 + 32
                s = _975 + ceil32(return_data.size) + 32
                while idx < _975 + _984 + (32 * _992) + 32:
                    require mem[idx] == mem[idx]
                    mem[s] = mem[idx]
                    idx = idx + 32
                    s = s + 32
                    continue 
            else:
                require return_data.size >= 32
                require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                if not mem[ceil32(return_data.size) + 292]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 261] = 2
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 293] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 325] = address(arg3)
                if arg1 > 2:
                    revert with 'NH{q', 33
                mem[0] = arg1
                mem[32] = 1
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 357] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 361] = 1
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 393] = 128
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 489] = 2
                idx = 0
                s = ceil32(return_data.size) + ceil32(return_data.size) + 293
                t = ceil32(return_data.size) + ceil32(return_data.size) + 521
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 425] = this.address
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 457] = block.timestamp + uint128(arg5)
                require ext_code.size(address(stor1[arg1]))
                call address(stor1[arg1]).swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                   value msg.value wei
                     gas gas_remaining wei
                    args 1, Array(len=2, data=mem[ceil32(return_data.size) + ceil32(return_data.size) + 521 len 64]), address(this.address), block.timestamp + uint128(arg5)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 357 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357
                require return_data.size >= 32
                _589 = mem[ceil32(return_data.size) + ceil32(return_data.size) + 357 len 4], 0
                require mem[ceil32(return_data.size) + ceil32(return_data.size) + 357 len 4], 0 <= test266151307()
                require ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 357 len 4], 0 + 388 < ceil32(return_data.size) + ceil32(return_data.size) + return_data.size + 357
                _598 = mem[ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 357 len 4], 0 + 357]
                if mem[ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 357 len 4], 0 + 357] > test266151307():
                    revert with 'NH{q', 65
                if (2 * ceil32(return_data.size)) + ceil32(return_data.size) + floor32(mem[ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 357 len 4], 0 + 357]) + 358 > test266151307() or floor32(mem[ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 357 len 4], 0 + 357]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + floor32(mem[ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 357 len 4], 0 + 357]) + 358
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357] = _598
                require _589 + (32 * _598) + 32 <= return_data.size
                idx = ceil32(return_data.size) + ceil32(return_data.size) + _589 + 389
                s = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389
                while idx < ceil32(return_data.size) + ceil32(return_data.size) + _589 + (32 * _598) + 389:
                    require mem[idx] == mem[idx]
                    mem[s] = mem[idx]
                    idx = idx + 32
                    s = s + 32
                    continue 
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(arg3))
                staticcall address(arg3).balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _816 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _825 = mem[_816]
                require mem[_816] == mem[_816]
                _835 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                if 0 >= mem[_835]:
                    revert with 'NH{q', 50
                mem[_835 + 32] = address(arg3)
                if 1 >= mem[_835]:
                    revert with 'NH{q', 50
                mem[_835 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                if arg2 > 2:
                    revert with 'NH{q', 33
                mem[0] = arg2
                mem[32] = 1
                mem[_835 + 96] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                mem[_835 + 100] = _825
                mem[_835 + 132] = 1
                mem[_835 + 164] = 160
                mem[_835 + 260] = mem[_835]
                idx = 0
                s = _835 + 32
                t = _835 + 292
                while idx < mem[_835]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_835 + 196] = msg.sender
                mem[_835 + 228] = block.timestamp + uint128(arg5)
                require ext_code.size(address(stor1[arg2]))
                call address(stor1[arg2]).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _835 + (32 * mem[_835]) + -mem[64] + 288]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _976 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _985 = mem[_976]
                require mem[_976] <= test266151307()
                require _976 + mem[_976] + 31 < _976 + return_data.size
                _993 = mem[_976 + mem[_976]]
                if mem[_976 + mem[_976]] > test266151307():
                    revert with 'NH{q', 65
                if _976 + ceil32(return_data.size) + floor32(mem[_976 + mem[_976]]) + 1 > test266151307() or floor32(mem[_976 + mem[_976]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _976 + ceil32(return_data.size) + floor32(mem[_976 + mem[_976]]) + 1
                mem[_976 + ceil32(return_data.size)] = _993
                require _985 + (32 * _993) + 32 <= return_data.size
                idx = _976 + _985 + 32
                s = _976 + ceil32(return_data.size) + 32
                while idx < _976 + _985 + (32 * _993) + 32:
                    require mem[idx] == mem[idx]
                    mem[s] = mem[idx]
                    idx = idx + 32
                    s = s + 32
                    continue 
    return eth.balance(msg.sender) + msg.value, eth.balance(msg.sender)
}

function sub_9d43397f(?) payable {
    require calldata.size - 4 >= 256
    require arg1 < 3
    require arg2 < 3
    require arg3 == address(arg3)
    require arg4 == bool(arg4)
    require arg5 == bool(arg5)
    require arg6 == uint128(arg6)
    require arg7 == arg7
    require arg8 == arg8
    if ownerAddress != msg.sender:
        revert with 0, 'Caller is not owner'
    if eth.balance(msg.sender) > -msg.value - 1:
        revert with 'NH{q', 17
    if block.timestamp > -uint128(arg6) - 1:
        revert with 'NH{q', 17
    if not arg5:
        mem[96] = 2
        mem[128] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
        mem[160] = address(arg3)
        if arg1 > 2:
            revert with 'NH{q', 33
        mem[0] = arg1
        mem[32] = 1
        mem[192] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
        mem[196] = arg7
        mem[228] = 128
        mem[324] = 2
        idx = 0
        s = 128
        t = 356
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[260] = this.address
        mem[292] = block.timestamp + uint128(arg6)
        require ext_code.size(address(stor1[arg1]))
        call address(stor1[arg1]).swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
           value msg.value wei
             gas gas_remaining wei
            args arg7, Array(len=2, data=mem[356 len 64]), address(this.address), block.timestamp + uint128(arg6)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 192
        require return_data.size >= 32
        _210 = mem[192 len 4], Mask(224, 32, arg7) >> 32
        require mem[192 len 4], Mask(224, 32, arg7) >> 32 <= test266151307()
        require mem[192 len 4], Mask(224, 32, arg7) >> 32 + 223 < return_data.size + 192
        _217 = mem[mem[192 len 4], Mask(224, 32, arg7) >> 32 + 192]
        if mem[mem[192 len 4], Mask(224, 32, arg7) >> 32 + 192] > test266151307():
            revert with 'NH{q', 65
        if ceil32(return_data.size) + floor32(mem[mem[192 len 4], Mask(224, 32, arg7) >> 32 + 192]) + 193 > test266151307() or floor32(mem[mem[192 len 4], Mask(224, 32, arg7) >> 32 + 192]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = ceil32(return_data.size) + floor32(mem[mem[192 len 4], Mask(224, 32, arg7) >> 32 + 192]) + 193
        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg7) >> 32 + 192]
        require _210 + (32 * _217) + 32 <= return_data.size
        idx = _210 + 224
        s = ceil32(return_data.size) + 224
        while idx < _210 + (32 * _217) + 224:
            require mem[idx] == mem[idx]
            mem[s] = mem[idx]
            idx = idx + 32
            s = s + 32
            continue 
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(arg3))
        staticcall address(arg3).balanceOf(address arg1) with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _570 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _579 = mem[_570]
        require mem[_570] == mem[_570]
        _596 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        if 0 >= mem[_596]:
            revert with 'NH{q', 50
        mem[_596 + 32] = address(arg3)
        if 1 >= mem[_596]:
            revert with 'NH{q', 50
        mem[_596 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
        if arg2 > 2:
            revert with 'NH{q', 33
        mem[0] = arg2
        mem[32] = 1
        mem[_596 + 96] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
        mem[_596 + 100] = _579
        mem[_596 + 132] = arg8
        mem[_596 + 164] = 160
        mem[_596 + 260] = mem[_596]
        idx = 0
        s = _596 + 32
        t = _596 + 292
        while idx < mem[_596]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_596 + 196] = msg.sender
        mem[_596 + 228] = block.timestamp + uint128(arg6)
        require ext_code.size(address(stor1[arg2]))
        call address(stor1[arg2]).mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _596 + (32 * mem[_596]) + -mem[64] + 288]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _815 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _824 = mem[_815]
        require mem[_815] <= test266151307()
        require _815 + mem[_815] + 31 < _815 + return_data.size
        _833 = mem[_815 + mem[_815]]
        if mem[_815 + mem[_815]] > test266151307():
            revert with 'NH{q', 65
        if _815 + ceil32(return_data.size) + floor32(mem[_815 + mem[_815]]) + 1 > test266151307() or floor32(mem[_815 + mem[_815]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _815 + ceil32(return_data.size) + floor32(mem[_815 + mem[_815]]) + 1
        mem[_815 + ceil32(return_data.size)] = _833
        require _824 + (32 * _833) + 32 <= return_data.size
        idx = _815 + _824 + 32
        s = _815 + ceil32(return_data.size) + 32
        while idx < _815 + _824 + (32 * _833) + 32:
            require mem[idx] == mem[idx]
            mem[s] = mem[idx]
            idx = idx + 32
            s = s + 32
            continue 
    else:
        if arg2 > 2:
            revert with 'NH{q', 33
        mem[100] = this.address
        mem[132] = address(stor1[arg2])
        require ext_code.size(address(arg3))
        staticcall address(arg3).allowance(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(this.address), address(stor1[arg2])
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0]:
            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
        mem[ceil32(return_data.size) + 132] = address(stor1[arg2])
        mem[ceil32(return_data.size) + 164] = -1
        mem[ceil32(return_data.size) + 96] = 68
        mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor1[arg2])
        mem[ceil32(return_data.size) + 128 len 4] = approve(address arg1, uint256 arg2)
        mem[ceil32(return_data.size) + 196] = 32
        mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if ext_code.size(address(arg3)) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 260 len 96] = approve(address arg1, uint256 arg2), Mask(224, 0, stor1[arg2]), uint32(stor1[arg2]), -1, 0
        mem[ceil32(return_data.size) + 328] = 0
        call address(arg3) with:
           funct Mask(32, 224, approve(address arg1, uint256 arg2), Mask(224, 0, stor1[arg2]), uint32(stor1[arg2]), -1, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, approve(address arg1, uint256 arg2), Mask(224, 0, stor1[arg2]), uint32(stor1[arg2]), -1, 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0] > 0:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0] <= 0:
                mem[ceil32(return_data.size) + 260] = 2
                mem[ceil32(return_data.size) + 292] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                mem[ceil32(return_data.size) + 324] = address(arg3)
                if arg1 > 2:
                    revert with 'NH{q', 33
                mem[0] = arg1
                mem[32] = 1
                mem[ceil32(return_data.size) + 356] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + 360] = arg7
                mem[ceil32(return_data.size) + 392] = 128
                mem[ceil32(return_data.size) + 488] = 2
                idx = 0
                s = ceil32(return_data.size) + 292
                t = ceil32(return_data.size) + 520
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[ceil32(return_data.size) + 424] = this.address
                mem[ceil32(return_data.size) + 456] = block.timestamp + uint128(arg6)
                require ext_code.size(address(stor1[arg1]))
                call address(stor1[arg1]).swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                   value msg.value wei
                     gas gas_remaining wei
                    args arg7, Array(len=2, data=mem[ceil32(return_data.size) + 520 len 64]), address(this.address), block.timestamp + uint128(arg6)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(return_data.size) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (2 * ceil32(return_data.size)) + 356
                require return_data.size >= 32
                _575 = mem[ceil32(return_data.size) + 356 len 4], Mask(224, 32, arg7) >> 32
                require mem[ceil32(return_data.size) + 356 len 4], Mask(224, 32, arg7) >> 32 <= test266151307()
                require ceil32(return_data.size) + mem[ceil32(return_data.size) + 356 len 4], Mask(224, 32, arg7) >> 32 + 387 < ceil32(return_data.size) + return_data.size + 356
                _584 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 356 len 4], Mask(224, 32, arg7) >> 32 + 356]
                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 356 len 4], Mask(224, 32, arg7) >> 32 + 356] > test266151307():
                    revert with 'NH{q', 65
                if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 356 len 4], Mask(224, 32, arg7) >> 32 + 356]) + 357 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 356 len 4], Mask(224, 32, arg7) >> 32 + 356]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 356 len 4], Mask(224, 32, arg7) >> 32 + 356]) + 357
                mem[(2 * ceil32(return_data.size)) + 356] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 356 len 4], Mask(224, 32, arg7) >> 32 + 356]
                require _575 + (32 * _584) + 32 <= return_data.size
                idx = ceil32(return_data.size) + _575 + 388
                s = (2 * ceil32(return_data.size)) + 388
                while idx < ceil32(return_data.size) + _575 + (32 * _584) + 388:
                    require mem[idx] == mem[idx]
                    mem[s] = mem[idx]
                    idx = idx + 32
                    s = s + 32
                    continue 
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(arg3))
                staticcall address(arg3).balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _820 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _829 = mem[_820]
                require mem[_820] == mem[_820]
                _839 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                if 0 >= mem[_839]:
                    revert with 'NH{q', 50
                mem[_839 + 32] = address(arg3)
                if 1 >= mem[_839]:
                    revert with 'NH{q', 50
                mem[_839 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                if arg2 > 2:
                    revert with 'NH{q', 33
                mem[0] = arg2
                mem[32] = 1
                mem[_839 + 96] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                mem[_839 + 100] = _829
                mem[_839 + 132] = arg8
                mem[_839 + 164] = 160
                mem[_839 + 260] = mem[_839]
                idx = 0
                s = _839 + 32
                t = _839 + 292
                while idx < mem[_839]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_839 + 196] = msg.sender
                mem[_839 + 228] = block.timestamp + uint128(arg6)
                require ext_code.size(address(stor1[arg2]))
                call address(stor1[arg2]).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _839 + (32 * mem[_839]) + -mem[64] + 288]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _999 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1007 = mem[_999]
                require mem[_999] <= test266151307()
                require _999 + mem[_999] + 31 < _999 + return_data.size
                _1016 = mem[_999 + mem[_999]]
                if mem[_999 + mem[_999]] > test266151307():
                    revert with 'NH{q', 65
                if _999 + ceil32(return_data.size) + floor32(mem[_999 + mem[_999]]) + 1 > test266151307() or floor32(mem[_999 + mem[_999]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _999 + ceil32(return_data.size) + floor32(mem[_999 + mem[_999]]) + 1
                mem[_999 + ceil32(return_data.size)] = _1016
                require _1007 + (32 * _1016) + 32 <= return_data.size
                idx = _999 + _1007 + 32
                s = _999 + ceil32(return_data.size) + 32
                while idx < _999 + _1007 + (32 * _1016) + 32:
                    require mem[idx] == mem[idx]
                    mem[s] = mem[idx]
                    idx = idx + 32
                    s = s + 32
                    continue 
            else:
                require ext_call.return_data[0] >= 32
                require 0, Mask(224, 0, stor1[arg2]) == bool(0, Mask(224, 0, stor1[arg2]))
                if not 0, Mask(224, 0, stor1[arg2]):
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                mem[ceil32(return_data.size) + 260] = 2
                mem[ceil32(return_data.size) + 292] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                mem[ceil32(return_data.size) + 324] = address(arg3)
                if arg1 > 2:
                    revert with 'NH{q', 33
                mem[0] = arg1
                mem[32] = 1
                mem[ceil32(return_data.size) + 356] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + 360] = arg7
                mem[ceil32(return_data.size) + 392] = 128
                mem[ceil32(return_data.size) + 488] = 2
                idx = 0
                s = ceil32(return_data.size) + 292
                t = ceil32(return_data.size) + 520
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[ceil32(return_data.size) + 424] = this.address
                mem[ceil32(return_data.size) + 456] = block.timestamp + uint128(arg6)
                require ext_code.size(address(stor1[arg1]))
                call address(stor1[arg1]).swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                   value msg.value wei
                     gas gas_remaining wei
                    args arg7, Array(len=2, data=mem[ceil32(return_data.size) + 520 len 64]), address(this.address), block.timestamp + uint128(arg6)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(return_data.size) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (2 * ceil32(return_data.size)) + 356
                require return_data.size >= 32
                _576 = mem[ceil32(return_data.size) + 356 len 4], Mask(224, 32, arg7) >> 32
                require mem[ceil32(return_data.size) + 356 len 4], Mask(224, 32, arg7) >> 32 <= test266151307()
                require ceil32(return_data.size) + mem[ceil32(return_data.size) + 356 len 4], Mask(224, 32, arg7) >> 32 + 387 < ceil32(return_data.size) + return_data.size + 356
                _585 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 356 len 4], Mask(224, 32, arg7) >> 32 + 356]
                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 356 len 4], Mask(224, 32, arg7) >> 32 + 356] > test266151307():
                    revert with 'NH{q', 65
                if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 356 len 4], Mask(224, 32, arg7) >> 32 + 356]) + 357 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 356 len 4], Mask(224, 32, arg7) >> 32 + 356]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 356 len 4], Mask(224, 32, arg7) >> 32 + 356]) + 357
                mem[(2 * ceil32(return_data.size)) + 356] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 356 len 4], Mask(224, 32, arg7) >> 32 + 356]
                require _576 + (32 * _585) + 32 <= return_data.size
                idx = ceil32(return_data.size) + _576 + 388
                s = (2 * ceil32(return_data.size)) + 388
                while idx < ceil32(return_data.size) + _576 + (32 * _585) + 388:
                    require mem[idx] == mem[idx]
                    mem[s] = mem[idx]
                    idx = idx + 32
                    s = s + 32
                    continue 
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(arg3))
                staticcall address(arg3).balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _821 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _830 = mem[_821]
                require mem[_821] == mem[_821]
                _840 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                if 0 >= mem[_840]:
                    revert with 'NH{q', 50
                mem[_840 + 32] = address(arg3)
                if 1 >= mem[_840]:
                    revert with 'NH{q', 50
                mem[_840 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                if arg2 > 2:
                    revert with 'NH{q', 33
                mem[0] = arg2
                mem[32] = 1
                mem[_840 + 96] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                mem[_840 + 100] = _830
                mem[_840 + 132] = arg8
                mem[_840 + 164] = 160
                mem[_840 + 260] = mem[_840]
                idx = 0
                s = _840 + 32
                t = _840 + 292
                while idx < mem[_840]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_840 + 196] = msg.sender
                mem[_840 + 228] = block.timestamp + uint128(arg6)
                require ext_code.size(address(stor1[arg2]))
                call address(stor1[arg2]).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _840 + (32 * mem[_840]) + -mem[64] + 288]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1000 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1008 = mem[_1000]
                require mem[_1000] <= test266151307()
                require _1000 + mem[_1000] + 31 < _1000 + return_data.size
                _1017 = mem[_1000 + mem[_1000]]
                if mem[_1000 + mem[_1000]] > test266151307():
                    revert with 'NH{q', 65
                if _1000 + ceil32(return_data.size) + floor32(mem[_1000 + mem[_1000]]) + 1 > test266151307() or floor32(mem[_1000 + mem[_1000]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _1000 + ceil32(return_data.size) + floor32(mem[_1000 + mem[_1000]]) + 1
                mem[_1000 + ceil32(return_data.size)] = _1017
                require _1008 + (32 * _1017) + 32 <= return_data.size
                idx = _1000 + _1008 + 32
                s = _1000 + ceil32(return_data.size) + 32
                while idx < _1000 + _1008 + (32 * _1017) + 32:
                    require mem[idx] == mem[idx]
                    mem[s] = mem[idx]
                    idx = idx + 32
                    s = s + 32
                    continue 
        else:
            mem[ceil32(return_data.size) + 260] = return_data.size
            mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size <= 0:
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 261] = 2
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 293] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 325] = address(arg3)
                if arg1 > 2:
                    revert with 'NH{q', 33
                mem[0] = arg1
                mem[32] = 1
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 357] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 361] = arg7
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 393] = 128
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 489] = 2
                idx = 0
                s = ceil32(return_data.size) + ceil32(return_data.size) + 293
                t = ceil32(return_data.size) + ceil32(return_data.size) + 521
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 425] = this.address
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 457] = block.timestamp + uint128(arg6)
                require ext_code.size(address(stor1[arg1]))
                call address(stor1[arg1]).swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                   value msg.value wei
                     gas gas_remaining wei
                    args arg7, Array(len=2, data=mem[ceil32(return_data.size) + ceil32(return_data.size) + 521 len 64]), address(this.address), block.timestamp + uint128(arg6)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 357 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357
                require return_data.size >= 32
                _577 = mem[ceil32(return_data.size) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg7) >> 32
                require mem[ceil32(return_data.size) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg7) >> 32 <= test266151307()
                require ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg7) >> 32 + 388 < ceil32(return_data.size) + ceil32(return_data.size) + return_data.size + 357
                _586 = mem[ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg7) >> 32 + 357]
                if mem[ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg7) >> 32 + 357] > test266151307():
                    revert with 'NH{q', 65
                if (2 * ceil32(return_data.size)) + ceil32(return_data.size) + floor32(mem[ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg7) >> 32 + 357]) + 358 > test266151307() or floor32(mem[ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg7) >> 32 + 357]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + floor32(mem[ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg7) >> 32 + 357]) + 358
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357] = _586
                require _577 + (32 * _586) + 32 <= return_data.size
                idx = ceil32(return_data.size) + ceil32(return_data.size) + _577 + 389
                s = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389
                while idx < ceil32(return_data.size) + ceil32(return_data.size) + _577 + (32 * _586) + 389:
                    require mem[idx] == mem[idx]
                    mem[s] = mem[idx]
                    idx = idx + 32
                    s = s + 32
                    continue 
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(arg3))
                staticcall address(arg3).balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _822 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _831 = mem[_822]
                require mem[_822] == mem[_822]
                _841 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                if 0 >= mem[_841]:
                    revert with 'NH{q', 50
                mem[_841 + 32] = address(arg3)
                if 1 >= mem[_841]:
                    revert with 'NH{q', 50
                mem[_841 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                if arg2 > 2:
                    revert with 'NH{q', 33
                mem[0] = arg2
                mem[32] = 1
                mem[_841 + 96] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                mem[_841 + 100] = _831
                mem[_841 + 132] = arg8
                mem[_841 + 164] = 160
                mem[_841 + 260] = mem[_841]
                idx = 0
                s = _841 + 32
                t = _841 + 292
                while idx < mem[_841]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_841 + 196] = msg.sender
                mem[_841 + 228] = block.timestamp + uint128(arg6)
                require ext_code.size(address(stor1[arg2]))
                call address(stor1[arg2]).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _841 + (32 * mem[_841]) + -mem[64] + 288]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1001 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1009 = mem[_1001]
                require mem[_1001] <= test266151307()
                require _1001 + mem[_1001] + 31 < _1001 + return_data.size
                _1018 = mem[_1001 + mem[_1001]]
                if mem[_1001 + mem[_1001]] > test266151307():
                    revert with 'NH{q', 65
                if _1001 + ceil32(return_data.size) + floor32(mem[_1001 + mem[_1001]]) + 1 > test266151307() or floor32(mem[_1001 + mem[_1001]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _1001 + ceil32(return_data.size) + floor32(mem[_1001 + mem[_1001]]) + 1
                mem[_1001 + ceil32(return_data.size)] = _1018
                require _1009 + (32 * _1018) + 32 <= return_data.size
                idx = _1001 + _1009 + 32
                s = _1001 + ceil32(return_data.size) + 32
                while idx < _1001 + _1009 + (32 * _1018) + 32:
                    require mem[idx] == mem[idx]
                    mem[s] = mem[idx]
                    idx = idx + 32
                    s = s + 32
                    continue 
            else:
                require return_data.size >= 32
                require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                if not mem[ceil32(return_data.size) + 292]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 261] = 2
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 293] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 325] = address(arg3)
                if arg1 > 2:
                    revert with 'NH{q', 33
                mem[0] = arg1
                mem[32] = 1
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 357] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 361] = arg7
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 393] = 128
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 489] = 2
                idx = 0
                s = ceil32(return_data.size) + ceil32(return_data.size) + 293
                t = ceil32(return_data.size) + ceil32(return_data.size) + 521
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 425] = this.address
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 457] = block.timestamp + uint128(arg6)
                require ext_code.size(address(stor1[arg1]))
                call address(stor1[arg1]).swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                   value msg.value wei
                     gas gas_remaining wei
                    args arg7, Array(len=2, data=mem[ceil32(return_data.size) + ceil32(return_data.size) + 521 len 64]), address(this.address), block.timestamp + uint128(arg6)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 357 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357
                require return_data.size >= 32
                _578 = mem[ceil32(return_data.size) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg7) >> 32
                require mem[ceil32(return_data.size) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg7) >> 32 <= test266151307()
                require ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg7) >> 32 + 388 < ceil32(return_data.size) + ceil32(return_data.size) + return_data.size + 357
                _587 = mem[ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg7) >> 32 + 357]
                if mem[ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg7) >> 32 + 357] > test266151307():
                    revert with 'NH{q', 65
                if (2 * ceil32(return_data.size)) + ceil32(return_data.size) + floor32(mem[ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg7) >> 32 + 357]) + 358 > test266151307() or floor32(mem[ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg7) >> 32 + 357]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + floor32(mem[ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg7) >> 32 + 357]) + 358
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357] = _587
                require _578 + (32 * _587) + 32 <= return_data.size
                idx = ceil32(return_data.size) + ceil32(return_data.size) + _578 + 389
                s = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389
                while idx < ceil32(return_data.size) + ceil32(return_data.size) + _578 + (32 * _587) + 389:
                    require mem[idx] == mem[idx]
                    mem[s] = mem[idx]
                    idx = idx + 32
                    s = s + 32
                    continue 
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(arg3))
                staticcall address(arg3).balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _823 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _832 = mem[_823]
                require mem[_823] == mem[_823]
                _842 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                if 0 >= mem[_842]:
                    revert with 'NH{q', 50
                mem[_842 + 32] = address(arg3)
                if 1 >= mem[_842]:
                    revert with 'NH{q', 50
                mem[_842 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                if arg2 > 2:
                    revert with 'NH{q', 33
                mem[0] = arg2
                mem[32] = 1
                mem[_842 + 96] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                mem[_842 + 100] = _832
                mem[_842 + 132] = arg8
                mem[_842 + 164] = 160
                mem[_842 + 260] = mem[_842]
                idx = 0
                s = _842 + 32
                t = _842 + 292
                while idx < mem[_842]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_842 + 196] = msg.sender
                mem[_842 + 228] = block.timestamp + uint128(arg6)
                require ext_code.size(address(stor1[arg2]))
                call address(stor1[arg2]).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _842 + (32 * mem[_842]) + -mem[64] + 288]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1002 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1010 = mem[_1002]
                require mem[_1002] <= test266151307()
                require _1002 + mem[_1002] + 31 < _1002 + return_data.size
                _1019 = mem[_1002 + mem[_1002]]
                if mem[_1002 + mem[_1002]] > test266151307():
                    revert with 'NH{q', 65
                if _1002 + ceil32(return_data.size) + floor32(mem[_1002 + mem[_1002]]) + 1 > test266151307() or floor32(mem[_1002 + mem[_1002]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _1002 + ceil32(return_data.size) + floor32(mem[_1002 + mem[_1002]]) + 1
                mem[_1002 + ceil32(return_data.size)] = _1019
                require _1010 + (32 * _1019) + 32 <= return_data.size
                idx = _1002 + _1010 + 32
                s = _1002 + ceil32(return_data.size) + 32
                while idx < _1002 + _1010 + (32 * _1019) + 32:
                    require mem[idx] == mem[idx]
                    mem[s] = mem[idx]
                    idx = idx + 32
                    s = s + 32
                    continue 
    emit Swap(eth.balance(msg.sender) + msg.value, eth.balance(msg.sender));
    if eth.balance(msg.sender) <= eth.balance(msg.sender) + msg.value:
        if not arg4:
            revert with 0, 'Swap is not profitable'
}



}
