contract main {




// =====================  Runtime code  =====================


address sub_8ed8ea7eAddress; offset 8
address sub_50d7d613Address;
address devAddress;
address wFTMAddress;
mapping of uint8 stor4;
address stor5;

function wFTM() {
    return wFTMAddress
}

function devAddress() {
    return devAddress
}

function isWhitelisted(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor4[arg1])
}

function sub_50d7d613(?) {
    return sub_50d7d613Address
}

function sub_8ed8ea7e(?) {
    return sub_8ed8ea7eAddress
}

function _fallback() payable {
    revert
}

function emergencyWithdraw() {
    if stor5 != msg.sender:
        revert with 0, 'NOT_OWNER'
}

function sub_9a9f1c30(?) {
    require calldata.size - 4 >= 32
    if stor5 != msg.sender:
        revert with 0, 'NOT_OWNER'
    wFTMAddress = arg1
}

function setDevAddress(address arg1) {
    require calldata.size - 4 >= 32
    if stor5 != msg.sender:
        revert with 0, 'NOT_OWNER'
    devAddress = arg1
}

function sub_91cff5c7(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if stor5 != msg.sender:
        revert with 0, 'NOT_OWNER'
    idx = 0
    while idx < ('cd', 4).length:
        if not address(cd[((32 * idx) + cd[4] + 36)]):
            revert with 0, 'NULL_ADDRESS'
        require idx < ('cd', 4).length
        if stor4[address(cd[((32 * idx) + cd[4] + 36)])]:
            revert with 0, 'DUPLICATE_ENTRY'
        require idx < ('cd', 4).length
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 4
        stor4[address(cd[((32 * idx) + cd[4] + 36)])] = 1
        idx = idx + 1
        continue 
}

function sub_6c7fddad(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if stor5 != msg.sender:
        revert with 0, 'NOT_OWNER'
    idx = 0
    while idx < ('cd', 4).length:
        if not address(cd[((32 * idx) + cd[4] + 36)]):
            revert with 0, 'NULL_ADDRESS'
        require idx < ('cd', 4).length
        if not stor4[address(cd[((32 * idx) + cd[4] + 36)])]:
            revert with 0, 'NOT_WHITELISTED'
        require idx < ('cd', 4).length
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 4
        stor4[address(cd[((32 * idx) + cd[4] + 36)])] = 0
        idx = idx + 1
        continue 
}

