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
        _84 = mem[64]
        require mem[64] + 64 <= test266151307() and mem[64] + 64 >= mem[64]
        mem[64] = mem[64] + 64
        mem[_84] = address(cd[s])
        require cd[(s + 32)] < 2
        mem[_84 + 32] = cd[(s + 32)]
        mem[t] = _84
        idx = idx + 1
        s = s + 64
        t = t + 32
        continue 
    if mem[96] > 5:
        revert with 0, 'TOO_MANY_TOKENS_TO_SWAP'
    _86 = mem[96]
    _87 = mem[64]
    mem[64] = mem[64] + 64
    mem[_87] = 30
    mem[_87 + 32] = 'SafeMath: subtraction overflow'
    if 2 * msg.value / 100 > msg.value:
        revert with 0, 'SafeMath: subtraction overflow', 0
    _90 = mem[64]
    mem[64] = mem[64] + 64
    mem[_90] = 26
    mem[_90 + 32] = 'SafeMath: division by zero'
    if _86 <= 0:
        revert with 0, 'SafeMath: division by zero', 0
    require _86
    call devAddress with:
       value 2 * msg.value / 100 wei
         gas 2300 * is_zero(value) wei
    _164 = mem[96]
    idx = 0
    while idx < _164:
        require idx < mem[96]
        mem[0] = mem[mem[(32 * idx) + 128] + 12 len 20]
        mem[32] = 4
        if not stor4[mem[0]]:
            revert with 0, 'TOKEN_NOT_ON_OUR_LIST'
        require idx < mem[96]
        require mem[mem[(32 * idx) + 128] + 32] <= 1
        require idx < mem[96]
        if mem[mem[(32 * idx) + 128] + 32] != 1:
            _180 = mem[(32 * idx) + 128]
            _184 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            mem[_184 + 32 len 64] = code.data[6767 len 64]
            require 0 < mem[_184]
            mem[_184 + 32] = wFTMAddress
            require 1 < mem[_184]
            mem[_184 + 64] = mem[_180 + 12 len 20]
            mem[_184 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_184 + 100] = msg.value - (2 * msg.value / 100) / _86
            mem[_184 + 132] = 64
            mem[_184 + 164] = mem[_184]
            s = 0
            t = _184 + 32
            u = _184 + 196
            while s < mem[_184]:
                mem[u] = mem[t + 12 len 20]
                _164 = mem[96]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            require ext_code.size(sub_50d7d613Address)
            staticcall sub_50d7d613Address.mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _184 + (32 * mem[_184]) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _236 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _238 = mem[_236]
            require mem[_236] <= test266151307()
            require _236 + mem[_236] + 31 < _236 + return_data.size
            _240 = mem[_236 + mem[_236]]
            require mem[_236 + mem[_236]] <= test266151307()
            require _236 + ceil32(return_data.size) + (32 * mem[_236 + mem[_236]]) + 32 <= test266151307() and (32 * mem[_236 + mem[_236]]) + 32 >= 0
            mem[64] = _236 + ceil32(return_data.size) + (32 * mem[_236 + mem[_236]]) + 32
            mem[_236 + ceil32(return_data.size)] = _240
            require _238 + (32 * _240) + 32 <= return_data.size
            s = 0
            t = _236 + _238 + 32
            u = _236 + ceil32(return_data.size) + 32
            while s < _240:
                mem[u] = mem[t]
                _164 = mem[96]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            require 1 < _240
            _272 = mem[_236 + ceil32(return_data.size) + 64]
            mem[mem[64]] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 99 * _272 / 100
            mem[mem[64] + 36] = 128
            _276 = mem[_184]
            mem[mem[64] + 132] = mem[_184]
            s = 0
            t = _184 + 32
            u = mem[64] + 164
            while s < _276:
                mem[u] = mem[t + 12 len 20]
                _164 = mem[96]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            mem[mem[64] + 68] = msg.sender
            mem[mem[64] + 100] = block.timestamp
            require ext_code.size(sub_50d7d613Address)
            call sub_50d7d613Address.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
               value msg.value - (2 * msg.value / 100) / _86 wei
                 gas gas_remaining wei
                args 99 * _272 / 100, 128, msg.sender, block.timestamp, mem[mem[64] + 132 len (32 * _276) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _296 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _298 = mem[_296]
            require mem[_296] <= test266151307()
            require _296 + mem[_296] + 31 < _296 + return_data.size
            _300 = mem[_296 + mem[_296]]
            require mem[_296 + mem[_296]] <= test266151307()
            require _296 + ceil32(return_data.size) + (32 * mem[_296 + mem[_296]]) + 32 <= test266151307() and (32 * mem[_296 + mem[_296]]) + 32 >= 0
            mem[64] = _296 + ceil32(return_data.size) + (32 * mem[_296 + mem[_296]]) + 32
            mem[_296 + ceil32(return_data.size)] = _300
            require _298 + (32 * _300) + 32 <= return_data.size
            s = 0
            t = _296 + _298 + 32
            u = _296 + ceil32(return_data.size) + 32
            while s < _300:
                mem[u] = mem[t]
                _164 = mem[96]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
        else:
            _181 = mem[(32 * idx) + 128]
            _185 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            mem[_185 + 32 len 64] = code.data[6767 len 64]
            require 0 < mem[_185]
            mem[_185 + 32] = wFTMAddress
            require 1 < mem[_185]
            mem[_185 + 64] = mem[_181 + 12 len 20]
            mem[_185 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_185 + 100] = msg.value - (2 * msg.value / 100) / _86
            mem[_185 + 132] = 64
            mem[_185 + 164] = mem[_185]
            s = 0
            t = _185 + 32
            u = _185 + 196
            while s < mem[_185]:
                mem[u] = mem[t + 12 len 20]
                _164 = mem[96]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            require ext_code.size(sub_8ed8ea7eAddress)
            staticcall sub_8ed8ea7eAddress.mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _185 + (32 * mem[_185]) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _237 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _239 = mem[_237]
            require mem[_237] <= test266151307()
            require _237 + mem[_237] + 31 < _237 + return_data.size
            _241 = mem[_237 + mem[_237]]
            require mem[_237 + mem[_237]] <= test266151307()
            require _237 + ceil32(return_data.size) + (32 * mem[_237 + mem[_237]]) + 32 <= test266151307() and (32 * mem[_237 + mem[_237]]) + 32 >= 0
            mem[64] = _237 + ceil32(return_data.size) + (32 * mem[_237 + mem[_237]]) + 32
            mem[_237 + ceil32(return_data.size)] = _241
            require _239 + (32 * _241) + 32 <= return_data.size
            s = 0
            t = _237 + _239 + 32
            u = _237 + ceil32(return_data.size) + 32
            while s < _241:
                mem[u] = mem[t]
                _164 = mem[96]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            require 1 < _241
            _273 = mem[_237 + ceil32(return_data.size) + 64]
            mem[mem[64]] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 99 * _273 / 100
            mem[mem[64] + 36] = 128
            _277 = mem[_185]
            mem[mem[64] + 132] = mem[_185]
            s = 0
            t = _185 + 32
            u = mem[64] + 164
            while s < _277:
                mem[u] = mem[t + 12 len 20]
                _164 = mem[96]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            mem[mem[64] + 68] = msg.sender
            mem[mem[64] + 100] = block.timestamp
            require ext_code.size(sub_8ed8ea7eAddress)
            call sub_8ed8ea7eAddress.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
               value msg.value - (2 * msg.value / 100) / _86 wei
                 gas gas_remaining wei
                args 99 * _273 / 100, 128, msg.sender, block.timestamp, mem[mem[64] + 132 len (32 * _277) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _297 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _299 = mem[_297]
            require mem[_297] <= test266151307()
            require _297 + mem[_297] + 31 < _297 + return_data.size
            _301 = mem[_297 + mem[_297]]
            require mem[_297 + mem[_297]] <= test266151307()
            require _297 + ceil32(return_data.size) + (32 * mem[_297 + mem[_297]]) + 32 <= test266151307() and (32 * mem[_297 + mem[_297]]) + 32 >= 0
            mem[64] = _297 + ceil32(return_data.size) + (32 * mem[_297 + mem[_297]]) + 32
            mem[_297 + ceil32(return_data.size)] = _301
            require _299 + (32 * _301) + 32 <= return_data.size
            s = 0
            t = _297 + _299 + 32
            u = _297 + ceil32(return_data.size) + 32
            while s < _301:
                mem[u] = mem[t]
                _164 = mem[96]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
        _164 = mem[96]
        idx = idx + 1
        continue 
}



}
