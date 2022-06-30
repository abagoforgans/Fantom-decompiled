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
        staticcall address(arg3).0x70a08231 with:
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
        staticcall address(arg3).0xdd62ed3e with:
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
                mem[(2 * ceil32(return_data.size)) + 356] = _595
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
                staticcall address(arg3).0x70a08231 with:
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
                mem[(2 * ceil32(return_data.size)) + 356] = _596
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
                staticcall address(arg3).0x70a08231 with:
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
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357] = mem[ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 357 len 4], 0 + 357]
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
                staticcall address(arg3).0x70a08231 with:
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
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357] = mem[ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 357 len 4], 0 + 357]
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
                staticcall address(arg3).0x70a08231 with:
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

function sub_ecc89df9(?) payable {
    require calldata.size - 4 >= 288
    require arg1 < 3
    require arg2 < 3
    require arg3 == address(arg3)
    require arg4 == bool(arg4)
    require arg5 == bool(arg5)
    require arg6 == uint128(arg6)
    require arg7 == arg7
    require arg8 == arg8
    require arg9 == arg9
    if ownerAddress != msg.sender:
        revert with 0, 'Caller is not owner'
    if eth.balance(msg.sender) > -msg.value - 1:
        revert with 'NH{q', 17
    if eth.balance(msg.sender) + msg.value > -arg9 - 1:
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
        _181 = mem[192 len 4], Mask(224, 32, arg7) >> 32
        require mem[192 len 4], Mask(224, 32, arg7) >> 32 <= test266151307()
        require mem[192 len 4], Mask(224, 32, arg7) >> 32 + 223 < return_data.size + 192
        _188 = mem[mem[192 len 4], Mask(224, 32, arg7) >> 32 + 192]
        if mem[mem[192 len 4], Mask(224, 32, arg7) >> 32 + 192] > test266151307():
            revert with 'NH{q', 65
        if ceil32(return_data.size) + floor32(mem[mem[192 len 4], Mask(224, 32, arg7) >> 32 + 192]) + 193 > test266151307() or floor32(mem[mem[192 len 4], Mask(224, 32, arg7) >> 32 + 192]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = ceil32(return_data.size) + floor32(mem[mem[192 len 4], Mask(224, 32, arg7) >> 32 + 192]) + 193
        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg7) >> 32 + 192]
        require _181 + (32 * _188) + 32 <= return_data.size
        idx = _181 + 224
        s = ceil32(return_data.size) + 224
        while idx < _181 + (32 * _188) + 224:
            require mem[idx] == mem[idx]
            mem[s] = mem[idx]
            idx = idx + 32
            s = s + 32
            continue 
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(arg3))
        staticcall address(arg3).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _541 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _550 = mem[_541]
        require mem[_541] == mem[_541]
        _567 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        if 0 >= mem[_567]:
            revert with 'NH{q', 50
        mem[_567 + 32] = address(arg3)
        if 1 >= mem[_567]:
            revert with 'NH{q', 50
        mem[_567 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
        if arg2 > 2:
            revert with 'NH{q', 33
        mem[0] = arg2
        mem[32] = 1
        mem[_567 + 96] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
        mem[_567 + 100] = _550
        mem[_567 + 132] = arg8
        mem[_567 + 164] = 160
        mem[_567 + 260] = mem[_567]
        idx = 0
        s = _567 + 32
        t = _567 + 292
        while idx < mem[_567]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_567 + 196] = msg.sender
        mem[_567 + 228] = block.timestamp + uint128(arg6)
        require ext_code.size(address(stor1[arg2]))
        call address(stor1[arg2]).mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _567 + (32 * mem[_567]) + -mem[64] + 288]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _786 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _795 = mem[_786]
        require mem[_786] <= test266151307()
        require _786 + mem[_786] + 31 < _786 + return_data.size
        _804 = mem[_786 + mem[_786]]
        if mem[_786 + mem[_786]] > test266151307():
            revert with 'NH{q', 65
        if _786 + ceil32(return_data.size) + floor32(mem[_786 + mem[_786]]) + 1 > test266151307() or floor32(mem[_786 + mem[_786]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _786 + ceil32(return_data.size) + floor32(mem[_786 + mem[_786]]) + 1
        mem[_786 + ceil32(return_data.size)] = _804
        require _795 + (32 * _804) + 32 <= return_data.size
        idx = _786 + _795 + 32
        s = _786 + ceil32(return_data.size) + 32
        while idx < _786 + _795 + (32 * _804) + 32:
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
        staticcall address(arg3).0xdd62ed3e with:
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
                _546 = mem[ceil32(return_data.size) + 356 len 4], Mask(224, 32, arg7) >> 32
                require mem[ceil32(return_data.size) + 356 len 4], Mask(224, 32, arg7) >> 32 <= test266151307()
                require ceil32(return_data.size) + mem[ceil32(return_data.size) + 356 len 4], Mask(224, 32, arg7) >> 32 + 387 < ceil32(return_data.size) + return_data.size + 356
                _555 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 356 len 4], Mask(224, 32, arg7) >> 32 + 356]
                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 356 len 4], Mask(224, 32, arg7) >> 32 + 356] > test266151307():
                    revert with 'NH{q', 65
                if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 356 len 4], Mask(224, 32, arg7) >> 32 + 356]) + 357 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 356 len 4], Mask(224, 32, arg7) >> 32 + 356]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 356 len 4], Mask(224, 32, arg7) >> 32 + 356]) + 357
                mem[(2 * ceil32(return_data.size)) + 356] = _555
                require _546 + (32 * _555) + 32 <= return_data.size
                idx = ceil32(return_data.size) + _546 + 388
                s = (2 * ceil32(return_data.size)) + 388
                while idx < ceil32(return_data.size) + _546 + (32 * _555) + 388:
                    require mem[idx] == mem[idx]
                    mem[s] = mem[idx]
                    idx = idx + 32
                    s = s + 32
                    continue 
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(arg3))
                staticcall address(arg3).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _791 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _800 = mem[_791]
                require mem[_791] == mem[_791]
                _810 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                if 0 >= mem[_810]:
                    revert with 'NH{q', 50
                mem[_810 + 32] = address(arg3)
                if 1 >= mem[_810]:
                    revert with 'NH{q', 50
                mem[_810 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                if arg2 > 2:
                    revert with 'NH{q', 33
                mem[0] = arg2
                mem[32] = 1
                mem[_810 + 96] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                mem[_810 + 100] = _800
                mem[_810 + 132] = arg8
                mem[_810 + 164] = 160
                mem[_810 + 260] = mem[_810]
                idx = 0
                s = _810 + 32
                t = _810 + 292
                while idx < mem[_810]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_810 + 196] = msg.sender
                mem[_810 + 228] = block.timestamp + uint128(arg6)
                require ext_code.size(address(stor1[arg2]))
                call address(stor1[arg2]).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _810 + (32 * mem[_810]) + -mem[64] + 288]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _970 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _978 = mem[_970]
                require mem[_970] <= test266151307()
                require _970 + mem[_970] + 31 < _970 + return_data.size
                _987 = mem[_970 + mem[_970]]
                if mem[_970 + mem[_970]] > test266151307():
                    revert with 'NH{q', 65
                if _970 + ceil32(return_data.size) + floor32(mem[_970 + mem[_970]]) + 1 > test266151307() or floor32(mem[_970 + mem[_970]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _970 + ceil32(return_data.size) + floor32(mem[_970 + mem[_970]]) + 1
                mem[_970 + ceil32(return_data.size)] = _987
                require _978 + (32 * _987) + 32 <= return_data.size
                idx = _970 + _978 + 32
                s = _970 + ceil32(return_data.size) + 32
                while idx < _970 + _978 + (32 * _987) + 32:
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
                _547 = mem[ceil32(return_data.size) + 356 len 4], Mask(224, 32, arg7) >> 32
                require mem[ceil32(return_data.size) + 356 len 4], Mask(224, 32, arg7) >> 32 <= test266151307()
                require ceil32(return_data.size) + mem[ceil32(return_data.size) + 356 len 4], Mask(224, 32, arg7) >> 32 + 387 < ceil32(return_data.size) + return_data.size + 356
                _556 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 356 len 4], Mask(224, 32, arg7) >> 32 + 356]
                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 356 len 4], Mask(224, 32, arg7) >> 32 + 356] > test266151307():
                    revert with 'NH{q', 65
                if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 356 len 4], Mask(224, 32, arg7) >> 32 + 356]) + 357 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 356 len 4], Mask(224, 32, arg7) >> 32 + 356]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 356 len 4], Mask(224, 32, arg7) >> 32 + 356]) + 357
                mem[(2 * ceil32(return_data.size)) + 356] = _556
                require _547 + (32 * _556) + 32 <= return_data.size
                idx = ceil32(return_data.size) + _547 + 388
                s = (2 * ceil32(return_data.size)) + 388
                while idx < ceil32(return_data.size) + _547 + (32 * _556) + 388:
                    require mem[idx] == mem[idx]
                    mem[s] = mem[idx]
                    idx = idx + 32
                    s = s + 32
                    continue 
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(arg3))
                staticcall address(arg3).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _792 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _801 = mem[_792]
                require mem[_792] == mem[_792]
                _811 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                if 0 >= mem[_811]:
                    revert with 'NH{q', 50
                mem[_811 + 32] = address(arg3)
                if 1 >= mem[_811]:
                    revert with 'NH{q', 50
                mem[_811 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                if arg2 > 2:
                    revert with 'NH{q', 33
                mem[0] = arg2
                mem[32] = 1
                mem[_811 + 96] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                mem[_811 + 100] = _801
                mem[_811 + 132] = arg8
                mem[_811 + 164] = 160
                mem[_811 + 260] = mem[_811]
                idx = 0
                s = _811 + 32
                t = _811 + 292
                while idx < mem[_811]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_811 + 196] = msg.sender
                mem[_811 + 228] = block.timestamp + uint128(arg6)
                require ext_code.size(address(stor1[arg2]))
                call address(stor1[arg2]).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _811 + (32 * mem[_811]) + -mem[64] + 288]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _971 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _979 = mem[_971]
                require mem[_971] <= test266151307()
                require _971 + mem[_971] + 31 < _971 + return_data.size
                _988 = mem[_971 + mem[_971]]
                if mem[_971 + mem[_971]] > test266151307():
                    revert with 'NH{q', 65
                if _971 + ceil32(return_data.size) + floor32(mem[_971 + mem[_971]]) + 1 > test266151307() or floor32(mem[_971 + mem[_971]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _971 + ceil32(return_data.size) + floor32(mem[_971 + mem[_971]]) + 1
                mem[_971 + ceil32(return_data.size)] = _988
                require _979 + (32 * _988) + 32 <= return_data.size
                idx = _971 + _979 + 32
                s = _971 + ceil32(return_data.size) + 32
                while idx < _971 + _979 + (32 * _988) + 32:
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
                _548 = mem[ceil32(return_data.size) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg7) >> 32
                require mem[ceil32(return_data.size) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg7) >> 32 <= test266151307()
                require ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg7) >> 32 + 388 < ceil32(return_data.size) + ceil32(return_data.size) + return_data.size + 357
                _557 = mem[ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg7) >> 32 + 357]
                if mem[ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg7) >> 32 + 357] > test266151307():
                    revert with 'NH{q', 65
                if (2 * ceil32(return_data.size)) + ceil32(return_data.size) + floor32(mem[ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg7) >> 32 + 357]) + 358 > test266151307() or floor32(mem[ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg7) >> 32 + 357]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + floor32(mem[ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg7) >> 32 + 357]) + 358
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357] = mem[ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg7) >> 32 + 357]
                require _548 + (32 * _557) + 32 <= return_data.size
                idx = ceil32(return_data.size) + ceil32(return_data.size) + _548 + 389
                s = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389
                while idx < ceil32(return_data.size) + ceil32(return_data.size) + _548 + (32 * _557) + 389:
                    require mem[idx] == mem[idx]
                    mem[s] = mem[idx]
                    idx = idx + 32
                    s = s + 32
                    continue 
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(arg3))
                staticcall address(arg3).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _793 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _802 = mem[_793]
                require mem[_793] == mem[_793]
                _812 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                if 0 >= mem[_812]:
                    revert with 'NH{q', 50
                mem[_812 + 32] = address(arg3)
                if 1 >= mem[_812]:
                    revert with 'NH{q', 50
                mem[_812 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                if arg2 > 2:
                    revert with 'NH{q', 33
                mem[0] = arg2
                mem[32] = 1
                mem[_812 + 96] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                mem[_812 + 100] = _802
                mem[_812 + 132] = arg8
                mem[_812 + 164] = 160
                mem[_812 + 260] = mem[_812]
                idx = 0
                s = _812 + 32
                t = _812 + 292
                while idx < mem[_812]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_812 + 196] = msg.sender
                mem[_812 + 228] = block.timestamp + uint128(arg6)
                require ext_code.size(address(stor1[arg2]))
                call address(stor1[arg2]).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _812 + (32 * mem[_812]) + -mem[64] + 288]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _972 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _980 = mem[_972]
                require mem[_972] <= test266151307()
                require _972 + mem[_972] + 31 < _972 + return_data.size
                _989 = mem[_972 + mem[_972]]
                if mem[_972 + mem[_972]] > test266151307():
                    revert with 'NH{q', 65
                if _972 + ceil32(return_data.size) + floor32(mem[_972 + mem[_972]]) + 1 > test266151307() or floor32(mem[_972 + mem[_972]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _972 + ceil32(return_data.size) + floor32(mem[_972 + mem[_972]]) + 1
                mem[_972 + ceil32(return_data.size)] = _989
                require _980 + (32 * _989) + 32 <= return_data.size
                idx = _972 + _980 + 32
                s = _972 + ceil32(return_data.size) + 32
                while idx < _972 + _980 + (32 * _989) + 32:
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
                _549 = mem[ceil32(return_data.size) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg7) >> 32
                require mem[ceil32(return_data.size) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg7) >> 32 <= test266151307()
                require ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg7) >> 32 + 388 < ceil32(return_data.size) + ceil32(return_data.size) + return_data.size + 357
                _558 = mem[ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg7) >> 32 + 357]
                if mem[ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg7) >> 32 + 357] > test266151307():
                    revert with 'NH{q', 65
                if (2 * ceil32(return_data.size)) + ceil32(return_data.size) + floor32(mem[ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg7) >> 32 + 357]) + 358 > test266151307() or floor32(mem[ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg7) >> 32 + 357]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + floor32(mem[ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg7) >> 32 + 357]) + 358
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357] = mem[ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg7) >> 32 + 357]
                require _549 + (32 * _558) + 32 <= return_data.size
                idx = ceil32(return_data.size) + ceil32(return_data.size) + _549 + 389
                s = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389
                while idx < ceil32(return_data.size) + ceil32(return_data.size) + _549 + (32 * _558) + 389:
                    require mem[idx] == mem[idx]
                    mem[s] = mem[idx]
                    idx = idx + 32
                    s = s + 32
                    continue 
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(arg3))
                staticcall address(arg3).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _794 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _803 = mem[_794]
                require mem[_794] == mem[_794]
                _813 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                if 0 >= mem[_813]:
                    revert with 'NH{q', 50
                mem[_813 + 32] = address(arg3)
                if 1 >= mem[_813]:
                    revert with 'NH{q', 50
                mem[_813 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                if arg2 > 2:
                    revert with 'NH{q', 33
                mem[0] = arg2
                mem[32] = 1
                mem[_813 + 96] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                mem[_813 + 100] = _803
                mem[_813 + 132] = arg8
                mem[_813 + 164] = 160
                mem[_813 + 260] = mem[_813]
                idx = 0
                s = _813 + 32
                t = _813 + 292
                while idx < mem[_813]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_813 + 196] = msg.sender
                mem[_813 + 228] = block.timestamp + uint128(arg6)
                require ext_code.size(address(stor1[arg2]))
                call address(stor1[arg2]).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _813 + (32 * mem[_813]) + -mem[64] + 288]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _973 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _981 = mem[_973]
                require mem[_973] <= test266151307()
                require _973 + mem[_973] + 31 < _973 + return_data.size
                _990 = mem[_973 + mem[_973]]
                if mem[_973 + mem[_973]] > test266151307():
                    revert with 'NH{q', 65
                if _973 + ceil32(return_data.size) + floor32(mem[_973 + mem[_973]]) + 1 > test266151307() or floor32(mem[_973 + mem[_973]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _973 + ceil32(return_data.size) + floor32(mem[_973 + mem[_973]]) + 1
                mem[_973 + ceil32(return_data.size)] = _990
                require _981 + (32 * _990) + 32 <= return_data.size
                idx = _973 + _981 + 32
                s = _973 + ceil32(return_data.size) + 32
                while idx < _973 + _981 + (32 * _990) + 32:
                    require mem[idx] == mem[idx]
                    mem[s] = mem[idx]
                    idx = idx + 32
                    s = s + 32
                    continue 
    emit Swap(eth.balance(msg.sender) + msg.value + arg9, eth.balance(msg.sender));
    if eth.balance(msg.sender) <= eth.balance(msg.sender) + msg.value + arg9:
        if not arg4:
            revert with 0, 'Swap is not profitable'
}



}