function sub_efa5fc1a(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require (32 * ('cd', 4).length) + 128 <= test266151307() and (32 * ('cd', 4).length) + 128 >= 96
    mem[64] = (32 * ('cd', 4).length) + 128
    mem[96] = ('cd', 4).length
    require cd[4] + (64 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require calldata.size - s >= 64
        _82 = mem[64]
        require mem[64] + 64 <= test266151307() and mem[64] + 64 >= mem[64]
        mem[64] = mem[64] + 64
        mem[_82] = address(cd[s])
        require cd[(s + 32)] < 2
        mem[_82 + 32] = cd[(s + 32)]
        mem[t] = _82
        idx = idx + 1
        s = s + 64
        t = t + 32
        continue 
    if mem[96] > 5:
        revert with 0, 'TOO_MANY_TOKENS_TO_SWAP'
    _84 = mem[96]
    _85 = mem[64]
    mem[64] = mem[64] + 64
    mem[_85] = 30
    mem[_85 + 32] = 'SafeMath: subtraction overflow'
    if 2 * msg.value / 100 > msg.value:
        revert with 0, 'SafeMath: subtraction overflow', 0
    _88 = mem[64]
    mem[64] = mem[64] + 64
    mem[_88] = 26
    mem[_88 + 32] = 'SafeMath: division by zero'
    if _84 <= 0:
        revert with 0, 'SafeMath: division by zero', 0
    require _84
    _160 = mem[96]
    idx = 0
    while idx < _160:
        require idx < mem[96]
        mem[0] = mem[mem[(32 * idx) + 128] + 12 len 20]
        mem[32] = 4
        if not stor4[mem[0]]:
            revert with 0, 'TOKEN_NOT_ON_OUR_LIST'
        require idx < mem[96]
        require mem[mem[(32 * idx) + 128] + 32] <= 1
        require idx < mem[96]
        if mem[mem[(32 * idx) + 128] + 32] != 1:
            _176 = mem[(32 * idx) + 128]
            _180 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            mem[_180 + 32 len 64] = code.data[6485 len 64]
            require 0 < mem[_180]
            mem[_180 + 32] = wFTMAddress
            require 1 < mem[_180]
            mem[_180 + 64] = mem[_176 + 12 len 20]
            mem[_180 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_180 + 100] = msg.value
            mem[_180 + 132] = 64
            mem[_180 + 164] = mem[_180]
            s = 0
            t = _180 + 32
            u = _180 + 196
            while s < mem[_180]:
                mem[u] = mem[t + 12 len 20]
                _160 = mem[96]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            require ext_code.size(sub_50d7d613Address)
            staticcall sub_50d7d613Address.mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _180 + (32 * mem[_180]) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _232 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _234 = mem[_232]
            require mem[_232] <= test266151307()
            require _232 + mem[_232] + 31 < _232 + return_data.size
            _236 = mem[_232 + mem[_232]]
            require mem[_232 + mem[_232]] <= test266151307()
            require _232 + ceil32(return_data.size) + (32 * mem[_232 + mem[_232]]) + 32 <= test266151307() and (32 * mem[_232 + mem[_232]]) + 32 >= 0
            mem[64] = _232 + ceil32(return_data.size) + (32 * mem[_232 + mem[_232]]) + 32
            mem[_232 + ceil32(return_data.size)] = _236
            require _234 + (32 * _236) + 32 <= return_data.size
            s = 0
            t = _232 + _234 + 32
            u = _232 + ceil32(return_data.size) + 32
            while s < _236:
                mem[u] = mem[t]
                _160 = mem[96]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            require 1 < _236
            _268 = mem[_232 + ceil32(return_data.size) + 64]
            mem[mem[64]] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 99 * _268 / 100
            mem[mem[64] + 36] = 128
            _272 = mem[_180]
            mem[mem[64] + 132] = mem[_180]
            s = 0
            t = _180 + 32
            u = mem[64] + 164
            while s < _272:
                mem[u] = mem[t + 12 len 20]
                _160 = mem[96]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            mem[mem[64] + 68] = this.address
            mem[mem[64] + 100] = block.timestamp
            require ext_code.size(sub_50d7d613Address)
            call sub_50d7d613Address.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
               value msg.value - (2 * msg.value / 100) / _84 wei
                 gas gas_remaining wei
                args 99 * _268 / 100, 128, address(this.address), block.timestamp, mem[mem[64] + 132 len (32 * _272) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _292 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _294 = mem[_292]
            require mem[_292] <= test266151307()
            require _292 + mem[_292] + 31 < _292 + return_data.size
            _296 = mem[_292 + mem[_292]]
            require mem[_292 + mem[_292]] <= test266151307()
            require _292 + ceil32(return_data.size) + (32 * mem[_292 + mem[_292]]) + 32 <= test266151307() and (32 * mem[_292 + mem[_292]]) + 32 >= 0
            mem[64] = _292 + ceil32(return_data.size) + (32 * mem[_292 + mem[_292]]) + 32
            mem[_292 + ceil32(return_data.size)] = _296
            require _294 + (32 * _296) + 32 <= return_data.size
            s = 0
            t = _292 + _294 + 32
            u = _292 + ceil32(return_data.size) + 32
            while s < _296:
                mem[u] = mem[t]
                _160 = mem[96]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
        else:
            _177 = mem[(32 * idx) + 128]
            _181 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            mem[_181 + 32 len 64] = code.data[6485 len 64]
            require 0 < mem[_181]
            mem[_181 + 32] = wFTMAddress
            require 1 < mem[_181]
            mem[_181 + 64] = mem[_177 + 12 len 20]
            mem[_181 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_181 + 100] = msg.value
            mem[_181 + 132] = 64
            mem[_181 + 164] = mem[_181]
            s = 0
            t = _181 + 32
            u = _181 + 196
            while s < mem[_181]:
                mem[u] = mem[t + 12 len 20]
                _160 = mem[96]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            require ext_code.size(sub_8ed8ea7eAddress)
            staticcall sub_8ed8ea7eAddress.mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _181 + (32 * mem[_181]) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _233 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _235 = mem[_233]
            require mem[_233] <= test266151307()
            require _233 + mem[_233] + 31 < _233 + return_data.size
            _237 = mem[_233 + mem[_233]]
            require mem[_233 + mem[_233]] <= test266151307()
            require _233 + ceil32(return_data.size) + (32 * mem[_233 + mem[_233]]) + 32 <= test266151307() and (32 * mem[_233 + mem[_233]]) + 32 >= 0
            mem[64] = _233 + ceil32(return_data.size) + (32 * mem[_233 + mem[_233]]) + 32
            mem[_233 + ceil32(return_data.size)] = _237
            require _235 + (32 * _237) + 32 <= return_data.size
            s = 0
            t = _233 + _235 + 32
            u = _233 + ceil32(return_data.size) + 32
            while s < _237:
                mem[u] = mem[t]
                _160 = mem[96]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            require 1 < _237
            _269 = mem[_233 + ceil32(return_data.size) + 64]
            mem[mem[64]] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 99 * _269 / 100
            mem[mem[64] + 36] = 128
            _273 = mem[_181]
            mem[mem[64] + 132] = mem[_181]
            s = 0
            t = _181 + 32
            u = mem[64] + 164
            while s < _273:
                mem[u] = mem[t + 12 len 20]
                _160 = mem[96]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            mem[mem[64] + 68] = this.address
            mem[mem[64] + 100] = block.timestamp
            require ext_code.size(sub_8ed8ea7eAddress)
            call sub_8ed8ea7eAddress.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
               value msg.value - (2 * msg.value / 100) / _84 wei
                 gas gas_remaining wei
                args 99 * _269 / 100, 128, address(this.address), block.timestamp, mem[mem[64] + 132 len (32 * _273) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _293 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _295 = mem[_293]
            require mem[_293] <= test266151307()
            require _293 + mem[_293] + 31 < _293 + return_data.size
            _297 = mem[_293 + mem[_293]]
            require mem[_293 + mem[_293]] <= test266151307()
            require _293 + ceil32(return_data.size) + (32 * mem[_293 + mem[_293]]) + 32 <= test266151307() and (32 * mem[_293 + mem[_293]]) + 32 >= 0
            mem[64] = _293 + ceil32(return_data.size) + (32 * mem[_293 + mem[_293]]) + 32
            mem[_293 + ceil32(return_data.size)] = _297
            require _295 + (32 * _297) + 32 <= return_data.size
            s = 0
            t = _293 + _295 + 32
            u = _293 + ceil32(return_data.size) + 32
            while s < _297:
                mem[u] = mem[t]
                _160 = mem[96]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
        _160 = mem[96]
        idx = idx + 1
        continue 
}



}
