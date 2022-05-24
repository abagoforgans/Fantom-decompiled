contract main {




// =====================  Runtime code  =====================


#
#  - sub_08bb35d6(?)
#  - sub_1042923b(?)
#  - sub_1b71afbd(?)
#  - sub_57e134d9(?)
#  - sub_5cc7647c(?)
#  - sub_6ceaad4d(?)
#  - sub_88f61f9f(?)
#  - sub_89fecbd5(?)
#  - sub_ba2ebf96(?)
#  - sub_cee6202c(?)
#  - _fallback()
#
address owner;
address stor1;
uint16 stor2; offset 160
uint16 stor2; offset 176
address stor2;
mapping of address stor3;
mapping of uint8 stor4;

function owner() {
    return owner
}

function sub_9416cbc6(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor4[arg1])
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_88fbe419(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor4[address(arg1)] = 1
}

function sub_5424888b(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor3[address(arg1)][address(arg2)] = address(arg3)
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_c2ab127a(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == uint16(arg2)
    require arg3 == uint16(arg3)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if uint16(arg2) < 25:
        revert with 0, 'FEE TOO HIGH; MAX FEE = 4%'
    address(stor2.field_0) = address(arg1)
    uint16(stor2.field_160) = uint16(arg2)
    uint16(stor2.field_176) = uint16(arg3)
    emit 0x85821cef: address(arg1), arg2 << 240, uint16(arg3)
}

function withdraw(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        call owner with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        require ext_code.size(arg1)
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args owner, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_03f59ea4(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    if msg.value <= uint16(stor2.field_176):
        revert with 0, 'INPUT_TOO_LOW'
    mem[100] = this.address
    mem[132] = address(arg3)
    require ext_code.size(address(arg1))
    staticcall address(arg1).0xdd62ed3e with:
            gas gas_remaining wei
           args this.address, address(arg3)
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        if not uint16(stor2.field_160):
            revert with 0, 18
        if msg.value < msg.value / uint16(stor2.field_160):
            revert with 0, 17
        mem[0] = address(arg2)
        mem[32] = sha3(address(arg1), 3)
        if not stor3[address(arg1)][address(arg2)]:
            mem[ceil32(return_data.size) + 96] = 2
            mem[ceil32(return_data.size) + 128] = stor1
            mem[ceil32(return_data.size) + 160] = address(arg1)
            mem[ceil32(return_data.size) + 192] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 196] = 0
            mem[ceil32(return_data.size) + 228] = 128
            mem[ceil32(return_data.size) + 324] = 2
            idx = 0
            s = ceil32(return_data.size) + 128
            t = ceil32(return_data.size) + 356
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[ceil32(return_data.size) + 260] = this.address
            mem[ceil32(return_data.size) + 292] = block.timestamp
            require ext_code.size(address(arg2))
            call address(arg2).swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
               value msg.value - (msg.value / uint16(stor2.field_160)) wei
                 gas gas_remaining wei
                args 0, 128, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 356 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (2 * ceil32(return_data.size)) + 192
            require return_data.size >= 32
            _3948 = mem[ceil32(return_data.size) + 192 len 4], 0
            require mem[ceil32(return_data.size) + 192 len 4], 0 <= test266151307()
            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 223 < ceil32(return_data.size) + return_data.size + 192
            _3954 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]
            if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192] > test266151307():
                revert with 0, 65
            if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 193 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 1 < 0:
                revert with 0, 65
            mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 193
            mem[(2 * ceil32(return_data.size)) + 192] = _3954
            require return_data.size >= _3948 + (32 * _3954) + 32
            mem[(2 * ceil32(return_data.size)) + 224 len 32 * _3954] = mem[ceil32(return_data.size) + _3948 + 224 len 32 * _3954]
            if _3954 < 1:
                revert with 0, 17
            if _3954 - 1 >= _3954:
                revert with 0, 50
            require ext_code.size(address(arg3))
            call address(arg3).deposit(uint256 arg1) with:
                 gas gas_remaining wei
                args mem[(32 * _3954 - 1) + (2 * ceil32(return_data.size)) + 224]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(arg3))
            staticcall address(arg3).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _7960 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _7962 = mem[_7960]
            _7996 = mem[64]
            mem[mem[64] + 36] = address(arg4)
            mem[mem[64] + 68] = _7962
            _7998 = mem[64]
            mem[mem[64]] = 68
            mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
            mem[64] = mem[64] + 164
            mem[_7996 + 100] = 32
            mem[_7996 + 132] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(address(arg3)):
                revert with 0, 'Address: call to non-contract'
            _8092 = mem[_7998]
            mem[_7996 + 164 len ceil32(mem[_7998])] = mem[_7998 + 32 len ceil32(mem[_7998])]
            if ceil32(_8092) > _8092:
                mem[_8092 + _7996 + 164] = 0
            call address(arg3) with:
                 gas gas_remaining wei
                args mem[_7996 + 168 len _8092 - 4]
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0]:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require uint32(this.address), address(arg3) << 64 == bool(uint32(this.address), address(arg3) << 64)
                    if not uint32(this.address), address(arg3) << 64:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[_7996 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[_7996 + 196] == bool(mem[_7996 + 196])
                    if not mem[_7996 + 196]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[ceil32(return_data.size) + 96] = 3
            mem[ceil32(return_data.size) + 128] = stor1
            mem[0] = address(arg2)
            mem[32] = sha3(address(arg1), 3)
            mem[ceil32(return_data.size) + 160] = stor3[address(arg1)][address(arg2)]
            mem[ceil32(return_data.size) + 192] = address(arg1)
            mem[ceil32(return_data.size) + 224] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 228] = 0
            mem[ceil32(return_data.size) + 260] = 128
            mem[ceil32(return_data.size) + 356] = 3
            idx = 0
            s = ceil32(return_data.size) + 128
            t = ceil32(return_data.size) + 388
            while idx < 3:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[ceil32(return_data.size) + 292] = this.address
            mem[ceil32(return_data.size) + 324] = block.timestamp
            require ext_code.size(address(arg2))
            call address(arg2).swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
               value msg.value - (msg.value / uint16(stor2.field_160)) wei
                 gas gas_remaining wei
                args 0, 128, address(this.address), block.timestamp, 3, mem[ceil32(return_data.size) + 388 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (2 * ceil32(return_data.size)) + 224
            require return_data.size >= 32
            _3949 = mem[ceil32(return_data.size) + 224 len 4], 0
            require mem[ceil32(return_data.size) + 224 len 4], 0 <= test266151307()
            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 255 < ceil32(return_data.size) + return_data.size + 224
            _3955 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224]
            if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224] > test266151307():
                revert with 0, 65
            if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224]) + 225 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224]) + 1 < 0:
                revert with 0, 65
            mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224]) + 225
            mem[(2 * ceil32(return_data.size)) + 224] = _3955
            require return_data.size >= _3949 + (32 * _3955) + 32
            mem[(2 * ceil32(return_data.size)) + 256 len 32 * _3955] = mem[ceil32(return_data.size) + _3949 + 256 len 32 * _3955]
            if _3955 < 1:
                revert with 0, 17
            if _3955 - 1 >= _3955:
                revert with 0, 50
            require ext_code.size(address(arg3))
            call address(arg3).deposit(uint256 arg1) with:
                 gas gas_remaining wei
                args mem[(32 * _3955 - 1) + (2 * ceil32(return_data.size)) + 256]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(arg3))
            staticcall address(arg3).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _7961 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _7963 = mem[_7961]
            _7997 = mem[64]
            mem[mem[64] + 36] = address(arg4)
            mem[mem[64] + 68] = _7963
            _8000 = mem[64]
            mem[mem[64]] = 68
            mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
            mem[64] = mem[64] + 164
            mem[_7997 + 100] = 32
            mem[_7997 + 132] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(address(arg3)):
                revert with 0, 'Address: call to non-contract'
            _8094 = mem[_8000]
            mem[_7997 + 164 len ceil32(mem[_8000])] = mem[_8000 + 32 len ceil32(mem[_8000])]
            if ceil32(_8094) > _8094:
                mem[_8094 + _7997 + 164] = 0
            call address(arg3) with:
                 gas gas_remaining wei
                args mem[_7997 + 168 len _8094 - 4]
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0]:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require uint32(this.address), address(arg3) << 64 == bool(uint32(this.address), address(arg3) << 64)
                    if not uint32(this.address), address(arg3) << 64:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[_7997 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[_7997 + 196] == bool(mem[_7997 + 196])
                    if not mem[_7997 + 196]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 100] = this.address
        mem[ceil32(return_data.size) + 132] = address(arg3)
        require ext_code.size(address(arg1))
        staticcall address(arg1).0xdd62ed3e with:
                gas gas_remaining wei
               args this.address, address(arg3)
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
        mem[(2 * ceil32(return_data.size)) + 132] = address(arg3)
        mem[(2 * ceil32(return_data.size)) + 164] = -1
        mem[(2 * ceil32(return_data.size)) + 96] = 68
        mem[(2 * ceil32(return_data.size)) + 132 len 28] = address(arg3) << 64
        mem[(2 * ceil32(return_data.size)) + 128 len 4] = approve(address arg1, uint256 arg2)
        mem[(2 * ceil32(return_data.size)) + 196] = 32
        mem[(2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(address(arg1)):
            revert with 0, 'Address: call to non-contract'
        mem[(2 * ceil32(return_data.size)) + 260 len 96] = approve(address arg1, uint256 arg2), address(arg3) << 64, 0, -1, 0
        mem[(2 * ceil32(return_data.size)) + 328] = 0
        call address(arg1) with:
           funct Mask(32, 224, approve(address arg1, uint256 arg2), address(arg3) << 64, 0, -1, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, approve(address arg1, uint256 arg2), address(arg3) << 64, 0, -1, 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if not ext_call.return_data[0]:
                if not uint16(stor2.field_160):
                    revert with 0, 18
                if msg.value < msg.value / uint16(stor2.field_160):
                    revert with 0, 17
                mem[0] = address(arg2)
                mem[32] = sha3(address(arg1), 3)
                if not stor3[address(arg1)][address(arg2)]:
                    mem[(2 * ceil32(return_data.size)) + 260] = 2
                    mem[(2 * ceil32(return_data.size)) + 292] = stor1
                    mem[(2 * ceil32(return_data.size)) + 324] = address(arg1)
                    mem[(2 * ceil32(return_data.size)) + 356] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + 360] = 0
                    mem[(2 * ceil32(return_data.size)) + 392] = 128
                    mem[(2 * ceil32(return_data.size)) + 488] = 2
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + 292
                    t = (2 * ceil32(return_data.size)) + 520
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(2 * ceil32(return_data.size)) + 424] = this.address
                    mem[(2 * ceil32(return_data.size)) + 456] = block.timestamp
                    require ext_code.size(address(arg2))
                    call address(arg2).swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                       value msg.value - (msg.value / uint16(stor2.field_160)) wei
                         gas gas_remaining wei
                        args 0, 128, address(this.address), block.timestamp, 2, mem[(2 * ceil32(return_data.size)) + 520 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (4 * ceil32(return_data.size)) + 356
                    require return_data.size >= 32
                    _7916 = mem[(2 * ceil32(return_data.size)) + 356 len 4], 0
                    require mem[(2 * ceil32(return_data.size)) + 356 len 4], 0 <= test266151307()
                    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 356 len 4], 0 + 387 < (2 * ceil32(return_data.size)) + return_data.size + 356
                    _7934 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 356 len 4], 0 + 356]
                    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 356 len 4], 0 + 356] > test266151307():
                        revert with 0, 65
                    if (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 356 len 4], 0 + 356]) + 357 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 356 len 4], 0 + 356]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 356 len 4], 0 + 356]) + 357
                    mem[(4 * ceil32(return_data.size)) + 356] = _7934
                    require return_data.size >= _7916 + (32 * _7934) + 32
                    mem[(4 * ceil32(return_data.size)) + 388 len 32 * _7934] = mem[(2 * ceil32(return_data.size)) + _7916 + 388 len 32 * _7934]
                    if _7934 < 1:
                        revert with 0, 17
                    if _7934 - 1 >= _7934:
                        revert with 0, 50
                    require ext_code.size(address(arg3))
                    call address(arg3).deposit(uint256 arg1) with:
                         gas gas_remaining wei
                        args mem[(32 * _7934 - 1) + (4 * ceil32(return_data.size)) + 388]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(arg3))
                    staticcall address(arg3).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _11748 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _11780 = mem[_11748]
                    _11836 = mem[64]
                    mem[mem[64] + 36] = address(arg4)
                    mem[mem[64] + 68] = _11780
                    _11868 = mem[64]
                    mem[mem[64]] = 68
                    mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                    mem[64] = mem[64] + 164
                    mem[_11836 + 100] = 32
                    mem[_11836 + 132] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(address(arg3)):
                        revert with 0, 'Address: call to non-contract'
                    _12044 = mem[_11868]
                    mem[_11836 + 164 len ceil32(mem[_11868])] = mem[_11868 + 32 len ceil32(mem[_11868])]
                    if ceil32(_12044) > _12044:
                        mem[_12044 + _11836 + 164] = 0
                    call address(arg3) with:
                         gas gas_remaining wei
                        args mem[_11836 + 168 len _12044 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0]:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if ext_call.return_data[0]:
                            require ext_call.return_data[0] >= 32
                            require uint32(this.address), address(arg3) << 64 == bool(uint32(this.address), address(arg3) << 64)
                            if not uint32(this.address), address(arg3) << 64:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[_11836 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_11836 + 196] == bool(mem[_11836 + 196])
                            if not mem[_11836 + 196]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[(2 * ceil32(return_data.size)) + 260] = 3
                    mem[(2 * ceil32(return_data.size)) + 292] = stor1
                    mem[0] = address(arg2)
                    mem[32] = sha3(address(arg1), 3)
                    mem[(2 * ceil32(return_data.size)) + 324] = stor3[address(arg1)][address(arg2)]
                    mem[(2 * ceil32(return_data.size)) + 356] = address(arg1)
                    mem[(2 * ceil32(return_data.size)) + 388] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + 392] = 0
                    mem[(2 * ceil32(return_data.size)) + 424] = 128
                    mem[(2 * ceil32(return_data.size)) + 520] = 3
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + 292
                    t = (2 * ceil32(return_data.size)) + 552
                    while idx < 3:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(2 * ceil32(return_data.size)) + 456] = this.address
                    mem[(2 * ceil32(return_data.size)) + 488] = block.timestamp
                    require ext_code.size(address(arg2))
                    call address(arg2).swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                       value msg.value - (msg.value / uint16(stor2.field_160)) wei
                         gas gas_remaining wei
                        args 0, 128, address(this.address), block.timestamp, 3, mem[(2 * ceil32(return_data.size)) + 552 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + 388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (4 * ceil32(return_data.size)) + 388
                    require return_data.size >= 32
                    _7917 = mem[(2 * ceil32(return_data.size)) + 388 len 4], 0
                    require mem[(2 * ceil32(return_data.size)) + 388 len 4], 0 <= test266151307()
                    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], 0 + 419 < (2 * ceil32(return_data.size)) + return_data.size + 388
                    _7935 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], 0 + 388]
                    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], 0 + 388] > test266151307():
                        revert with 0, 65
                    if (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], 0 + 388]) + 389 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], 0 + 388]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], 0 + 388]) + 389
                    mem[(4 * ceil32(return_data.size)) + 388] = _7935
                    require return_data.size >= _7917 + (32 * _7935) + 32
                    mem[(4 * ceil32(return_data.size)) + 420 len 32 * _7935] = mem[(2 * ceil32(return_data.size)) + _7917 + 420 len 32 * _7935]
                    if _7935 < 1:
                        revert with 0, 17
                    if _7935 - 1 >= _7935:
                        revert with 0, 50
                    require ext_code.size(address(arg3))
                    call address(arg3).deposit(uint256 arg1) with:
                         gas gas_remaining wei
                        args mem[(32 * _7935 - 1) + (4 * ceil32(return_data.size)) + 420]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(arg3))
                    staticcall address(arg3).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _11749 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _11781 = mem[_11749]
                    _11837 = mem[64]
                    mem[mem[64] + 36] = address(arg4)
                    mem[mem[64] + 68] = _11781
                    _11870 = mem[64]
                    mem[mem[64]] = 68
                    mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                    mem[64] = mem[64] + 164
                    mem[_11837 + 100] = 32
                    mem[_11837 + 132] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(address(arg3)):
                        revert with 0, 'Address: call to non-contract'
                    _12046 = mem[_11870]
                    mem[_11837 + 164 len ceil32(mem[_11870])] = mem[_11870 + 32 len ceil32(mem[_11870])]
                    if ceil32(_12046) > _12046:
                        mem[_12046 + _11837 + 164] = 0
                    call address(arg3) with:
                         gas gas_remaining wei
                        args mem[_11837 + 168 len _12046 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0]:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if ext_call.return_data[0]:
                            require ext_call.return_data[0] >= 32
                            require uint32(this.address), address(arg3) << 64 == bool(uint32(this.address), address(arg3) << 64)
                            if not uint32(this.address), address(arg3) << 64:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[_11837 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_11837 + 196] == bool(mem[_11837 + 196])
                            if not mem[_11837 + 196]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                require ext_call.return_data[0] >= 32
                require uint32(this.address), address(arg3) << 64 == bool(uint32(this.address), address(arg3) << 64)
                if not uint32(this.address), address(arg3) << 64:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if not uint16(stor2.field_160):
                    revert with 0, 18
                if msg.value < msg.value / uint16(stor2.field_160):
                    revert with 0, 17
                mem[0] = address(arg2)
                mem[32] = sha3(address(arg1), 3)
                if not stor3[address(arg1)][address(arg2)]:
                    mem[(2 * ceil32(return_data.size)) + 260] = 2
                    mem[(2 * ceil32(return_data.size)) + 292] = stor1
                    mem[(2 * ceil32(return_data.size)) + 324] = address(arg1)
                    mem[(2 * ceil32(return_data.size)) + 356] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + 360] = 0
                    mem[(2 * ceil32(return_data.size)) + 392] = 128
                    mem[(2 * ceil32(return_data.size)) + 488] = 2
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + 292
                    t = (2 * ceil32(return_data.size)) + 520
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(2 * ceil32(return_data.size)) + 424] = this.address
                    mem[(2 * ceil32(return_data.size)) + 456] = block.timestamp
                    require ext_code.size(address(arg2))
                    call address(arg2).swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                       value msg.value - (msg.value / uint16(stor2.field_160)) wei
                         gas gas_remaining wei
                        args 0, 128, address(this.address), block.timestamp, 2, mem[(2 * ceil32(return_data.size)) + 520 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (4 * ceil32(return_data.size)) + 356
                    require return_data.size >= 32
                    _7918 = mem[(2 * ceil32(return_data.size)) + 356 len 4], 0
                    require mem[(2 * ceil32(return_data.size)) + 356 len 4], 0 <= test266151307()
                    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 356 len 4], 0 + 387 < (2 * ceil32(return_data.size)) + return_data.size + 356
                    _7936 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 356 len 4], 0 + 356]
                    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 356 len 4], 0 + 356] > test266151307():
                        revert with 0, 65
                    if (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 356 len 4], 0 + 356]) + 357 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 356 len 4], 0 + 356]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 356 len 4], 0 + 356]) + 357
                    mem[(4 * ceil32(return_data.size)) + 356] = _7936
                    require return_data.size >= _7918 + (32 * _7936) + 32
                    mem[(4 * ceil32(return_data.size)) + 388 len 32 * _7936] = mem[(2 * ceil32(return_data.size)) + _7918 + 388 len 32 * _7936]
                    if _7936 < 1:
                        revert with 0, 17
                    if _7936 - 1 >= _7936:
                        revert with 0, 50
                    require ext_code.size(address(arg3))
                    call address(arg3).deposit(uint256 arg1) with:
                         gas gas_remaining wei
                        args mem[(32 * _7936 - 1) + (4 * ceil32(return_data.size)) + 388]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(arg3))
                    staticcall address(arg3).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _11750 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _11782 = mem[_11750]
                    _11838 = mem[64]
                    mem[mem[64] + 36] = address(arg4)
                    mem[mem[64] + 68] = _11782
                    _11872 = mem[64]
                    mem[mem[64]] = 68
                    mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                    mem[64] = mem[64] + 164
                    mem[_11838 + 100] = 32
                    mem[_11838 + 132] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(address(arg3)):
                        revert with 0, 'Address: call to non-contract'
                    _12048 = mem[_11872]
                    mem[_11838 + 164 len ceil32(mem[_11872])] = mem[_11872 + 32 len ceil32(mem[_11872])]
                    if ceil32(_12048) > _12048:
                        mem[_12048 + _11838 + 164] = 0
                    call address(arg3) with:
                         gas gas_remaining wei
                        args mem[_11838 + 168 len _12048 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0]:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if ext_call.return_data[0]:
                            require ext_call.return_data[0] >= 32
                            require uint32(this.address), address(arg3) << 64 == bool(uint32(this.address), address(arg3) << 64)
                            if not uint32(this.address), address(arg3) << 64:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[_11838 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_11838 + 196] == bool(mem[_11838 + 196])
                            if not mem[_11838 + 196]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[(2 * ceil32(return_data.size)) + 260] = 3
                    mem[(2 * ceil32(return_data.size)) + 292] = stor1
                    mem[0] = address(arg2)
                    mem[32] = sha3(address(arg1), 3)
                    mem[(2 * ceil32(return_data.size)) + 324] = stor3[address(arg1)][address(arg2)]
                    mem[(2 * ceil32(return_data.size)) + 356] = address(arg1)
                    mem[(2 * ceil32(return_data.size)) + 388] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + 392] = 0
                    mem[(2 * ceil32(return_data.size)) + 424] = 128
                    mem[(2 * ceil32(return_data.size)) + 520] = 3
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + 292
                    t = (2 * ceil32(return_data.size)) + 552
                    while idx < 3:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(2 * ceil32(return_data.size)) + 456] = this.address
                    mem[(2 * ceil32(return_data.size)) + 488] = block.timestamp
                    require ext_code.size(address(arg2))
                    call address(arg2).swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                       value msg.value - (msg.value / uint16(stor2.field_160)) wei
                         gas gas_remaining wei
                        args 0, 128, address(this.address), block.timestamp, 3, mem[(2 * ceil32(return_data.size)) + 552 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + 388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (4 * ceil32(return_data.size)) + 388
                    require return_data.size >= 32
                    _7919 = mem[(2 * ceil32(return_data.size)) + 388 len 4], 0
                    require mem[(2 * ceil32(return_data.size)) + 388 len 4], 0 <= test266151307()
                    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], 0 + 419 < (2 * ceil32(return_data.size)) + return_data.size + 388
                    _7937 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], 0 + 388]
                    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], 0 + 388] > test266151307():
                        revert with 0, 65
                    if (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], 0 + 388]) + 389 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], 0 + 388]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], 0 + 388]) + 389
                    mem[(4 * ceil32(return_data.size)) + 388] = _7937
                    require return_data.size >= _7919 + (32 * _7937) + 32
                    mem[(4 * ceil32(return_data.size)) + 420 len 32 * _7937] = mem[(2 * ceil32(return_data.size)) + _7919 + 420 len 32 * _7937]
                    if _7937 < 1:
                        revert with 0, 17
                    if _7937 - 1 >= _7937:
                        revert with 0, 50
                    require ext_code.size(address(arg3))
                    call address(arg3).deposit(uint256 arg1) with:
                         gas gas_remaining wei
                        args mem[(32 * _7937 - 1) + (4 * ceil32(return_data.size)) + 420]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(arg3))
                    staticcall address(arg3).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _11751 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _11783 = mem[_11751]
                    _11839 = mem[64]
                    mem[mem[64] + 36] = address(arg4)
                    mem[mem[64] + 68] = _11783
                    _11874 = mem[64]
                    mem[mem[64]] = 68
                    mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                    mem[64] = mem[64] + 164
                    mem[_11839 + 100] = 32
                    mem[_11839 + 132] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(address(arg3)):
                        revert with 0, 'Address: call to non-contract'
                    _12050 = mem[_11874]
                    mem[_11839 + 164 len ceil32(mem[_11874])] = mem[_11874 + 32 len ceil32(mem[_11874])]
                    if ceil32(_12050) > _12050:
                        mem[_12050 + _11839 + 164] = 0
                    call address(arg3) with:
                         gas gas_remaining wei
                        args mem[_11839 + 168 len _12050 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0]:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if ext_call.return_data[0]:
                            require ext_call.return_data[0] >= 32
                            require uint32(this.address), address(arg3) << 64 == bool(uint32(this.address), address(arg3) << 64)
                            if not uint32(this.address), address(arg3) << 64:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[_11839 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_11839 + 196] == bool(mem[_11839 + 196])
                            if not mem[_11839 + 196]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[(2 * ceil32(return_data.size)) + 260] = return_data.size
            mem[(2 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if not return_data.size:
                if not uint16(stor2.field_160):
                    revert with 0, 18
                if msg.value < msg.value / uint16(stor2.field_160):
                    revert with 0, 17
                mem[0] = address(arg2)
                mem[32] = sha3(address(arg1), 3)
                if not stor3[address(arg1)][address(arg2)]:
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 2
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = stor1
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 325] = address(arg1)
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 0
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 128
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = 2
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293
                    t = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 521
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = this.address
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = block.timestamp
                    require ext_code.size(address(arg2))
                    call address(arg2).swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                       value msg.value - (msg.value / uint16(stor2.field_160)) wei
                         gas gas_remaining wei
                        args 0, 128, address(this.address), block.timestamp, 2, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 357
                    require return_data.size >= 32
                    _7920 = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], 0
                    require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], 0 <= test266151307()
                    require (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], 0 + 388 < (2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 357
                    _7938 = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], 0 + 357]
                    if mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], 0 + 357] > test266151307():
                        revert with 0, 65
                    if (4 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], 0 + 357]) + 358 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], 0 + 357]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], 0 + 357]) + 358
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 357] = _7938
                    require return_data.size >= _7920 + (32 * _7938) + 32
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 32 * _7938] = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + _7920 + 389 len 32 * _7938]
                    if _7938 < 1:
                        revert with 0, 17
                    if _7938 - 1 >= _7938:
                        revert with 0, 50
                    require ext_code.size(address(arg3))
                    call address(arg3).deposit(uint256 arg1) with:
                         gas gas_remaining wei
                        args mem[(32 * _7938 - 1) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 389]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(arg3))
                    staticcall address(arg3).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _11752 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _11784 = mem[_11752]
                    _11840 = mem[64]
                    mem[mem[64] + 36] = address(arg4)
                    mem[mem[64] + 68] = _11784
                    _11876 = mem[64]
                    mem[mem[64]] = 68
                    mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                    mem[64] = mem[64] + 164
                    mem[_11840 + 100] = 32
                    mem[_11840 + 132] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(address(arg3)):
                        revert with 0, 'Address: call to non-contract'
                    _12052 = mem[_11876]
                    mem[_11840 + 164 len ceil32(mem[_11876])] = mem[_11876 + 32 len ceil32(mem[_11876])]
                    if ceil32(_12052) > _12052:
                        mem[_12052 + _11840 + 164] = 0
                    call address(arg3) with:
                         gas gas_remaining wei
                        args mem[_11840 + 168 len _12052 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0]:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if ext_call.return_data[0]:
                            require ext_call.return_data[0] >= 32
                            require uint32(this.address), address(arg3) << 64 == bool(uint32(this.address), address(arg3) << 64)
                            if not uint32(this.address), address(arg3) << 64:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[_11840 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_11840 + 196] == bool(mem[_11840 + 196])
                            if not mem[_11840 + 196]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 3
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = stor1
                    mem[0] = address(arg2)
                    mem[32] = sha3(address(arg1), 3)
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 325] = stor3[address(arg1)][address(arg2)]
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357] = address(arg1)
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 0
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 128
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = 3
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293
                    t = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 553
                    while idx < 3:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = this.address
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = block.timestamp
                    require ext_code.size(address(arg2))
                    call address(arg2).swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                       value msg.value - (msg.value / uint16(stor2.field_160)) wei
                         gas gas_remaining wei
                        args 0, 128, address(this.address), block.timestamp, 3, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 553 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 389
                    require return_data.size >= 32
                    _7921 = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], 0
                    require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], 0 <= test266151307()
                    require (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], 0 + 420 < (2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 389
                    _7939 = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], 0 + 389]
                    if mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], 0 + 389] > test266151307():
                        revert with 0, 65
                    if (4 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], 0 + 389]) + 390 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], 0 + 389]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], 0 + 389]) + 390
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 389] = _7939
                    require return_data.size >= _7921 + (32 * _7939) + 32
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 421 len 32 * _7939] = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + _7921 + 421 len 32 * _7939]
                    if _7939 < 1:
                        revert with 0, 17
                    if _7939 - 1 >= _7939:
                        revert with 0, 50
                    require ext_code.size(address(arg3))
                    call address(arg3).deposit(uint256 arg1) with:
                         gas gas_remaining wei
                        args mem[(32 * _7939 - 1) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 421]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(arg3))
                    staticcall address(arg3).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _11753 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _11785 = mem[_11753]
                    _11841 = mem[64]
                    mem[mem[64] + 36] = address(arg4)
                    mem[mem[64] + 68] = _11785
                    _11878 = mem[64]
                    mem[mem[64]] = 68
                    mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                    mem[64] = mem[64] + 164
                    mem[_11841 + 100] = 32
                    mem[_11841 + 132] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(address(arg3)):
                        revert with 0, 'Address: call to non-contract'
                    _12054 = mem[_11878]
                    mem[_11841 + 164 len ceil32(mem[_11878])] = mem[_11878 + 32 len ceil32(mem[_11878])]
                    if ceil32(_12054) > _12054:
                        mem[_12054 + _11841 + 164] = 0
                    call address(arg3) with:
                         gas gas_remaining wei
                        args mem[_11841 + 168 len _12054 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0]:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if ext_call.return_data[0]:
                            require ext_call.return_data[0] >= 32
                            require uint32(this.address), address(arg3) << 64 == bool(uint32(this.address), address(arg3) << 64)
                            if not uint32(this.address), address(arg3) << 64:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[_11841 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_11841 + 196] == bool(mem[_11841 + 196])
                            if not mem[_11841 + 196]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                require return_data.size >= 32
                require mem[(2 * ceil32(return_data.size)) + 292] == bool(mem[(2 * ceil32(return_data.size)) + 292])
                if not mem[(2 * ceil32(return_data.size)) + 292]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if not uint16(stor2.field_160):
                    revert with 0, 18
                if msg.value < msg.value / uint16(stor2.field_160):
                    revert with 0, 17
                mem[0] = address(arg2)
                mem[32] = sha3(address(arg1), 3)
                if not stor3[address(arg1)][address(arg2)]:
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 2
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = stor1
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 325] = address(arg1)
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 0
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 128
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = 2
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293
                    t = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 521
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = this.address
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = block.timestamp
                    require ext_code.size(address(arg2))
                    call address(arg2).swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                       value msg.value - (msg.value / uint16(stor2.field_160)) wei
                         gas gas_remaining wei
                        args 0, 128, address(this.address), block.timestamp, 2, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 357
                    require return_data.size >= 32
                    _7922 = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], 0
                    require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], 0 <= test266151307()
                    require (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], 0 + 388 < (2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 357
                    _7940 = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], 0 + 357]
                    if mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], 0 + 357] > test266151307():
                        revert with 0, 65
                    if (4 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], 0 + 357]) + 358 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], 0 + 357]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], 0 + 357]) + 358
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 357] = _7940
                    require return_data.size >= _7922 + (32 * _7940) + 32
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 32 * _7940] = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + _7922 + 389 len 32 * _7940]
                    if _7940 < 1:
                        revert with 0, 17
                    if _7940 - 1 >= _7940:
                        revert with 0, 50
                    require ext_code.size(address(arg3))
                    call address(arg3).deposit(uint256 arg1) with:
                         gas gas_remaining wei
                        args mem[(32 * _7940 - 1) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 389]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(arg3))
                    staticcall address(arg3).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _11754 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _11786 = mem[_11754]
                    _11842 = mem[64]
                    mem[mem[64] + 36] = address(arg4)
                    mem[mem[64] + 68] = _11786
                    _11880 = mem[64]
                    mem[mem[64]] = 68
                    mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                    mem[64] = mem[64] + 164
                    mem[_11842 + 100] = 32
                    mem[_11842 + 132] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(address(arg3)):
                        revert with 0, 'Address: call to non-contract'
                    _12056 = mem[_11880]
                    mem[_11842 + 164 len ceil32(mem[_11880])] = mem[_11880 + 32 len ceil32(mem[_11880])]
                    if ceil32(_12056) > _12056:
                        mem[_12056 + _11842 + 164] = 0
                    call address(arg3) with:
                         gas gas_remaining wei
                        args mem[_11842 + 168 len _12056 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0]:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if ext_call.return_data[0]:
                            require ext_call.return_data[0] >= 32
                            require uint32(this.address), address(arg3) << 64 == bool(uint32(this.address), address(arg3) << 64)
                            if not uint32(this.address), address(arg3) << 64:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[_11842 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_11842 + 196] == bool(mem[_11842 + 196])
                            if not mem[_11842 + 196]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 3
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = stor1
                    mem[0] = address(arg2)
                    mem[32] = sha3(address(arg1), 3)
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 325] = stor3[address(arg1)][address(arg2)]
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357] = address(arg1)
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 0
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 128
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = 3
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293
                    t = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 553
                    while idx < 3:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = this.address
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = block.timestamp
                    require ext_code.size(address(arg2))
                    call address(arg2).swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                       value msg.value - (msg.value / uint16(stor2.field_160)) wei
                         gas gas_remaining wei
                        args 0, 128, address(this.address), block.timestamp, 3, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 553 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 389
                    require return_data.size >= 32
                    _7923 = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], 0
                    require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], 0 <= test266151307()
                    require (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], 0 + 420 < (2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 389
                    _7941 = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], 0 + 389]
                    if mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], 0 + 389] > test266151307():
                        revert with 0, 65
                    if (4 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], 0 + 389]) + 390 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], 0 + 389]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], 0 + 389]) + 390
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 389] = _7941
                    require return_data.size >= _7923 + (32 * _7941) + 32
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 421 len 32 * _7941] = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + _7923 + 421 len 32 * _7941]
                    if _7941 < 1:
                        revert with 0, 17
                    if _7941 - 1 >= _7941:
                        revert with 0, 50
                    require ext_code.size(address(arg3))
                    call address(arg3).deposit(uint256 arg1) with:
                         gas gas_remaining wei
                        args mem[(32 * _7941 - 1) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 421]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(arg3))
                    staticcall address(arg3).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _11755 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _11787 = mem[_11755]
                    _11843 = mem[64]
                    mem[mem[64] + 36] = address(arg4)
                    mem[mem[64] + 68] = _11787
                    _11882 = mem[64]
                    mem[mem[64]] = 68
                    mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                    mem[64] = mem[64] + 164
                    mem[_11843 + 100] = 32
                    mem[_11843 + 132] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(address(arg3)):
                        revert with 0, 'Address: call to non-contract'
                    _12058 = mem[_11882]
                    mem[_11843 + 164 len ceil32(mem[_11882])] = mem[_11882 + 32 len ceil32(mem[_11882])]
                    if ceil32(_12058) > _12058:
                        mem[_12058 + _11843 + 164] = 0
                    call address(arg3) with:
                         gas gas_remaining wei
                        args mem[_11843 + 168 len _12058 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0]:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if ext_call.return_data[0]:
                            require ext_call.return_data[0] >= 32
                            require uint32(this.address), address(arg3) << 64 == bool(uint32(this.address), address(arg3) << 64)
                            if not uint32(this.address), address(arg3) << 64:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[_11843 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_11843 + 196] == bool(mem[_11843 + 196])
                            if not mem[_11843 + 196]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    call address(stor2.field_0) with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'TransferHelper: ETH_TRANSFER_FAILED'
}

