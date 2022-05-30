contract main {




// =====================  Runtime code  =====================


#
#  - routeValue(bytes16 arg1, string arg2, bytes arg3, bytes32 arg4, bytes arg5, bytes arg6, bytes arg7, uint256 arg8)
#
address owner;
address wnativeAddress;
address routerAddress;
address gtonAddress;
mapping of uint256 stor4;
mapping of uint256 stor5;
mapping of uint256 stor6;
mapping of uint256 stor7;
uint256 relayTopic;
mapping of uint8 stor9;
mapping of uint8 stor10;

function relayTopic() {
    return relayTopic
}

function wnative() {
    return wnativeAddress
}

function owner() {
    return owner
}

function canRoute(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor9[arg1])
}

function gton() {
    return gtonAddress
}

function router() {
    return routerAddress
}

function _fallback() payable {
    revert
}

function setRelayTopic(bytes32 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'ACW'
    relayTopic = arg1
    emit SetRelayTopic(relayTopic, arg1);
}

function setOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'ACW'
    owner = arg1
    emit SetOwner(owner, arg1);
}

function setCanRoute(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'ACW'
    stor9[address(arg1)] = uint8(arg2)
    emit SetCanRoute(msg.sender, arg1, bool(uint8(arg2)));
}

function reclaimNative(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'ACW'
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setFees(string arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'ACW'
    stor4[arg1[all]] = arg2
    stor5[arg1[all]] = arg3
    emit SetFees(Array(len=arg1.length, data=arg1[all]), arg2, arg3);
}

function setIsAllowedChain(string arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'ACW'
    stor10[arg1[all]] = uint8(arg2)
    emit SetIsAllowedChain(Array(len=arg1.length, data=arg1[all]), arg2);
}

function setLimits(string arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'ACW'
    stor6[arg1[all]] = arg2
    stor7[arg1[all]] = arg3
    emit SetLimits(Array(len=arg1.length, data=arg1[all]), arg2, arg3);
}

function reclaimERC20(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'ACW'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function feeMin(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(arg1.length) + 128 < 96 or ceil32(arg1.length) + 128 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    mem[ceil32(arg1.length) + 128] = stor4[arg1[all]]
    return Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
}

function lowerLimit(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(arg1.length) + 128 < 96 or ceil32(arg1.length) + 128 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    mem[ceil32(arg1.length) + 128] = stor6[arg1[all]]
    return Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
}

function upperLimit(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(arg1.length) + 128 < 96 or ceil32(arg1.length) + 128 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    mem[ceil32(arg1.length) + 128] = stor7[arg1[all]]
    return Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
}

function feePercent(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(arg1.length) + 128 < 96 or ceil32(arg1.length) + 128 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    mem[ceil32(arg1.length) + 128] = stor5[arg1[all]]
    return Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
}

function isAllowedChain(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(arg1.length) + 128 < 96 or ceil32(arg1.length) + 128 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    mem[ceil32(arg1.length) + 128] = bool(stor10[arg1[all]])
    return Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
}

function lock(string arg1, bytes arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    if not stor10[arg1[all]]:
        revert with 0, 'R1'
    if msg.value <= stor6[arg1[all]]:
        revert with 0, 'R2'
    mem[96 len arg1.length] = arg1[all]
    mem[arg1.length + 96] = 7
    if msg.value >= stor7[arg1[all]]:
        revert with 0, 'R3'
    require ext_code.size(wnativeAddress)
    call wnativeAddress.0xd0e30db0 with:
       value msg.value wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[100] = routerAddress
    mem[132] = msg.value
    require ext_code.size(wnativeAddress)
    call wnativeAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args routerAddress, msg.value
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[ceil32(return_data.size) + 96] = 2
    mem[ceil32(return_data.size) + 128] = wnativeAddress
    mem[ceil32(return_data.size) + 160] = gtonAddress
    if 3600 > !block.timestamp:
        revert with 0, 17
    mem[ceil32(return_data.size) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 196] = msg.value
    mem[ceil32(return_data.size) + 228] = 0
    mem[ceil32(return_data.size) + 260] = 160
    mem[ceil32(return_data.size) + 356] = 2
    idx = 0
    s = ceil32(return_data.size) + 388
    t = ceil32(return_data.size) + 128
    while idx < 2:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(return_data.size) + 292] = this.address
    mem[ceil32(return_data.size) + 324] = block.timestamp + 3600
    require ext_code.size(routerAddress)
    call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args msg.value, 0, 160, address(this.address), block.timestamp + 3600, 2, mem[ceil32(return_data.size) + 388 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    _94 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, msg.value) >> 32
    require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, msg.value) >> 32 <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, msg.value) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
    _95 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, msg.value) >> 32 + 192]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, msg.value) >> 32 + 192] > test266151307():
        revert with 0, 65
    if (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, msg.value) >> 32 + 192]) + 32 < 0 or (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, msg.value) >> 32 + 192]) + 224 > test266151307():
        revert with 0, 65
    mem[64] = (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, msg.value) >> 32 + 192]) + 224
    mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, msg.value) >> 32 + 192]
    require return_data.size >= _94 + (32 * _95) + 32
    mem[(2 * ceil32(return_data.size)) + 224 len 32 * _95] = mem[ceil32(return_data.size) + _94 + 224 len 32 * _95]
    _156 = mem[64]
    mem[mem[64] len arg1.length] = arg1[all]
    mem[arg1.length + mem[64]] = 5
    _158 = sha3(mem[mem[64] len arg1.length + _156 + -mem[64] + 32])
    if 1 >= _95:
        revert with 0, 50
    _160 = mem[(2 * ceil32(return_data.size)) + 256]
    if mem[(2 * ceil32(return_data.size)) + 256] and stor[sha3(mem[mem[64] len arg1.length + _156 + -mem[64] + 32])] > -1 / mem[(2 * ceil32(return_data.size)) + 256]:
        revert with 0, 17
    _161 = mem[64]
    mem[mem[64] len arg1.length] = arg1[all]
    mem[arg1.length + mem[64]] = 4
    if _160 * stor[_158] / 100000 > stor[sha3(mem[mem[64] len arg1.length + _161 + -mem[64] + 32])]:
        if 1 >= _95:
            revert with 0, 50
        _166 = mem[(2 * ceil32(return_data.size)) + 256]
        if mem[(2 * ceil32(return_data.size)) + 256] < _160 * stor[_158] / 100000:
            revert with 0, 17
        if 0 >= _95:
            revert with 0, 50
        _172 = mem[(2 * ceil32(return_data.size)) + 224]
        if 1 >= _95:
            revert with 0, 50
        _175 = mem[(2 * ceil32(return_data.size)) + 256]
        _176 = mem[64]
        mem[mem[64] len arg1.length] = arg1[all]
        mem[arg1.length + mem[64]] = 4
        _182 = sha3(mem[mem[64] len arg1.length + _176 + -mem[64] + 32])
        _183 = mem[64]
        mem[mem[64] len arg1.length] = arg1[all]
        mem[arg1.length + mem[64]] = 5
        _188 = sha3(mem[mem[64] len arg1.length + _183 + -mem[64] + 32])
        mem[mem[64]] = _172
        mem[mem[64] + 32] = _175
        mem[mem[64] + 64] = stor[_182]
        mem[mem[64] + 96] = stor[_188]
        mem[mem[64] + 128] = _160 * stor[_158] / 100000
        mem[mem[64] + 160] = _166 - (_160 * stor[_158] / 100000)
        emit CalculateFee(_172, _175, stor[_182], stor[_188], _160 * stor[_158] / 100000, _166 - (_160 * stor[_158] / 100000));
        if _166 - (_160 * stor[_158] / 100000) <= 0:
            revert with 0, 'R4'
        mem[mem[64] len arg2.length] = arg2[all]
        mem[arg2.length + mem[64]] = 0
        _199 = mem[64]
        mem[mem[64] len arg1.length] = arg1[all]
        mem[arg1.length + mem[64]] = 0
        _206 = sha3(mem[mem[64] len arg1.length + _199 - mem[64]])
        _207 = mem[64]
        mem[mem[64]] = 96
        mem[mem[64] + 96] = arg1.length
        mem[mem[64] + 128 len arg1.length] = arg1[all]
        mem[mem[64] + arg1.length + 128] = 0
        mem[mem[64] + 32] = ceil32(arg1.length) + 128
        mem[_207 + ceil32(arg1.length) + 128] = arg2.length
        mem[_207 + ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
        mem[_207 + ceil32(arg1.length) + arg2.length + 160] = 0
        mem[_207 + 64] = _166 - (_160 * stor[_158] / 100000)
        emit Lock(string arg1, bytes arg2, string arg3, bytes arg4, uint256 arg5):
                  mem[mem[64] len _207 + ceil32(arg1.length) + ceil32(arg2.length) + -mem[64] + 160],
                  _206,
                  sha3(arg2[all]),
    else:
        _164 = mem[64]
        mem[mem[64] len arg1.length] = arg1[all]
        mem[arg1.length + mem[64]] = 4
        _168 = sha3(mem[mem[64] len arg1.length + _164 + -mem[64] + 32])
        if 1 >= _95:
            revert with 0, 50
        _170 = mem[(2 * ceil32(return_data.size)) + 256]
        if mem[(2 * ceil32(return_data.size)) + 256] < stor[sha3(mem[mem[64] len arg1.length + _164 + -mem[64] + 32])]:
            revert with 0, 17
        if 0 >= _95:
            revert with 0, 50
        _177 = mem[(2 * ceil32(return_data.size)) + 224]
        if 1 >= _95:
            revert with 0, 50
        _179 = mem[(2 * ceil32(return_data.size)) + 256]
        _180 = mem[64]
        mem[mem[64] len arg1.length] = arg1[all]
        mem[arg1.length + mem[64]] = 4
        _185 = sha3(mem[mem[64] len arg1.length + _180 + -mem[64] + 32])
        _186 = mem[64]
        mem[mem[64] len arg1.length] = arg1[all]
        mem[arg1.length + mem[64]] = 5
        _190 = sha3(mem[mem[64] len arg1.length + _186 + -mem[64] + 32])
        mem[mem[64]] = _177
        mem[mem[64] + 32] = _179
        mem[mem[64] + 64] = stor[_185]
        mem[mem[64] + 96] = stor[_190]
        mem[mem[64] + 128] = _160 * stor[_158] / 100000
        mem[mem[64] + 160] = _170 - stor[_168]
        emit CalculateFee(_177, _179, stor[_185], stor[_190], _160 * stor[_158] / 100000, _170 - stor[_168]);
        if _170 - stor[_168] <= 0:
            revert with 0, 'R4'
        mem[mem[64] len arg2.length] = arg2[all]
        mem[arg2.length + mem[64]] = 0
        _203 = mem[64]
        mem[mem[64] len arg1.length] = arg1[all]
        mem[arg1.length + mem[64]] = 0
        _209 = sha3(mem[mem[64] len arg1.length + _203 - mem[64]])
        _210 = mem[64]
        mem[mem[64]] = 96
        mem[mem[64] + 96] = arg1.length
        mem[mem[64] + 128 len arg1.length] = arg1[all]
        mem[mem[64] + arg1.length + 128] = 0
        mem[mem[64] + 32] = ceil32(arg1.length) + 128
        mem[_210 + ceil32(arg1.length) + 128] = arg2.length
        mem[_210 + ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
        mem[_210 + ceil32(arg1.length) + arg2.length + 160] = 0
        mem[_210 + 64] = _170 - stor[_168]
        emit Lock(string arg1, bytes arg2, string arg3, bytes arg4, uint256 arg5):
                  mem[mem[64] len _210 + ceil32(arg1.length) + ceil32(arg2.length) + -mem[64] + 160],
                  _209,
                  sha3(arg2[all]),
}



}
