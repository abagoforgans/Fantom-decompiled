contract main {




// =====================  Runtime code  =====================


#
#  - arbitrage(uint256 arg1, address[] arg2, bool[] arg3, uint256[] arg4, uint256 arg5, uint256 arg6, uint256 arg7)
#
uint32 stor0;
address owner;
uint256 stor0;
address pendingOwner;
mapping of uint8 stor2;
uint8 stor3; offset 160
address stor3;

function operators(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor2[arg1])
}

function owner() {
    return address(owner)
}

function pendingOwner() {
    return pendingOwner
}

function resetPendingOwner() {
    if address(owner) != msg.sender:
        revert with 0, 'not-owner'
    pendingOwner = 0
}

function acceptOwner() {
    if pendingOwner != msg.sender:
        revert with 0, 'not-pending-owner'
    address(owner) = pendingOwner
    pendingOwner = 0
}

function delOperator(address arg1) {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'not-owner'
    stor2[address(arg1)] = 0
}

function addOperator(address arg1) {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'not-owner'
    stor2[address(arg1)] = 1
}

function delOperators(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    if address(owner) != msg.sender:
        revert with 0, 'not-owner'
    idx = 0
    while idx < arg1.length:
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 2
        stor2[address(cd[((32 * idx) + arg1 + 36)])] = 0
        idx = idx + 1
        continue 
}

function addOperators(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    if address(owner) != msg.sender:
        revert with 0, 'not-owner'
    idx = 0
    while idx < arg1.length:
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 2
        stor2[address(cd[((32 * idx) + arg1 + 36)])] = 1
        idx = idx + 1
        continue 
}

function _fallback() payable {
    require 4 <= calldata.size
    require calldata.size <= calldata.size
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    require ext_code.size(this.address)
    call this.address with:
         gas gas_remaining wei
        args address(arg1), arg2, arg3, Array(len=arg4.length, data=arg4[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawETH(uint256 arg1) {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'not-owner'
    if not arg1:
        call address(owner) with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
    else:
        if arg1 > eth.balance(this.address):
            call address(owner) with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
        else:
            call address(owner) with:
               value arg1 wei
                 gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setPendingOwner(address arg1) {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'not-owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    if arg1 == address(owner):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x774f776e61626c653a206e6577206f776e657220646f6573206e6f74206368616e67,
                    mem[198 len 30]
    pendingOwner = arg1
}

function withdrawWETH(uint256 arg1) {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'not-owner'
    require ext_code.size(address(stor3.field_0))
    staticcall address(stor3.field_0).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(stor3.field_0))
    if not arg1:
        call address(stor3.field_0).withdraw(uint256 arg1) with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call address(owner) with:
           value ext_call.return_data[0] wei
             gas 2300 * is_zero(value) wei
    else:
        if arg1 > ext_call.return_data[0]:
            call address(stor3.field_0).withdraw(uint256 arg1) with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            call address(owner) with:
               value ext_call.return_data[0] wei
                 gas 2300 * is_zero(value) wei
        else:
            call address(stor3.field_0).withdraw(uint256 arg1) with:
                 gas gas_remaining wei
                args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            call address(owner) with:
               value arg1 wei
                 gas 2300 * is_zero(value) wei
}

function withdraw(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if address(owner) != msg.sender:
        revert with 0, 'not-owner'
    if not arg1:
        if arg2 == -1:
            call address(owner) with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
        else:
            call address(owner) with:
               value arg2 wei
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
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
        if ext_code.size(arg1) <= 0:
            revert with 0, 'Address: call to non-contract'
        if arg2 >= ext_call.return_data[0]:
            mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0 len 28]
            mem[324 len 0] = 0
            call arg1 with:
               funct uint32(stor0)
                 gas gas_remaining wei
                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0]
                if not unknown_0xa9059cbb(?????), Mask(224, 0, stor0):
                    revert with 0, 32, 42, 0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
            else:
                mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[292]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 371 len 22]
        else:
            mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), Mask(224, 32, arg2) >> 32
            mem[324 len 0] = 0
            call arg1 with:
               funct uint32(stor0)
                 gas gas_remaining wei
                args Mask(224, 32, arg2) << 224, mem[324 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), arg2
                if not unknown_0xa9059cbb(?????), Mask(224, 0, stor0):
                    revert with 0, 32, 42, 0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
            else:
                mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[292]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 371 len 22]
}

function commonCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    if uint8(stor3.field_160):
        revert with 0, 'LOCKED'
    require arg4.length >= 96
    require cd[(arg4 + 36)] <= 4294967296
    require cd[(arg4 + 36)] + 68 <= arg4.length + 36
    require cd[(arg4 + cd[(arg4 + 36)] + 36)] <= 4294967296 and cd[(arg4 + 36)] + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 68 <= arg4.length + 36
    mem[96] = cd[(arg4 + cd[(arg4 + 36)] + 36)]
    mem[128 len 32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]] = call.data[arg4 + cd[(arg4 + 36)] + 68 len 32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]]
    require cd[(arg4 + 68)] <= 4294967296
    require cd[(arg4 + 68)] + 68 <= arg4.length + 36
    require cd[(arg4 + cd[(arg4 + 68)] + 36)] <= 4294967296 and cd[(arg4 + 68)] + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 68 <= arg4.length + 36
    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128] = cd[(arg4 + cd[(arg4 + 68)] + 36)]
    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160 len 32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]] = call.data[arg4 + cd[(arg4 + 68)] + 68 len 32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]]
    require cd[(arg4 + 100)] <= 4294967296
    require cd[(arg4 + 100)] + 68 <= arg4.length + 36
    require cd[(arg4 + cd[(arg4 + 100)] + 36)] <= 4294967296 and cd[(arg4 + 100)] + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 68 <= arg4.length + 36
    mem[64] = (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192
    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 160] = cd[(arg4 + cd[(arg4 + 100)] + 36)]
    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 192 len 32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]] = call.data[arg4 + cd[(arg4 + 100)] + 68 len 32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]]
    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192] = 0
    require 0 < cd[(arg4 + cd[(arg4 + 36)] + 36)]
    require 0 < cd[(arg4 + cd[(arg4 + 100)] + 36)]
    _9 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 192]
    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 196] = mem[140 len 20]
    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 228] = _9
    require ext_code.size(address(stor3.field_0))
    call address(stor3.field_0).0xa9059cbb with:
         gas gas_remaining wei
        args mem[140 len 20], _9
    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    idx = 0
    while idx < cd[(arg4 + cd[(arg4 + 36)] + 36)] - 1:
        require idx < mem[96]
        _71 = mem[(32 * idx) + 128]
        require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
        if mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]:
            require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
            if not mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]:
                require idx + 1 < mem[96]
                _85 = mem[(32 * idx + 1) + 128]
                _89 = mem[64]
                mem[64] = mem[64] + 32
                mem[_89 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[_89 + 36] = 0
                mem[_89 + 68] = 0
                mem[_89 + 100] = address(_85)
                mem[_89 + 132] = 128
                mem[_89 + 164] = mem[_89]
                s = 0
                while s < mem[_89]:
                    mem[_89 + s + 196] = mem[_89 + s + 32]
                    s = s + 32
                    continue 
                if not mem[_89] % 32:
                    require ext_code.size(address(_71))
                    call address(_71).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, 0, address(_85), 128, mem[_89 + 164 len mem[_89] + 32]
                else:
                    mem[floor32(mem[_89]) + _89 + 196] = mem[floor32(mem[_89]) + _89 + -(mem[_89] % 32) + 228 len mem[_89] % 32]
                    require ext_code.size(address(_71))
                    call address(_71).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, 0, address(_85), 128, mem[_89], mem[_89 + 196 len floor32(mem[_89]) + 32]
            else:
                require idx + 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 160]
                _81 = mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 192]
                require idx + 1 < mem[96]
                _88 = mem[(32 * idx + 1) + 128]
                _92 = mem[64]
                mem[64] = mem[64] + 32
                mem[_92 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[_92 + 36] = 0
                mem[_92 + 68] = _81
                mem[_92 + 100] = address(_88)
                mem[_92 + 132] = 128
                mem[_92 + 164] = mem[_92]
                s = 0
                while s < mem[_92]:
                    mem[_92 + s + 196] = mem[_92 + s + 32]
                    s = s + 32
                    continue 
                if not mem[_92] % 32:
                    require ext_code.size(address(_71))
                    call address(_71).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, _81, address(_88), 128, mem[_92 + 164 len mem[_92] + 32]
                else:
                    mem[floor32(mem[_92]) + _92 + 196] = mem[floor32(mem[_92]) + _92 + -(mem[_92] % 32) + 228 len mem[_92] % 32]
                    require ext_code.size(address(_71))
                    call address(_71).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, _81, address(_88), 128, mem[_92], mem[_92 + 196 len floor32(mem[_92]) + 32]
        else:
            require idx + 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 160]
            _76 = mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 192]
            require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128]
            if not mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 160]:
                require idx + 1 < mem[96]
                _91 = mem[(32 * idx + 1) + 128]
                _97 = mem[64]
                mem[64] = mem[64] + 32
                mem[_97 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[_97 + 36] = _76
                mem[_97 + 68] = 0
                mem[_97 + 100] = address(_91)
                mem[_97 + 132] = 128
                mem[_97 + 164] = mem[_97]
                s = 0
                while s < mem[_97]:
                    mem[_97 + s + 196] = mem[_97 + s + 32]
                    s = s + 32
                    continue 
                if not mem[_97] % 32:
                    require ext_code.size(address(_71))
                    call address(_71).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args _76, 0, address(_91), 128, mem[_97 + 164 len mem[_97] + 32]
                else:
                    mem[floor32(mem[_97]) + _97 + 196] = mem[floor32(mem[_97]) + _97 + -(mem[_97] % 32) + 228 len mem[_97] % 32]
                    require ext_code.size(address(_71))
                    call address(_71).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args _76, 0, address(_91), 128, mem[_97], mem[_97 + 196 len floor32(mem[_97]) + 32]
            else:
                require idx + 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 160]
                _86 = mem[(32 * idx + 1) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 192]
                require idx + 1 < mem[96]
                _96 = mem[(32 * idx + 1) + 128]
                _101 = mem[64]
                mem[64] = mem[64] + 32
                mem[_101 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[_101 + 36] = _76
                mem[_101 + 68] = _86
                mem[_101 + 100] = address(_96)
                mem[_101 + 132] = 128
                mem[_101 + 164] = mem[_101]
                s = 0
                while s < mem[_101]:
                    mem[_101 + s + 196] = mem[_101 + s + 32]
                    s = s + 32
                    continue 
                if not mem[_101] % 32:
                    require ext_code.size(address(_71))
                    call address(_71).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args _76, _86, address(_96), 128, mem[_101 + 164 len mem[_101] + 32]
                else:
                    mem[floor32(mem[_101]) + _101 + 196] = mem[floor32(mem[_101]) + _101 + -(mem[_101] % 32) + 228 len mem[_101] % 32]
                    require ext_code.size(address(_71))
                    call address(_71).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args _76, _86, address(_96), Array(len=mem[_101], data=mem[_101 + 196 len floor32(mem[_101]) + 32])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
}



}