function sub_35e8b7d5(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require ext_code.size(address(arg1))
    staticcall address(arg1).token0() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(arg1))
    staticcall address(arg1).token1() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[0] = address(arg2)
    if stor1 == address(ext_call.return_data[0]):
        mem[32] = sha3(ext_call.return_data[12 len 20], 3)
        if not stor3[ext_call.return_data[12 len 20]][address(arg2)]:
            mem[(2 * ceil32(return_data.size)) + 96] = 2
            mem[(2 * ceil32(return_data.size)) + 128] = stor1
            mem[(2 * ceil32(return_data.size)) + 160] = address(ext_call.return_data[0])
            mem[(2 * ceil32(return_data.size)) + 192] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
            mem[(2 * ceil32(return_data.size)) + 196] = 0
            mem[(2 * ceil32(return_data.size)) + 228] = 128
            mem[(2 * ceil32(return_data.size)) + 324] = 2
            idx = 0
            s = (2 * ceil32(return_data.size)) + 128
            t = (2 * ceil32(return_data.size)) + 356
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(2 * ceil32(return_data.size)) + 260] = this.address
            mem[(2 * ceil32(return_data.size)) + 292] = block.timestamp
            require ext_code.size(address(arg2))
            call address(arg2).swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
               value msg.value / 2 wei
                 gas gas_remaining wei
                args 0, 128, address(this.address), block.timestamp, 2, mem[(2 * ceil32(return_data.size)) + 356 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (4 * ceil32(return_data.size)) + 192
            require return_data.size >= 32
            _6199 = mem[(2 * ceil32(return_data.size)) + 192 len 4], 0
            require mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 <= test266151307()
            require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 223 < (2 * ceil32(return_data.size)) + return_data.size + 192
            _6207 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]
            if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192] > test266151307():
                revert with 0, 65
            if (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 193 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 1 < 0:
                revert with 0, 65
            mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 193
            mem[(4 * ceil32(return_data.size)) + 192] = _6207
            require return_data.size >= _6199 + (32 * _6207) + 32
            mem[(4 * ceil32(return_data.size)) + 224 len 32 * _6207] = mem[(2 * ceil32(return_data.size)) + _6199 + 224 len 32 * _6207]
            if _6207 < 1:
                revert with 0, 17
            if _6207 - 1 >= _6207:
                revert with 0, 50
            _12353 = mem[(32 * _6207 - 1) + (4 * ceil32(return_data.size)) + 224]
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = address(arg2)
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                    gas gas_remaining wei
                   args this.address, address(arg2)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _12373 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if not mem[_12373]:
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = address(arg2)
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                        gas gas_remaining wei
                       args this.address, address(arg2)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _12427 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_12427]:
                    revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                _12463 = mem[64]
                mem[mem[64] + 36] = address(arg2)
                mem[mem[64] + 68] = -1
                _12487 = mem[64]
                mem[mem[64]] = 68
                mem[mem[64] + 32 len 4] = approve(address arg1, uint256 arg2)
                mem[64] = mem[64] + 164
                mem[_12463 + 100] = 32
                mem[_12463 + 132] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(address(ext_call.return_data[0])):
                    revert with 0, 'Address: call to non-contract'
                _12595 = mem[_12487]
                mem[_12463 + 164 len ceil32(mem[_12487])] = mem[_12487 + 32 len ceil32(mem[_12487])]
                if ceil32(_12595) > _12595:
                    mem[_12595 + _12463 + 164] = 0
                call address(ext_call.return_data[0]) with:
                     gas gas_remaining wei
                    args mem[_12463 + 168 len _12595 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[_12463 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[_12463 + 196] == bool(mem[_12463 + 196])
                        if not mem[_12463 + 196]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            if msg.value < msg.value / 2:
                revert with 0, 17
            require ext_code.size(address(arg2))
            if not stor4[address(arg2)]:
                call address(arg2).addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                   value msg.value - (msg.value / 2) wei
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), _12353, 0, 0, address(arg3), block.timestamp
            else:
                call address(arg2).addLiquidityFTM(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                   value msg.value - (msg.value / 2) wei
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), _12353, 0, 0, address(arg3), block.timestamp
        else:
            mem[(2 * ceil32(return_data.size)) + 96] = 3
            mem[(2 * ceil32(return_data.size)) + 128] = stor1
            mem[0] = address(arg2)
            mem[32] = sha3(address(ext_call.return_data[0]), 3)
            mem[(2 * ceil32(return_data.size)) + 160] = stor3[address(ext_call.return_data[0])][address(arg2)]
            mem[(2 * ceil32(return_data.size)) + 192] = address(ext_call.return_data[0])
            mem[(2 * ceil32(return_data.size)) + 224] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
            mem[(2 * ceil32(return_data.size)) + 228] = 0
            mem[(2 * ceil32(return_data.size)) + 260] = 128
            mem[(2 * ceil32(return_data.size)) + 356] = 3
            idx = 0
            s = (2 * ceil32(return_data.size)) + 128
            t = (2 * ceil32(return_data.size)) + 388
            while idx < 3:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(2 * ceil32(return_data.size)) + 292] = this.address
            mem[(2 * ceil32(return_data.size)) + 324] = block.timestamp
            require ext_code.size(address(arg2))
            call address(arg2).swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
               value msg.value / 2 wei
                 gas gas_remaining wei
                args 0, 128, address(this.address), block.timestamp, 3, mem[(2 * ceil32(return_data.size)) + 388 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(2 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (4 * ceil32(return_data.size)) + 224
            require return_data.size >= 32
            _6200 = mem[(2 * ceil32(return_data.size)) + 224 len 4], 0
            require mem[(2 * ceil32(return_data.size)) + 224 len 4], 0 <= test266151307()
            require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], 0 + 255 < (2 * ceil32(return_data.size)) + return_data.size + 224
            _6208 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], 0 + 224]
            if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], 0 + 224] > test266151307():
                revert with 0, 65
            if (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], 0 + 224]) + 225 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], 0 + 224]) + 1 < 0:
                revert with 0, 65
            mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], 0 + 224]) + 225
            mem[(4 * ceil32(return_data.size)) + 224] = _6208
            require return_data.size >= _6200 + (32 * _6208) + 32
            mem[(4 * ceil32(return_data.size)) + 256 len 32 * _6208] = mem[(2 * ceil32(return_data.size)) + _6200 + 256 len 32 * _6208]
            if _6208 < 1:
                revert with 0, 17
            if _6208 - 1 >= _6208:
                revert with 0, 50
            _12354 = mem[(32 * _6208 - 1) + (4 * ceil32(return_data.size)) + 256]
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = address(arg2)
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                    gas gas_remaining wei
                   args this.address, address(arg2)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _12374 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if not mem[_12374]:
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = address(arg2)
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                        gas gas_remaining wei
                       args this.address, address(arg2)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _12428 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_12428]:
                    revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                _12467 = mem[64]
                mem[mem[64] + 36] = address(arg2)
                mem[mem[64] + 68] = -1
                _12490 = mem[64]
                mem[mem[64]] = 68
                mem[mem[64] + 32 len 4] = approve(address arg1, uint256 arg2)
                mem[64] = mem[64] + 164
                mem[_12467 + 100] = 32
                mem[_12467 + 132] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(address(ext_call.return_data[0])):
                    revert with 0, 'Address: call to non-contract'
                _12597 = mem[_12490]
                mem[_12467 + 164 len ceil32(mem[_12490])] = mem[_12490 + 32 len ceil32(mem[_12490])]
                if ceil32(_12597) > _12597:
                    mem[_12597 + _12467 + 164] = 0
                call address(ext_call.return_data[0]) with:
                     gas gas_remaining wei
                    args mem[_12467 + 168 len _12597 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[_12467 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[_12467 + 196] == bool(mem[_12467 + 196])
                        if not mem[_12467 + 196]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            if msg.value < msg.value / 2:
                revert with 0, 17
            require ext_code.size(address(arg2))
            if not stor4[address(arg2)]:
                call address(arg2).addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                   value msg.value - (msg.value / 2) wei
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), _12354, 0, 0, address(arg3), block.timestamp
            else:
                call address(arg2).addLiquidityFTM(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                   value msg.value - (msg.value / 2) wei
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), _12354, 0, 0, address(arg3), block.timestamp
    else:
        if stor1 == ext_call.return_data[12 len 20]:
            if stor1 == address(ext_call.return_data[0]):
                mem[32] = sha3(ext_call.return_data[12 len 20], 3)
                if not stor3[ext_call.return_data[12 len 20]][address(arg2)]:
                    mem[(2 * ceil32(return_data.size)) + 96] = 2
                    mem[(2 * ceil32(return_data.size)) + 128] = stor1
                    mem[(2 * ceil32(return_data.size)) + 160] = address(ext_call.return_data[0])
                    mem[(2 * ceil32(return_data.size)) + 192] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + 196] = 0
                    mem[(2 * ceil32(return_data.size)) + 228] = 128
                    mem[(2 * ceil32(return_data.size)) + 324] = 2
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + 128
                    t = (2 * ceil32(return_data.size)) + 356
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(2 * ceil32(return_data.size)) + 260] = this.address
                    mem[(2 * ceil32(return_data.size)) + 292] = block.timestamp
                    require ext_code.size(address(arg2))
                    call address(arg2).swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                       value msg.value / 2 wei
                         gas gas_remaining wei
                        args 0, 128, address(this.address), block.timestamp, 2, mem[(2 * ceil32(return_data.size)) + 356 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (4 * ceil32(return_data.size)) + 192
                    require return_data.size >= 32
                    _6203 = mem[(2 * ceil32(return_data.size)) + 192 len 4], 0
                    require mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 <= test266151307()
                    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 223 < (2 * ceil32(return_data.size)) + return_data.size + 192
                    _6211 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]
                    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192] > test266151307():
                        revert with 0, 65
                    if (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 193 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 193
                    mem[(4 * ceil32(return_data.size)) + 192] = _6211
                    require return_data.size >= _6203 + (32 * _6211) + 32
                    mem[(4 * ceil32(return_data.size)) + 224 len 32 * _6211] = mem[(2 * ceil32(return_data.size)) + _6203 + 224 len 32 * _6211]
                    if _6211 < 1:
                        revert with 0, 17
                    if _6211 - 1 >= _6211:
                        revert with 0, 50
                    _12357 = mem[(32 * _6211 - 1) + (4 * ceil32(return_data.size)) + 224]
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = address(arg2)
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                            gas gas_remaining wei
                           args this.address, address(arg2)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _12375 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if not mem[_12375]:
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = address(arg2)
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                                gas gas_remaining wei
                               args this.address, address(arg2)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _12431 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_12431]:
                            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                        _12473 = mem[64]
                        mem[mem[64] + 36] = address(arg2)
                        mem[mem[64] + 68] = -1
                        _12495 = mem[64]
                        mem[mem[64]] = 68
                        mem[mem[64] + 32 len 4] = approve(address arg1, uint256 arg2)
                        mem[64] = mem[64] + 164
                        mem[_12473 + 100] = 32
                        mem[_12473 + 132] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(address(ext_call.return_data[0])):
                            revert with 0, 'Address: call to non-contract'
                        _12603 = mem[_12495]
                        mem[_12473 + 164 len ceil32(mem[_12495])] = mem[_12495 + 32 len ceil32(mem[_12495])]
                        if ceil32(_12603) > _12603:
                            mem[_12603 + _12473 + 164] = 0
                        call address(ext_call.return_data[0]) with:
                             gas gas_remaining wei
                            args mem[_12473 + 168 len _12603 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if ext_call.return_data[0]:
                                    revert with memory
                                      from 128
                                       len ext_call.return_data[0]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if ext_call.return_data[0]:
                                require ext_call.return_data[0] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[_12473 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_12473 + 196] == bool(mem[_12473 + 196])
                                if not mem[_12473 + 196]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    if msg.value < msg.value / 2:
                        revert with 0, 17
                    require ext_code.size(address(arg2))
                    if not stor4[address(arg2)]:
                        call address(arg2).addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                           value msg.value - (msg.value / 2) wei
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), _12357, 0, 0, address(arg3), block.timestamp
                    else:
                        call address(arg2).addLiquidityFTM(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                           value msg.value - (msg.value / 2) wei
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), _12357, 0, 0, address(arg3), block.timestamp
                else:
                    mem[(2 * ceil32(return_data.size)) + 96] = 3
                    mem[(2 * ceil32(return_data.size)) + 128] = stor1
                    mem[0] = address(arg2)
                    mem[32] = sha3(address(ext_call.return_data[0]), 3)
                    mem[(2 * ceil32(return_data.size)) + 160] = stor3[address(ext_call.return_data[0])][address(arg2)]
                    mem[(2 * ceil32(return_data.size)) + 192] = address(ext_call.return_data[0])
                    mem[(2 * ceil32(return_data.size)) + 224] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + 228] = 0
                    mem[(2 * ceil32(return_data.size)) + 260] = 128
                    mem[(2 * ceil32(return_data.size)) + 356] = 3
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + 128
                    t = (2 * ceil32(return_data.size)) + 388
                    while idx < 3:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(2 * ceil32(return_data.size)) + 292] = this.address
                    mem[(2 * ceil32(return_data.size)) + 324] = block.timestamp
                    require ext_code.size(address(arg2))
                    call address(arg2).swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                       value msg.value / 2 wei
                         gas gas_remaining wei
                        args 0, 128, address(this.address), block.timestamp, 3, mem[(2 * ceil32(return_data.size)) + 388 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (4 * ceil32(return_data.size)) + 224
                    require return_data.size >= 32
                    _6204 = mem[(2 * ceil32(return_data.size)) + 224 len 4], 0
                    require mem[(2 * ceil32(return_data.size)) + 224 len 4], 0 <= test266151307()
                    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], 0 + 255 < (2 * ceil32(return_data.size)) + return_data.size + 224
                    _6212 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], 0 + 224]
                    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], 0 + 224] > test266151307():
                        revert with 0, 65
                    if (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], 0 + 224]) + 225 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], 0 + 224]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], 0 + 224]) + 225
                    mem[(4 * ceil32(return_data.size)) + 224] = _6212
                    require return_data.size >= _6204 + (32 * _6212) + 32
                    mem[(4 * ceil32(return_data.size)) + 256 len 32 * _6212] = mem[(2 * ceil32(return_data.size)) + _6204 + 256 len 32 * _6212]
                    if _6212 < 1:
                        revert with 0, 17
                    if _6212 - 1 >= _6212:
                        revert with 0, 50
                    _12358 = mem[(32 * _6212 - 1) + (4 * ceil32(return_data.size)) + 256]
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = address(arg2)
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                            gas gas_remaining wei
                           args this.address, address(arg2)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _12376 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if not mem[_12376]:
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = address(arg2)
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                                gas gas_remaining wei
                               args this.address, address(arg2)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _12432 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_12432]:
                            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                        _12477 = mem[64]
                        mem[mem[64] + 36] = address(arg2)
                        mem[mem[64] + 68] = -1
                        _12498 = mem[64]
                        mem[mem[64]] = 68
                        mem[mem[64] + 32 len 4] = approve(address arg1, uint256 arg2)
                        mem[64] = mem[64] + 164
                        mem[_12477 + 100] = 32
                        mem[_12477 + 132] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(address(ext_call.return_data[0])):
                            revert with 0, 'Address: call to non-contract'
                        _12605 = mem[_12498]
                        mem[_12477 + 164 len ceil32(mem[_12498])] = mem[_12498 + 32 len ceil32(mem[_12498])]
                        if ceil32(_12605) > _12605:
                            mem[_12605 + _12477 + 164] = 0
                        call address(ext_call.return_data[0]) with:
                             gas gas_remaining wei
                            args mem[_12477 + 168 len _12605 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if ext_call.return_data[0]:
                                    revert with memory
                                      from 128
                                       len ext_call.return_data[0]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if ext_call.return_data[0]:
                                require ext_call.return_data[0] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[_12477 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_12477 + 196] == bool(mem[_12477 + 196])
                                if not mem[_12477 + 196]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    if msg.value < msg.value / 2:
                        revert with 0, 17
                    require ext_code.size(address(arg2))
                    if not stor4[address(arg2)]:
                        call address(arg2).addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                           value msg.value - (msg.value / 2) wei
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), _12358, 0, 0, address(arg3), block.timestamp
                    else:
                        call address(arg2).addLiquidityFTM(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                           value msg.value - (msg.value / 2) wei
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), _12358, 0, 0, address(arg3), block.timestamp
            else:
                mem[32] = sha3(address(ext_call.return_data[0]), 3)
                if not stor3[address(ext_call.return_data[0])][address(arg2)]:
                    mem[(2 * ceil32(return_data.size)) + 96] = 2
                    mem[(2 * ceil32(return_data.size)) + 128] = stor1
                    mem[(2 * ceil32(return_data.size)) + 160] = address(ext_call.return_data[0])
                    mem[(2 * ceil32(return_data.size)) + 192] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + 196] = 0
                    mem[(2 * ceil32(return_data.size)) + 228] = 128
                    mem[(2 * ceil32(return_data.size)) + 324] = 2
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + 128
                    t = (2 * ceil32(return_data.size)) + 356
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(2 * ceil32(return_data.size)) + 260] = this.address
                    mem[(2 * ceil32(return_data.size)) + 292] = block.timestamp
                    require ext_code.size(address(arg2))
                    call address(arg2).swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                       value msg.value / 2 wei
                         gas gas_remaining wei
                        args 0, 128, address(this.address), block.timestamp, 2, mem[(2 * ceil32(return_data.size)) + 356 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (4 * ceil32(return_data.size)) + 192
                    require return_data.size >= 32
                    _6205 = mem[(2 * ceil32(return_data.size)) + 192 len 4], 0
                    require mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 <= test266151307()
                    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 223 < (2 * ceil32(return_data.size)) + return_data.size + 192
                    _6213 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]
                    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192] > test266151307():
                        revert with 0, 65
                    if (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 193 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 193
                    mem[(4 * ceil32(return_data.size)) + 192] = _6213
                    require return_data.size >= _6205 + (32 * _6213) + 32
                    mem[(4 * ceil32(return_data.size)) + 224 len 32 * _6213] = mem[(2 * ceil32(return_data.size)) + _6205 + 224 len 32 * _6213]
                    if _6213 < 1:
                        revert with 0, 17
                    if _6213 - 1 >= _6213:
                        revert with 0, 50
                    _12359 = mem[(32 * _6213 - 1) + (4 * ceil32(return_data.size)) + 224]
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = address(arg2)
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                            gas gas_remaining wei
                           args this.address, address(arg2)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _12377 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if not mem[_12377]:
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = address(arg2)
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                                gas gas_remaining wei
                               args this.address, address(arg2)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _12433 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_12433]:
                            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                        _12481 = mem[64]
                        mem[mem[64] + 36] = address(arg2)
                        mem[mem[64] + 68] = -1
                        _12501 = mem[64]
                        mem[mem[64]] = 68
                        mem[mem[64] + 32 len 4] = approve(address arg1, uint256 arg2)
                        mem[64] = mem[64] + 164
                        mem[_12481 + 100] = 32
                        mem[_12481 + 132] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(address(ext_call.return_data[0])):
                            revert with 0, 'Address: call to non-contract'
                        _12607 = mem[_12501]
                        mem[_12481 + 164 len ceil32(mem[_12501])] = mem[_12501 + 32 len ceil32(mem[_12501])]
                        if ceil32(_12607) > _12607:
                            mem[_12607 + _12481 + 164] = 0
                        call address(ext_call.return_data[0]) with:
                             gas gas_remaining wei
                            args mem[_12481 + 168 len _12607 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if ext_call.return_data[0]:
                                    revert with memory
                                      from 128
                                       len ext_call.return_data[0]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if ext_call.return_data[0]:
                                require ext_call.return_data[0] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[_12481 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_12481 + 196] == bool(mem[_12481 + 196])
                                if not mem[_12481 + 196]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    if msg.value < msg.value / 2:
                        revert with 0, 17
                    require ext_code.size(address(arg2))
                    if not stor4[address(arg2)]:
                        call address(arg2).addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                           value msg.value - (msg.value / 2) wei
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), _12359, 0, 0, address(arg3), block.timestamp
                    else:
                        call address(arg2).addLiquidityFTM(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                           value msg.value - (msg.value / 2) wei
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), _12359, 0, 0, address(arg3), block.timestamp
                else:
                    mem[(2 * ceil32(return_data.size)) + 96] = 3
                    mem[(2 * ceil32(return_data.size)) + 128] = stor1
                    mem[0] = address(arg2)
                    mem[32] = sha3(address(ext_call.return_data[0]), 3)
                    mem[(2 * ceil32(return_data.size)) + 160] = stor3[address(ext_call.return_data[0])][address(arg2)]
                    mem[(2 * ceil32(return_data.size)) + 192] = address(ext_call.return_data[0])
                    mem[(2 * ceil32(return_data.size)) + 224] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + 228] = 0
                    mem[(2 * ceil32(return_data.size)) + 260] = 128
                    mem[(2 * ceil32(return_data.size)) + 356] = 3
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + 128
                    t = (2 * ceil32(return_data.size)) + 388
                    while idx < 3:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(2 * ceil32(return_data.size)) + 292] = this.address
                    mem[(2 * ceil32(return_data.size)) + 324] = block.timestamp
                    require ext_code.size(address(arg2))
                    call address(arg2).swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                       value msg.value / 2 wei
                         gas gas_remaining wei
                        args 0, 128, address(this.address), block.timestamp, 3, mem[(2 * ceil32(return_data.size)) + 388 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (4 * ceil32(return_data.size)) + 224
                    require return_data.size >= 32
                    _6206 = mem[(2 * ceil32(return_data.size)) + 224 len 4], 0
                    require mem[(2 * ceil32(return_data.size)) + 224 len 4], 0 <= test266151307()
                    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], 0 + 255 < (2 * ceil32(return_data.size)) + return_data.size + 224
                    _6214 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], 0 + 224]
                    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], 0 + 224] > test266151307():
                        revert with 0, 65
                    if (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], 0 + 224]) + 225 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], 0 + 224]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], 0 + 224]) + 225
                    mem[(4 * ceil32(return_data.size)) + 224] = _6214
                    require return_data.size >= _6206 + (32 * _6214) + 32
                    mem[(4 * ceil32(return_data.size)) + 256 len 32 * _6214] = mem[(2 * ceil32(return_data.size)) + _6206 + 256 len 32 * _6214]
                    if _6214 < 1:
                        revert with 0, 17
                    if _6214 - 1 >= _6214:
                        revert with 0, 50
                    _12360 = mem[(32 * _6214 - 1) + (4 * ceil32(return_data.size)) + 256]
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = address(arg2)
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                            gas gas_remaining wei
                           args this.address, address(arg2)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _12378 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if not mem[_12378]:
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = address(arg2)
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                                gas gas_remaining wei
                               args this.address, address(arg2)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _12434 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_12434]:
                            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                        _12485 = mem[64]
                        mem[mem[64] + 36] = address(arg2)
                        mem[mem[64] + 68] = -1
                        _12504 = mem[64]
                        mem[mem[64]] = 68
                        mem[mem[64] + 32 len 4] = approve(address arg1, uint256 arg2)
                        mem[64] = mem[64] + 164
                        mem[_12485 + 100] = 32
                        mem[_12485 + 132] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(address(ext_call.return_data[0])):
                            revert with 0, 'Address: call to non-contract'
                        _12609 = mem[_12504]
                        mem[_12485 + 164 len ceil32(mem[_12504])] = mem[_12504 + 32 len ceil32(mem[_12504])]
                        if ceil32(_12609) > _12609:
                            mem[_12609 + _12485 + 164] = 0
                        call address(ext_call.return_data[0]) with:
                             gas gas_remaining wei
                            args mem[_12485 + 168 len _12609 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if ext_call.return_data[0]:
                                    revert with memory
                                      from 128
                                       len ext_call.return_data[0]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if ext_call.return_data[0]:
                                require ext_call.return_data[0] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[_12485 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_12485 + 196] == bool(mem[_12485 + 196])
                                if not mem[_12485 + 196]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    if msg.value < msg.value / 2:
                        revert with 0, 17
                    require ext_code.size(address(arg2))
                    if not stor4[address(arg2)]:
                        call address(arg2).addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                           value msg.value - (msg.value / 2) wei
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), _12360, 0, 0, address(arg3), block.timestamp
                    else:
                        call address(arg2).addLiquidityFTM(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                           value msg.value - (msg.value / 2) wei
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), _12360, 0, 0, address(arg3), block.timestamp
        else:
            mem[32] = sha3(address(ext_call.return_data[0]), 3)
            if not stor3[address(ext_call.return_data[0])][address(arg2)]:
                mem[(2 * ceil32(return_data.size)) + 96] = 2
                mem[(2 * ceil32(return_data.size)) + 128] = stor1
                mem[(2 * ceil32(return_data.size)) + 160] = address(ext_call.return_data[0])
                mem[(2 * ceil32(return_data.size)) + 192] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(return_data.size)) + 196] = 0
                mem[(2 * ceil32(return_data.size)) + 228] = 128
                mem[(2 * ceil32(return_data.size)) + 324] = 2
                idx = 0
                s = (2 * ceil32(return_data.size)) + 128
                t = (2 * ceil32(return_data.size)) + 356
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(2 * ceil32(return_data.size)) + 260] = this.address
                mem[(2 * ceil32(return_data.size)) + 292] = block.timestamp
                require ext_code.size(address(arg2))
                call address(arg2).swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                   value msg.value / 2 wei
                     gas gas_remaining wei
                    args 0, 128, address(this.address), block.timestamp, 2, mem[(2 * ceil32(return_data.size)) + 356 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (4 * ceil32(return_data.size)) + 192
                require return_data.size >= 32
                _6201 = mem[(2 * ceil32(return_data.size)) + 192 len 4], 0
                require mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 <= test266151307()
                require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 223 < (2 * ceil32(return_data.size)) + return_data.size + 192
                _6209 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]
                if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192] > test266151307():
                    revert with 0, 65
                if (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 193 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 1 < 0:
                    revert with 0, 65
                mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 193
                mem[(4 * ceil32(return_data.size)) + 192] = _6209
                require return_data.size >= _6201 + (32 * _6209) + 32
                mem[(4 * ceil32(return_data.size)) + 224 len 32 * _6209] = mem[(2 * ceil32(return_data.size)) + _6201 + 224 len 32 * _6209]
                if _6209 < 1:
                    revert with 0, 17
                if _6209 - 1 >= _6209:
                    revert with 0, 50
                _12355 = mem[(32 * _6209 - 1) + (4 * ceil32(return_data.size)) + 224]
                if msg.value < msg.value / 2:
                    revert with 0, 17
                mem[0] = address(arg2)
                mem[32] = sha3(address(ext_call.return_data[0]), 3)
                if not stor3[address(ext_call.return_data[0])][address(arg2)]:
                    _12389 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    if not mem[_12389]:
                        revert with 0, 50
                    mem[_12389 + 32] = stor1
                    if 1 >= mem[_12389]:
                        revert with 0, 50
                    mem[_12389 + 64] = address(ext_call.return_data[0])
                    mem[_12389 + 96] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                    mem[_12389 + 100] = 0
                    mem[_12389 + 132] = 128
                    mem[_12389 + 228] = mem[_12389]
                    idx = 0
                    s = _12389 + 32
                    t = _12389 + 260
                    while idx < mem[_12389]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_12389 + 164] = this.address
                    mem[_12389 + 196] = block.timestamp
                    require ext_code.size(address(arg2))
                    call address(arg2).mem[mem[64] len 4] with:
                       value msg.value - (msg.value / 2) wei
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _12389 + (32 * mem[_12389]) + -mem[64] + 256]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _18465 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _18477 = mem[_18465]
                    require mem[_18465] <= test266151307()
                    require _18465 + mem[_18465] + 31 < _18465 + return_data.size
                    _18521 = mem[_18465 + mem[_18465]]
                    if mem[_18465 + mem[_18465]] > test266151307():
                        revert with 0, 65
                    if _18465 + ceil32(return_data.size) + ceil32(32 * mem[_18465 + mem[_18465]]) + 1 > test266151307() or ceil32(32 * mem[_18465 + mem[_18465]]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = _18465 + ceil32(return_data.size) + ceil32(32 * mem[_18465 + mem[_18465]]) + 1
                    mem[_18465 + ceil32(return_data.size)] = _18521
                    require return_data.size >= _18477 + (32 * _18521) + 32
                    mem[_18465 + ceil32(return_data.size) + 32 len 32 * _18521] = mem[_18465 + _18477 + 32 len 32 * _18521]
                    if _18521 < 1:
                        revert with 0, 17
                    if _18521 - 1 >= _18521:
                        revert with 0, 50
                    _24365 = mem[(32 * _18521 - 1) + _18465 + ceil32(return_data.size) + 32]
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = address(arg2)
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                            gas gas_remaining wei
                           args this.address, address(arg2)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _24377 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = address(arg2)
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                            gas gas_remaining wei
                           args this.address, address(arg2)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if mem[_24377]:
                        _24401 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if not mem[_24401]:
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = address(arg2)
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args this.address, address(arg2)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _24457 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_24457]:
                                revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                            _24505 = mem[64]
                            mem[mem[64] + 36] = address(arg2)
                            mem[mem[64] + 68] = -1
                            _24513 = mem[64]
                            mem[mem[64]] = 68
                            mem[mem[64] + 32 len 4] = approve(address arg1, uint256 arg2)
                            mem[64] = mem[64] + 164
                            mem[_24505 + 100] = 32
                            mem[_24505 + 132] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(address(ext_call.return_data[0])):
                                revert with 0, 'Address: call to non-contract'
                            _24565 = mem[_24513]
                            mem[_24505 + 164 len ceil32(mem[_24513])] = mem[_24513 + 32 len ceil32(mem[_24513])]
                            if ceil32(_24565) > _24565:
                                mem[_24565 + _24505 + 164] = 0
                            call address(ext_call.return_data[0]) with:
                                 gas gas_remaining wei
                                args mem[_24505 + 168 len _24565 - 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96]:
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if mem[96]:
                                    require mem[96] >= 32
                                    require mem[128] == bool(mem[128])
                                    if not mem[128]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                mem[_24505 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[_24505 + 196] == bool(mem[_24505 + 196])
                                    if not mem[_24505 + 196]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        require ext_code.size(address(arg2))
                        call address(arg2).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), address(ext_call.return_data[0]), _12355, _24365, 0, 0, address(arg3), block.timestamp
                    else:
                        _24402 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_24402]:
                            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                        _24418 = mem[64]
                        mem[mem[64] + 36] = address(arg2)
                        mem[mem[64] + 68] = -1
                        _24431 = mem[64]
                        mem[mem[64]] = 68
                        mem[mem[64] + 32 len 4] = approve(address arg1, uint256 arg2)
                        mem[64] = mem[64] + 164
                        mem[_24418 + 100] = 32
                        mem[_24418 + 132] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(address(ext_call.return_data[0])):
                            revert with 0, 'Address: call to non-contract'
                        _24497 = mem[_24431]
                        mem[_24418 + 164 len ceil32(mem[_24431])] = mem[_24431 + 32 len ceil32(mem[_24431])]
                        if ceil32(_24497) > _24497:
                            mem[_24497 + _24418 + 164] = 0
                        call address(ext_call.return_data[0]) with:
                             gas gas_remaining wei
                            args mem[_24418 + 168 len _24497 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            mem[_24418 + 168] = this.address
                            mem[_24418 + 200] = address(arg2)
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args this.address, address(arg2)
                            mem[_24418 + 164] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                mem[_24418 + ceil32(return_data.size) + 168] = this.address
                                mem[_24418 + ceil32(return_data.size) + 200] = address(arg2)
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                                        gas gas_remaining wei
                                       args this.address, address(arg2)
                                mem[_24418 + ceil32(return_data.size) + 164] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                                mem[_24418 + (2 * ceil32(return_data.size)) + 200] = address(arg2)
                                mem[_24418 + (2 * ceil32(return_data.size)) + 232] = -1
                                mem[_24418 + (2 * ceil32(return_data.size)) + 164] = 68
                                mem[_24418 + (2 * ceil32(return_data.size)) + 196 len 4] = approve(address arg1, uint256 arg2)
                                mem[_24418 + (2 * ceil32(return_data.size)) + 264] = 32
                                mem[_24418 + (2 * ceil32(return_data.size)) + 296] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 'Address: insufficient balance for call'
                                if not ext_code.size(address(ext_call.return_data[0])):
                                    revert with 0, 'Address: call to non-contract'
                                mem[_24418 + (2 * ceil32(return_data.size)) + 328 len 96] = 0, address(arg2), -1, 0
                                mem[_24418 + (2 * ceil32(return_data.size)) + 396] = 0
                                call address(ext_call.return_data[0]) with:
                                   funct Mask(32, 224, 0, address(arg2), -1, 0) >> 224
                                     gas gas_remaining wei
                                    args (Mask(512, -288, 0, address(arg2), -1, 0) << 288)
                                if not return_data.size:
                                    if not ext_call.success:
                                        if mem[96]:
                                            revert with memory
                                              from 128
                                               len mem[96]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if mem[96]:
                                        require mem[96] >= 32
                                        require mem[128] == bool(mem[128])
                                        if not mem[128]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                else:
                                    mem[_24418 + (2 * ceil32(return_data.size)) + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        require mem[_24418 + (2 * ceil32(return_data.size)) + 360] == bool(mem[_24418 + (2 * ceil32(return_data.size)) + 360])
                                        if not mem[_24418 + (2 * ceil32(return_data.size)) + 360]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            require ext_code.size(address(arg2))
                            call address(arg2).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), address(ext_call.return_data[0]), _12355, _24365, 0, 0, address(arg3), block.timestamp
                        else:
                            mem[_24418 + 164] = return_data.size
                            mem[_24418 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_24418 + 196] == bool(mem[_24418 + 196])
                                if not mem[_24418 + 196]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            mem[_24418 + ceil32(return_data.size) + 169] = this.address
                            mem[_24418 + ceil32(return_data.size) + 201] = address(arg2)
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args this.address, address(arg2)
                            mem[_24418 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                require ext_code.size(address(arg2))
                                call address(arg2).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                                     gas gas_remaining wei
                                    args address(ext_call.return_data[0]), address(ext_call.return_data[0]), _12355, _24365, 0, 0, address(arg3), block.timestamp
                            else:
                                mem[_24418 + ceil32(return_data.size) + ceil32(return_data.size) + 169] = this.address
                                mem[_24418 + ceil32(return_data.size) + ceil32(return_data.size) + 201] = address(arg2)
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                                        gas gas_remaining wei
                                       args this.address, address(arg2)
                                mem[_24418 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                                mem[_24418 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 201] = address(arg2)
                                mem[_24418 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 233] = -1
                                mem[_24418 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 165] = 68
                                mem[_24418 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 197 len 4] = approve(address arg1, uint256 arg2)
                                mem[_24418 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 265] = 32
                                mem[_24418 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 297] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 'Address: insufficient balance for call'
                                if not ext_code.size(address(ext_call.return_data[0])):
                                    revert with 0, 'Address: call to non-contract'
                                mem[_24418 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 329 len 96] = 0, address(arg2), -1, 0
                                mem[_24418 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 397] = 0
                                call address(ext_call.return_data[0]) with:
                                   funct Mask(32, 224, 0, address(arg2), -1, 0) >> 224
                                     gas gas_remaining wei
                                    args (Mask(512, -288, 0, address(arg2), -1, 0) << 288)
                                if not return_data.size:
                                    if not ext_call.success:
                                        if mem[96]:
                                            revert with memory
                                              from 128
                                               len mem[96]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if mem[96]:
                                        require mem[96] >= 32
                                        require mem[128] == bool(mem[128])
                                        if not mem[128]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    require ext_code.size(address(arg2))
                                    call address(arg2).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                                         gas gas_remaining wei
                                        args address(ext_call.return_data[0]), address(ext_call.return_data[0]), _12355, _24365, 0, 0, address(arg3), block.timestamp
                                else:
                                    mem[_24418 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 329] = return_data.size
                                    mem[_24418 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_24418 + (4 * ceil32(return_data.size)) + 330] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_24418 + (4 * ceil32(return_data.size)) + 334] = 32
                                        mem[_24418 + (4 * ceil32(return_data.size)) + 366] = 32
                                        mem[_24418 + (4 * ceil32(return_data.size)) + 398] = 'SafeERC20: low-level call failed'
                                        revert with memory
                                          from _24418 + (4 * ceil32(return_data.size)) + 330
                                           len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
                                    if return_data.size:
                                        require return_data.size >= 32
                                        require mem[_24418 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 361] == bool(mem[_24418 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 361])
                                        if not mem[_24418 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 361]:
                                            mem[_24418 + (4 * ceil32(return_data.size)) + 330] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_24418 + (4 * ceil32(return_data.size)) + 334] = 32
                                            mem[_24418 + (4 * ceil32(return_data.size)) + 366] = 42
                                            mem[_24418 + (4 * ceil32(return_data.size)) + 398] = 'SafeERC20: ERC20 operation did n'
                                            mem[_24418 + (4 * ceil32(return_data.size)) + 430] = 0x6f74207375636365656400000000000000000000000000000000000000000000
                                            revert with memory
                                              from _24418 + (4 * ceil32(return_data.size)) + 330
                                               len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
                                    mem[_24418 + (4 * ceil32(return_data.size)) + 334] = address(ext_call.return_data[0])
                                    mem[_24418 + (4 * ceil32(return_data.size)) + 366] = address(ext_call.return_data[0])
                                    mem[_24418 + (4 * ceil32(return_data.size)) + 398] = _12355
                                    mem[_24418 + (4 * ceil32(return_data.size)) + 430] = _24365
                                    mem[_24418 + (4 * ceil32(return_data.size)) + 462] = 0
                                    mem[_24418 + (4 * ceil32(return_data.size)) + 494] = 0
                                    mem[_24418 + (4 * ceil32(return_data.size)) + 526] = address(arg3)
                                    mem[_24418 + (4 * ceil32(return_data.size)) + 558] = block.timestamp
                                    require ext_code.size(address(arg2))
                                    call address(arg2).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                                         gas gas_remaining wei
                                        args mem[_24418 + (4 * ceil32(return_data.size)) + 334 len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 256]
                else:
                    _12391 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    if not mem[_12391]:
                        revert with 0, 50
                    mem[_12391 + 32] = stor1
                    mem[0] = address(arg2)
                    mem[32] = sha3(address(ext_call.return_data[0]), 3)
                    if 1 >= mem[_12391]:
                        revert with 0, 50
                    mem[_12391 + 64] = stor3[address(ext_call.return_data[0])][address(arg2)]
                    if 2 >= mem[_12391]:
                        revert with 0, 50
                    mem[_12391 + 96] = address(ext_call.return_data[0])
                    mem[_12391 + 128] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                    mem[_12391 + 132] = 0
                    mem[_12391 + 164] = 128
                    mem[_12391 + 260] = mem[_12391]
                    idx = 0
                    s = _12391 + 32
                    t = _12391 + 292
                    while idx < mem[_12391]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_12391 + 196] = this.address
                    mem[_12391 + 228] = block.timestamp
                    require ext_code.size(address(arg2))
                    call address(arg2).mem[mem[64] len 4] with:
                       value msg.value - (msg.value / 2) wei
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _12391 + (32 * mem[_12391]) + -mem[64] + 288]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _18466 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _18478 = mem[_18466]
                    require mem[_18466] <= test266151307()
                    require _18466 + mem[_18466] + 31 < _18466 + return_data.size
                    _18522 = mem[_18466 + mem[_18466]]
                    if mem[_18466 + mem[_18466]] > test266151307():
                        revert with 0, 65
                    if _18466 + ceil32(return_data.size) + ceil32(32 * mem[_18466 + mem[_18466]]) + 1 > test266151307() or ceil32(32 * mem[_18466 + mem[_18466]]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = _18466 + ceil32(return_data.size) + ceil32(32 * mem[_18466 + mem[_18466]]) + 1
                    mem[_18466 + ceil32(return_data.size)] = _18522
                    require return_data.size >= _18478 + (32 * _18522) + 32
                    mem[_18466 + ceil32(return_data.size) + 32 len 32 * _18522] = mem[_18466 + _18478 + 32 len 32 * _18522]
                    if _18522 < 1:
                        revert with 0, 17
                    if _18522 - 1 >= _18522:
                        revert with 0, 50
                    _24366 = mem[(32 * _18522 - 1) + _18466 + ceil32(return_data.size) + 32]
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = address(arg2)
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                            gas gas_remaining wei
                           args this.address, address(arg2)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _24378 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = address(arg2)
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                            gas gas_remaining wei
                           args this.address, address(arg2)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if mem[_24378]:
                        _24403 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if not mem[_24403]:
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = address(arg2)
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args this.address, address(arg2)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _24458 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_24458]:
                                revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                            _24507 = mem[64]
                            mem[mem[64] + 36] = address(arg2)
                            mem[mem[64] + 68] = -1
                            _24516 = mem[64]
                            mem[mem[64]] = 68
                            mem[mem[64] + 32 len 4] = approve(address arg1, uint256 arg2)
                            mem[64] = mem[64] + 164
                            mem[_24507 + 100] = 32
                            mem[_24507 + 132] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(address(ext_call.return_data[0])):
                                revert with 0, 'Address: call to non-contract'
                            _24567 = mem[_24516]
                            mem[_24507 + 164 len ceil32(mem[_24516])] = mem[_24516 + 32 len ceil32(mem[_24516])]
                            if ceil32(_24567) > _24567:
                                mem[_24567 + _24507 + 164] = 0
                            call address(ext_call.return_data[0]) with:
                                 gas gas_remaining wei
                                args mem[_24507 + 168 len _24567 - 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96]:
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if mem[96]:
                                    require mem[96] >= 32
                                    require mem[128] == bool(mem[128])
                                    if not mem[128]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                mem[_24507 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[_24507 + 196] == bool(mem[_24507 + 196])
                                    if not mem[_24507 + 196]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        require ext_code.size(address(arg2))
                        call address(arg2).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), address(ext_call.return_data[0]), _12355, _24366, 0, 0, address(arg3), block.timestamp
                    else:
                        _24404 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_24404]:
                            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                        _24421 = mem[64]
                        mem[mem[64] + 36] = address(arg2)
                        mem[mem[64] + 68] = -1
                        _24436 = mem[64]
                        mem[mem[64]] = 68
                        mem[mem[64] + 32 len 4] = approve(address arg1, uint256 arg2)
                        mem[64] = mem[64] + 164
                        mem[_24421 + 100] = 32
                        mem[_24421 + 132] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(address(ext_call.return_data[0])):
                            revert with 0, 'Address: call to non-contract'
                        _24499 = mem[_24436]
                        mem[_24421 + 164 len ceil32(mem[_24436])] = mem[_24436 + 32 len ceil32(mem[_24436])]
                        if ceil32(_24499) > _24499:
                            mem[_24499 + _24421 + 164] = 0
                        call address(ext_call.return_data[0]) with:
                             gas gas_remaining wei
                            args mem[_24421 + 168 len _24499 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            mem[_24421 + 168] = this.address
                            mem[_24421 + 200] = address(arg2)
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args this.address, address(arg2)
                            mem[_24421 + 164] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                mem[_24421 + ceil32(return_data.size) + 168] = this.address
                                mem[_24421 + ceil32(return_data.size) + 200] = address(arg2)
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                                        gas gas_remaining wei
                                       args this.address, address(arg2)
                                mem[_24421 + ceil32(return_data.size) + 164] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                                mem[_24421 + (2 * ceil32(return_data.size)) + 200] = address(arg2)
                                mem[_24421 + (2 * ceil32(return_data.size)) + 232] = -1
                                mem[_24421 + (2 * ceil32(return_data.size)) + 164] = 68
                                mem[_24421 + (2 * ceil32(return_data.size)) + 196 len 4] = approve(address arg1, uint256 arg2)
                                mem[_24421 + (2 * ceil32(return_data.size)) + 264] = 32
                                mem[_24421 + (2 * ceil32(return_data.size)) + 296] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 'Address: insufficient balance for call'
                                if not ext_code.size(address(ext_call.return_data[0])):
                                    revert with 0, 'Address: call to non-contract'
                                mem[_24421 + (2 * ceil32(return_data.size)) + 328 len 96] = 0, address(arg2), -1, 0
                                mem[_24421 + (2 * ceil32(return_data.size)) + 396] = 0
                                call address(ext_call.return_data[0]) with:
                                   funct Mask(32, 224, 0, address(arg2), -1, 0) >> 224
                                     gas gas_remaining wei
                                    args (Mask(512, -288, 0, address(arg2), -1, 0) << 288)
                                if not return_data.size:
                                    if not ext_call.success:
                                        if mem[96]:
                                            revert with memory
                                              from 128
                                               len mem[96]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if mem[96]:
                                        require mem[96] >= 32
                                        require mem[128] == bool(mem[128])
                                        if not mem[128]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                else:
                                    mem[_24421 + (2 * ceil32(return_data.size)) + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        require mem[_24421 + (2 * ceil32(return_data.size)) + 360] == bool(mem[_24421 + (2 * ceil32(return_data.size)) + 360])
                                        if not mem[_24421 + (2 * ceil32(return_data.size)) + 360]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            require ext_code.size(address(arg2))
                            call address(arg2).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), address(ext_call.return_data[0]), _12355, _24366, 0, 0, address(arg3), block.timestamp
                        else:
                            mem[_24421 + 164] = return_data.size
                            mem[_24421 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_24421 + 196] == bool(mem[_24421 + 196])
                                if not mem[_24421 + 196]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            mem[_24421 + ceil32(return_data.size) + 169] = this.address
                            mem[_24421 + ceil32(return_data.size) + 201] = address(arg2)
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args this.address, address(arg2)
                            mem[_24421 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                require ext_code.size(address(arg2))
                                call address(arg2).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                                     gas gas_remaining wei
                                    args address(ext_call.return_data[0]), address(ext_call.return_data[0]), _12355, _24366, 0, 0, address(arg3), block.timestamp
                            else:
                                mem[_24421 + ceil32(return_data.size) + ceil32(return_data.size) + 169] = this.address
                                mem[_24421 + ceil32(return_data.size) + ceil32(return_data.size) + 201] = address(arg2)
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                                        gas gas_remaining wei
                                       args this.address, address(arg2)
                                mem[_24421 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                                mem[_24421 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 201] = address(arg2)
                                mem[_24421 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 233] = -1
                                mem[_24421 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 165] = 68
                                mem[_24421 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 197 len 4] = approve(address arg1, uint256 arg2)
                                mem[_24421 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 265] = 32
                                mem[_24421 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 297] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 'Address: insufficient balance for call'
                                if not ext_code.size(address(ext_call.return_data[0])):
                                    revert with 0, 'Address: call to non-contract'
                                mem[_24421 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 329 len 96] = 0, address(arg2), -1, 0
                                mem[_24421 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 397] = 0
                                call address(ext_call.return_data[0]) with:
                                   funct Mask(32, 224, 0, address(arg2), -1, 0) >> 224
                                     gas gas_remaining wei
                                    args (Mask(512, -288, 0, address(arg2), -1, 0) << 288)
                                if not return_data.size:
                                    if not ext_call.success:
                                        if mem[96]:
                                            revert with memory
                                              from 128
                                               len mem[96]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if mem[96]:
                                        require mem[96] >= 32
                                        require mem[128] == bool(mem[128])
                                        if not mem[128]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    require ext_code.size(address(arg2))
                                    call address(arg2).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                                         gas gas_remaining wei
                                        args address(ext_call.return_data[0]), address(ext_call.return_data[0]), _12355, _24366, 0, 0, address(arg3), block.timestamp
                                else:
                                    mem[_24421 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 329] = return_data.size
                                    mem[_24421 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_24421 + (4 * ceil32(return_data.size)) + 330] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_24421 + (4 * ceil32(return_data.size)) + 334] = 32
                                        mem[_24421 + (4 * ceil32(return_data.size)) + 366] = 32
                                        mem[_24421 + (4 * ceil32(return_data.size)) + 398] = 'SafeERC20: low-level call failed'
                                        revert with memory
                                          from _24421 + (4 * ceil32(return_data.size)) + 330
                                           len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
                                    if return_data.size:
                                        require return_data.size >= 32
                                        require mem[_24421 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 361] == bool(mem[_24421 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 361])
                                        if not mem[_24421 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 361]:
                                            mem[_24421 + (4 * ceil32(return_data.size)) + 330] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_24421 + (4 * ceil32(return_data.size)) + 334] = 32
                                            mem[_24421 + (4 * ceil32(return_data.size)) + 366] = 42
                                            mem[_24421 + (4 * ceil32(return_data.size)) + 398] = 'SafeERC20: ERC20 operation did n'
                                            mem[_24421 + (4 * ceil32(return_data.size)) + 430] = 0x6f74207375636365656400000000000000000000000000000000000000000000
                                            revert with memory
                                              from _24421 + (4 * ceil32(return_data.size)) + 330
                                               len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
                                    mem[_24421 + (4 * ceil32(return_data.size)) + 334] = address(ext_call.return_data[0])
                                    mem[_24421 + (4 * ceil32(return_data.size)) + 366] = address(ext_call.return_data[0])
                                    mem[_24421 + (4 * ceil32(return_data.size)) + 398] = _12355
                                    mem[_24421 + (4 * ceil32(return_data.size)) + 430] = _24366
                                    mem[_24421 + (4 * ceil32(return_data.size)) + 462] = 0
                                    mem[_24421 + (4 * ceil32(return_data.size)) + 494] = 0
                                    mem[_24421 + (4 * ceil32(return_data.size)) + 526] = address(arg3)
                                    mem[_24421 + (4 * ceil32(return_data.size)) + 558] = block.timestamp
                                    require ext_code.size(address(arg2))
                                    call address(arg2).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                                         gas gas_remaining wei
                                        args mem[_24421 + (4 * ceil32(return_data.size)) + 334 len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 256]
            else:
                mem[(2 * ceil32(return_data.size)) + 96] = 3
                mem[(2 * ceil32(return_data.size)) + 128] = stor1
                mem[0] = address(arg2)
                mem[32] = sha3(address(ext_call.return_data[0]), 3)
                mem[(2 * ceil32(return_data.size)) + 160] = stor3[address(ext_call.return_data[0])][address(arg2)]
                mem[(2 * ceil32(return_data.size)) + 192] = address(ext_call.return_data[0])
                mem[(2 * ceil32(return_data.size)) + 224] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(return_data.size)) + 228] = 0
                mem[(2 * ceil32(return_data.size)) + 260] = 128
                mem[(2 * ceil32(return_data.size)) + 356] = 3
                idx = 0
                s = (2 * ceil32(return_data.size)) + 128
                t = (2 * ceil32(return_data.size)) + 388
                while idx < 3:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(2 * ceil32(return_data.size)) + 292] = this.address
                mem[(2 * ceil32(return_data.size)) + 324] = block.timestamp
                require ext_code.size(address(arg2))
                call address(arg2).swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                   value msg.value / 2 wei
                     gas gas_remaining wei
                    args 0, 128, address(this.address), block.timestamp, 3, mem[(2 * ceil32(return_data.size)) + 388 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(2 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (4 * ceil32(return_data.size)) + 224
                require return_data.size >= 32
                _6202 = mem[(2 * ceil32(return_data.size)) + 224 len 4], 0
                require mem[(2 * ceil32(return_data.size)) + 224 len 4], 0 <= test266151307()
                require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], 0 + 255 < (2 * ceil32(return_data.size)) + return_data.size + 224
                _6210 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], 0 + 224]
                if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], 0 + 224] > test266151307():
                    revert with 0, 65
                if (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], 0 + 224]) + 225 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], 0 + 224]) + 1 < 0:
                    revert with 0, 65
                mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], 0 + 224]) + 225
                mem[(4 * ceil32(return_data.size)) + 224] = _6210
                require return_data.size >= _6202 + (32 * _6210) + 32
                mem[(4 * ceil32(return_data.size)) + 256 len 32 * _6210] = mem[(2 * ceil32(return_data.size)) + _6202 + 256 len 32 * _6210]
                if _6210 < 1:
                    revert with 0, 17
                if _6210 - 1 >= _6210:
                    revert with 0, 50
                _12356 = mem[(32 * _6210 - 1) + (4 * ceil32(return_data.size)) + 256]
                if msg.value < msg.value / 2:
                    revert with 0, 17
                mem[0] = address(arg2)
                mem[32] = sha3(address(ext_call.return_data[0]), 3)
                if not stor3[address(ext_call.return_data[0])][address(arg2)]:
                    _12393 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    if not mem[_12393]:
                        revert with 0, 50
                    mem[_12393 + 32] = stor1
                    if 1 >= mem[_12393]:
                        revert with 0, 50
                    mem[_12393 + 64] = address(ext_call.return_data[0])
                    mem[_12393 + 96] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                    mem[_12393 + 100] = 0
                    mem[_12393 + 132] = 128
                    mem[_12393 + 228] = mem[_12393]
                    idx = 0
                    s = _12393 + 32
                    t = _12393 + 260
                    while idx < mem[_12393]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_12393 + 164] = this.address
                    mem[_12393 + 196] = block.timestamp
                    require ext_code.size(address(arg2))
                    call address(arg2).mem[mem[64] len 4] with:
                       value msg.value - (msg.value / 2) wei
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _12393 + (32 * mem[_12393]) + -mem[64] + 256]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _18467 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _18479 = mem[_18467]
                    require mem[_18467] <= test266151307()
                    require _18467 + mem[_18467] + 31 < _18467 + return_data.size
                    _18523 = mem[_18467 + mem[_18467]]
                    if mem[_18467 + mem[_18467]] > test266151307():
                        revert with 0, 65
                    if _18467 + ceil32(return_data.size) + ceil32(32 * mem[_18467 + mem[_18467]]) + 1 > test266151307() or ceil32(32 * mem[_18467 + mem[_18467]]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = _18467 + ceil32(return_data.size) + ceil32(32 * mem[_18467 + mem[_18467]]) + 1
                    mem[_18467 + ceil32(return_data.size)] = _18523
                    require return_data.size >= _18479 + (32 * _18523) + 32
                    mem[_18467 + ceil32(return_data.size) + 32 len 32 * _18523] = mem[_18467 + _18479 + 32 len 32 * _18523]
                    if _18523 < 1:
                        revert with 0, 17
                    if _18523 - 1 >= _18523:
                        revert with 0, 50
                    _24367 = mem[(32 * _18523 - 1) + _18467 + ceil32(return_data.size) + 32]
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = address(arg2)
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                            gas gas_remaining wei
                           args this.address, address(arg2)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _24379 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = address(arg2)
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                            gas gas_remaining wei
                           args this.address, address(arg2)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if mem[_24379]:
                        _24405 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if not mem[_24405]:
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = address(arg2)
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args this.address, address(arg2)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _24459 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_24459]:
                                revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                            _24509 = mem[64]
                            mem[mem[64] + 36] = address(arg2)
                            mem[mem[64] + 68] = -1
                            _24519 = mem[64]
                            mem[mem[64]] = 68
                            mem[mem[64] + 32 len 4] = approve(address arg1, uint256 arg2)
                            mem[64] = mem[64] + 164
                            mem[_24509 + 100] = 32
                            mem[_24509 + 132] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(address(ext_call.return_data[0])):
                                revert with 0, 'Address: call to non-contract'
                            _24569 = mem[_24519]
                            mem[_24509 + 164 len ceil32(mem[_24519])] = mem[_24519 + 32 len ceil32(mem[_24519])]
                            if ceil32(_24569) > _24569:
                                mem[_24569 + _24509 + 164] = 0
                            call address(ext_call.return_data[0]) with:
                                 gas gas_remaining wei
                                args mem[_24509 + 168 len _24569 - 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96]:
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if mem[96]:
                                    require mem[96] >= 32
                                    require mem[128] == bool(mem[128])
                                    if not mem[128]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                mem[_24509 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[_24509 + 196] == bool(mem[_24509 + 196])
                                    if not mem[_24509 + 196]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        require ext_code.size(address(arg2))
                        call address(arg2).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), address(ext_call.return_data[0]), _12356, _24367, 0, 0, address(arg3), block.timestamp
                    else:
                        _24406 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_24406]:
                            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                        _24424 = mem[64]
                        mem[mem[64] + 36] = address(arg2)
                        mem[mem[64] + 68] = -1
                        _24441 = mem[64]
                        mem[mem[64]] = 68
                        mem[mem[64] + 32 len 4] = approve(address arg1, uint256 arg2)
                        mem[64] = mem[64] + 164
                        mem[_24424 + 100] = 32
                        mem[_24424 + 132] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(address(ext_call.return_data[0])):
                            revert with 0, 'Address: call to non-contract'
                        _24501 = mem[_24441]
                        mem[_24424 + 164 len ceil32(mem[_24441])] = mem[_24441 + 32 len ceil32(mem[_24441])]
                        if ceil32(_24501) > _24501:
                            mem[_24501 + _24424 + 164] = 0
                        call address(ext_call.return_data[0]) with:
                             gas gas_remaining wei
                            args mem[_24424 + 168 len _24501 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            mem[_24424 + 168] = this.address
                            mem[_24424 + 200] = address(arg2)
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args this.address, address(arg2)
                            mem[_24424 + 164] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                mem[_24424 + ceil32(return_data.size) + 168] = this.address
                                mem[_24424 + ceil32(return_data.size) + 200] = address(arg2)
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                                        gas gas_remaining wei
                                       args this.address, address(arg2)
                                mem[_24424 + ceil32(return_data.size) + 164] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                                mem[_24424 + (2 * ceil32(return_data.size)) + 200] = address(arg2)
                                mem[_24424 + (2 * ceil32(return_data.size)) + 232] = -1
                                mem[_24424 + (2 * ceil32(return_data.size)) + 164] = 68
                                mem[_24424 + (2 * ceil32(return_data.size)) + 196 len 4] = approve(address arg1, uint256 arg2)
                                mem[_24424 + (2 * ceil32(return_data.size)) + 264] = 32
                                mem[_24424 + (2 * ceil32(return_data.size)) + 296] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 'Address: insufficient balance for call'
                                if not ext_code.size(address(ext_call.return_data[0])):
                                    revert with 0, 'Address: call to non-contract'
                                mem[_24424 + (2 * ceil32(return_data.size)) + 328 len 96] = 0, address(arg2), -1, 0
                                mem[_24424 + (2 * ceil32(return_data.size)) + 396] = 0
                                call address(ext_call.return_data[0]) with:
                                   funct Mask(32, 224, 0, address(arg2), -1, 0) >> 224
                                     gas gas_remaining wei
                                    args (Mask(512, -288, 0, address(arg2), -1, 0) << 288)
                                if not return_data.size:
                                    if not ext_call.success:
                                        if mem[96]:
                                            revert with memory
                                              from 128
                                               len mem[96]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if mem[96]:
                                        require mem[96] >= 32
                                        require mem[128] == bool(mem[128])
                                        if not mem[128]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                else:
                                    mem[_24424 + (2 * ceil32(return_data.size)) + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        require mem[_24424 + (2 * ceil32(return_data.size)) + 360] == bool(mem[_24424 + (2 * ceil32(return_data.size)) + 360])
                                        if not mem[_24424 + (2 * ceil32(return_data.size)) + 360]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            require ext_code.size(address(arg2))
                            call address(arg2).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), address(ext_call.return_data[0]), _12356, _24367, 0, 0, address(arg3), block.timestamp
                        else:
                            mem[_24424 + 164] = return_data.size
                            mem[_24424 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_24424 + 196] == bool(mem[_24424 + 196])
                                if not mem[_24424 + 196]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            mem[_24424 + ceil32(return_data.size) + 169] = this.address
                            mem[_24424 + ceil32(return_data.size) + 201] = address(arg2)
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args this.address, address(arg2)
                            mem[_24424 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                require ext_code.size(address(arg2))
                                call address(arg2).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                                     gas gas_remaining wei
                                    args address(ext_call.return_data[0]), address(ext_call.return_data[0]), _12356, _24367, 0, 0, address(arg3), block.timestamp
                            else:
                                mem[_24424 + ceil32(return_data.size) + ceil32(return_data.size) + 169] = this.address
                                mem[_24424 + ceil32(return_data.size) + ceil32(return_data.size) + 201] = address(arg2)
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                                        gas gas_remaining wei
                                       args this.address, address(arg2)
                                mem[_24424 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                                mem[_24424 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 201] = address(arg2)
                                mem[_24424 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 233] = -1
                                mem[_24424 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 165] = 68
                                mem[_24424 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 197 len 4] = approve(address arg1, uint256 arg2)
                                mem[_24424 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 265] = 32
                                mem[_24424 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 297] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 'Address: insufficient balance for call'
                                if not ext_code.size(address(ext_call.return_data[0])):
                                    revert with 0, 'Address: call to non-contract'
                                mem[_24424 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 329 len 96] = 0, address(arg2), -1, 0
                                mem[_24424 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 397] = 0
                                call address(ext_call.return_data[0]) with:
                                   funct Mask(32, 224, 0, address(arg2), -1, 0) >> 224
                                     gas gas_remaining wei
                                    args (Mask(512, -288, 0, address(arg2), -1, 0) << 288)
                                if not return_data.size:
                                    if not ext_call.success:
                                        if mem[96]:
                                            revert with memory
                                              from 128
                                               len mem[96]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if mem[96]:
                                        require mem[96] >= 32
                                        require mem[128] == bool(mem[128])
                                        if not mem[128]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    require ext_code.size(address(arg2))
                                    call address(arg2).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                                         gas gas_remaining wei
                                        args address(ext_call.return_data[0]), address(ext_call.return_data[0]), _12356, _24367, 0, 0, address(arg3), block.timestamp
                                else:
                                    mem[_24424 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 329] = return_data.size
                                    mem[_24424 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_24424 + (4 * ceil32(return_data.size)) + 330] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_24424 + (4 * ceil32(return_data.size)) + 334] = 32
                                        mem[_24424 + (4 * ceil32(return_data.size)) + 366] = 32
                                        mem[_24424 + (4 * ceil32(return_data.size)) + 398] = 'SafeERC20: low-level call failed'
                                        revert with memory
                                          from _24424 + (4 * ceil32(return_data.size)) + 330
                                           len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
                                    if return_data.size:
                                        require return_data.size >= 32
                                        require mem[_24424 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 361] == bool(mem[_24424 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 361])
                                        if not mem[_24424 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 361]:
                                            mem[_24424 + (4 * ceil32(return_data.size)) + 330] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_24424 + (4 * ceil32(return_data.size)) + 334] = 32
                                            mem[_24424 + (4 * ceil32(return_data.size)) + 366] = 42
                                            mem[_24424 + (4 * ceil32(return_data.size)) + 398] = 'SafeERC20: ERC20 operation did n'
                                            mem[_24424 + (4 * ceil32(return_data.size)) + 430] = 0x6f74207375636365656400000000000000000000000000000000000000000000
                                            revert with memory
                                              from _24424 + (4 * ceil32(return_data.size)) + 330
                                               len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
                                    mem[_24424 + (4 * ceil32(return_data.size)) + 334] = address(ext_call.return_data[0])
                                    mem[_24424 + (4 * ceil32(return_data.size)) + 366] = address(ext_call.return_data[0])
                                    mem[_24424 + (4 * ceil32(return_data.size)) + 398] = _12356
                                    mem[_24424 + (4 * ceil32(return_data.size)) + 430] = _24367
                                    mem[_24424 + (4 * ceil32(return_data.size)) + 462] = 0
                                    mem[_24424 + (4 * ceil32(return_data.size)) + 494] = 0
                                    mem[_24424 + (4 * ceil32(return_data.size)) + 526] = address(arg3)
                                    mem[_24424 + (4 * ceil32(return_data.size)) + 558] = block.timestamp
                                    require ext_code.size(address(arg2))
                                    call address(arg2).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                                         gas gas_remaining wei
                                        args mem[_24424 + (4 * ceil32(return_data.size)) + 334 len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 256]
                else:
                    _12395 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    if not mem[_12395]:
                        revert with 0, 50
                    mem[_12395 + 32] = stor1
                    mem[0] = address(arg2)
                    mem[32] = sha3(address(ext_call.return_data[0]), 3)
                    if 1 >= mem[_12395]:
                        revert with 0, 50
                    mem[_12395 + 64] = stor3[address(ext_call.return_data[0])][address(arg2)]
                    if 2 >= mem[_12395]:
                        revert with 0, 50
                    mem[_12395 + 96] = address(ext_call.return_data[0])
                    mem[_12395 + 128] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                    mem[_12395 + 132] = 0
                    mem[_12395 + 164] = 128
                    mem[_12395 + 260] = mem[_12395]
                    idx = 0
                    s = _12395 + 32
                    t = _12395 + 292
                    while idx < mem[_12395]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_12395 + 196] = this.address
                    mem[_12395 + 228] = block.timestamp
                    require ext_code.size(address(arg2))
                    call address(arg2).mem[mem[64] len 4] with:
                       value msg.value - (msg.value / 2) wei
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _12395 + (32 * mem[_12395]) + -mem[64] + 288]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _18468 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _18480 = mem[_18468]
                    require mem[_18468] <= test266151307()
                    require _18468 + mem[_18468] + 31 < _18468 + return_data.size
                    _18524 = mem[_18468 + mem[_18468]]
                    if mem[_18468 + mem[_18468]] > test266151307():
                        revert with 0, 65
                    if _18468 + ceil32(return_data.size) + ceil32(32 * mem[_18468 + mem[_18468]]) + 1 > test266151307() or ceil32(32 * mem[_18468 + mem[_18468]]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = _18468 + ceil32(return_data.size) + ceil32(32 * mem[_18468 + mem[_18468]]) + 1
                    mem[_18468 + ceil32(return_data.size)] = _18524
                    require return_data.size >= _18480 + (32 * _18524) + 32
                    mem[_18468 + ceil32(return_data.size) + 32 len 32 * _18524] = mem[_18468 + _18480 + 32 len 32 * _18524]
                    if _18524 < 1:
                        revert with 0, 17
                    if _18524 - 1 >= _18524:
                        revert with 0, 50
                    _24368 = mem[(32 * _18524 - 1) + _18468 + ceil32(return_data.size) + 32]
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = address(arg2)
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                            gas gas_remaining wei
                           args this.address, address(arg2)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _24380 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = address(arg2)
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                            gas gas_remaining wei
                           args this.address, address(arg2)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if mem[_24380]:
                        _24407 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if not mem[_24407]:
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = address(arg2)
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args this.address, address(arg2)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _24460 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_24460]:
                                revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                            _24511 = mem[64]
                            mem[mem[64] + 36] = address(arg2)
                            mem[mem[64] + 68] = -1
                            _24522 = mem[64]
                            mem[mem[64]] = 68
                            mem[mem[64] + 32 len 4] = approve(address arg1, uint256 arg2)
                            mem[64] = mem[64] + 164
                            mem[_24511 + 100] = 32
                            mem[_24511 + 132] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(address(ext_call.return_data[0])):
                                revert with 0, 'Address: call to non-contract'
                            _24571 = mem[_24522]
                            mem[_24511 + 164 len ceil32(mem[_24522])] = mem[_24522 + 32 len ceil32(mem[_24522])]
                            if ceil32(_24571) > _24571:
                                mem[_24571 + _24511 + 164] = 0
                            call address(ext_call.return_data[0]) with:
                                 gas gas_remaining wei
                                args mem[_24511 + 168 len _24571 - 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96]:
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if mem[96]:
                                    require mem[96] >= 32
                                    require mem[128] == bool(mem[128])
                                    if not mem[128]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                mem[_24511 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[_24511 + 196] == bool(mem[_24511 + 196])
                                    if not mem[_24511 + 196]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        require ext_code.size(address(arg2))
                        call address(arg2).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), address(ext_call.return_data[0]), _12356, _24368, 0, 0, address(arg3), block.timestamp
                    else:
                        _24408 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_24408]:
                            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                        _24427 = mem[64]
                        mem[mem[64] + 36] = address(arg2)
                        mem[mem[64] + 68] = -1
                        _24446 = mem[64]
                        mem[mem[64]] = 68
                        mem[mem[64] + 32 len 4] = approve(address arg1, uint256 arg2)
                        mem[64] = mem[64] + 164
                        mem[_24427 + 100] = 32
                        mem[_24427 + 132] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(address(ext_call.return_data[0])):
                            revert with 0, 'Address: call to non-contract'
                        _24503 = mem[_24446]
                        mem[_24427 + 164 len ceil32(mem[_24446])] = mem[_24446 + 32 len ceil32(mem[_24446])]
                        if ceil32(_24503) > _24503:
                            mem[_24503 + _24427 + 164] = 0
                        call address(ext_call.return_data[0]) with:
                             gas gas_remaining wei
                            args mem[_24427 + 168 len _24503 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            mem[_24427 + 168] = this.address
                            mem[_24427 + 200] = address(arg2)
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args this.address, address(arg2)
                            mem[_24427 + 164] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                mem[_24427 + ceil32(return_data.size) + 168] = this.address
                                mem[_24427 + ceil32(return_data.size) + 200] = address(arg2)
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                                        gas gas_remaining wei
                                       args this.address, address(arg2)
                                mem[_24427 + ceil32(return_data.size) + 164] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                                mem[_24427 + (2 * ceil32(return_data.size)) + 200] = address(arg2)
                                mem[_24427 + (2 * ceil32(return_data.size)) + 232] = -1
                                mem[_24427 + (2 * ceil32(return_data.size)) + 164] = 68
                                mem[_24427 + (2 * ceil32(return_data.size)) + 196 len 4] = approve(address arg1, uint256 arg2)
                                mem[_24427 + (2 * ceil32(return_data.size)) + 264] = 32
                                mem[_24427 + (2 * ceil32(return_data.size)) + 296] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 'Address: insufficient balance for call'
                                if not ext_code.size(address(ext_call.return_data[0])):
                                    revert with 0, 'Address: call to non-contract'
                                mem[_24427 + (2 * ceil32(return_data.size)) + 328 len 96] = 0, address(arg2), -1, 0
                                mem[_24427 + (2 * ceil32(return_data.size)) + 396] = 0
                                call address(ext_call.return_data[0]) with:
                                   funct Mask(32, 224, 0, address(arg2), -1, 0) >> 224
                                     gas gas_remaining wei
                                    args (Mask(512, -288, 0, address(arg2), -1, 0) << 288)
                                if not return_data.size:
                                    if not ext_call.success:
                                        if mem[96]:
                                            revert with memory
                                              from 128
                                               len mem[96]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if mem[96]:
                                        require mem[96] >= 32
                                        require mem[128] == bool(mem[128])
                                        if not mem[128]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                else:
                                    mem[_24427 + (2 * ceil32(return_data.size)) + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        require mem[_24427 + (2 * ceil32(return_data.size)) + 360] == bool(mem[_24427 + (2 * ceil32(return_data.size)) + 360])
                                        if not mem[_24427 + (2 * ceil32(return_data.size)) + 360]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            require ext_code.size(address(arg2))
                            call address(arg2).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), address(ext_call.return_data[0]), _12356, _24368, 0, 0, address(arg3), block.timestamp
                        else:
                            mem[_24427 + 164] = return_data.size
                            mem[_24427 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_24427 + 196] == bool(mem[_24427 + 196])
                                if not mem[_24427 + 196]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            mem[_24427 + ceil32(return_data.size) + 169] = this.address
                            mem[_24427 + ceil32(return_data.size) + 201] = address(arg2)
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args this.address, address(arg2)
                            mem[_24427 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                require ext_code.size(address(arg2))
                                call address(arg2).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                                     gas gas_remaining wei
                                    args address(ext_call.return_data[0]), address(ext_call.return_data[0]), _12356, _24368, 0, 0, address(arg3), block.timestamp
                            else:
                                mem[_24427 + ceil32(return_data.size) + ceil32(return_data.size) + 169] = this.address
                                mem[_24427 + ceil32(return_data.size) + ceil32(return_data.size) + 201] = address(arg2)
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                                        gas gas_remaining wei
                                       args this.address, address(arg2)
                                mem[_24427 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                                mem[_24427 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 201] = address(arg2)
                                mem[_24427 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 233] = -1
                                mem[_24427 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 165] = 68
                                mem[_24427 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 197 len 4] = approve(address arg1, uint256 arg2)
                                mem[_24427 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 265] = 32
                                mem[_24427 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 297] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 'Address: insufficient balance for call'
                                if not ext_code.size(address(ext_call.return_data[0])):
                                    revert with 0, 'Address: call to non-contract'
                                mem[_24427 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 329 len 96] = 0, address(arg2), -1, 0
                                mem[_24427 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 397] = 0
                                call address(ext_call.return_data[0]) with:
                                   funct Mask(32, 224, 0, address(arg2), -1, 0) >> 224
                                     gas gas_remaining wei
                                    args (Mask(512, -288, 0, address(arg2), -1, 0) << 288)
                                if not return_data.size:
                                    if not ext_call.success:
                                        if mem[96]:
                                            revert with memory
                                              from 128
                                               len mem[96]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if mem[96]:
                                        require mem[96] >= 32
                                        require mem[128] == bool(mem[128])
                                        if not mem[128]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    require ext_code.size(address(arg2))
                                    call address(arg2).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                                         gas gas_remaining wei
                                        args address(ext_call.return_data[0]), address(ext_call.return_data[0]), _12356, _24368, 0, 0, address(arg3), block.timestamp
                                else:
                                    mem[_24427 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 329] = return_data.size
                                    mem[_24427 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_24427 + (4 * ceil32(return_data.size)) + 330] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_24427 + (4 * ceil32(return_data.size)) + 334] = 32
                                        mem[_24427 + (4 * ceil32(return_data.size)) + 366] = 32
                                        mem[_24427 + (4 * ceil32(return_data.size)) + 398] = 'SafeERC20: low-level call failed'
                                        revert with memory
                                          from _24427 + (4 * ceil32(return_data.size)) + 330
                                           len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
                                    if return_data.size:
                                        require return_data.size >= 32
                                        require mem[_24427 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 361] == bool(mem[_24427 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 361])
                                        if not mem[_24427 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 361]:
                                            mem[_24427 + (4 * ceil32(return_data.size)) + 330] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_24427 + (4 * ceil32(return_data.size)) + 334] = 32
                                            mem[_24427 + (4 * ceil32(return_data.size)) + 366] = 42
                                            mem[_24427 + (4 * ceil32(return_data.size)) + 398] = 'SafeERC20: ERC20 operation did n'
                                            mem[_24427 + (4 * ceil32(return_data.size)) + 430] = 0x6f74207375636365656400000000000000000000000000000000000000000000
                                            revert with memory
                                              from _24427 + (4 * ceil32(return_data.size)) + 330
                                               len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
                                    mem[_24427 + (4 * ceil32(return_data.size)) + 334] = address(ext_call.return_data[0])
                                    mem[_24427 + (4 * ceil32(return_data.size)) + 366] = address(ext_call.return_data[0])
                                    mem[_24427 + (4 * ceil32(return_data.size)) + 398] = _12356
                                    mem[_24427 + (4 * ceil32(return_data.size)) + 430] = _24368
                                    mem[_24427 + (4 * ceil32(return_data.size)) + 462] = 0
                                    mem[_24427 + (4 * ceil32(return_data.size)) + 494] = 0
                                    mem[_24427 + (4 * ceil32(return_data.size)) + 526] = address(arg3)
                                    mem[_24427 + (4 * ceil32(return_data.size)) + 558] = block.timestamp
                                    require ext_code.size(address(arg2))
                                    call address(arg2).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                                         gas gas_remaining wei
                                        args mem[_24427 + (4 * ceil32(return_data.size)) + 334 len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 256]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
}



}
