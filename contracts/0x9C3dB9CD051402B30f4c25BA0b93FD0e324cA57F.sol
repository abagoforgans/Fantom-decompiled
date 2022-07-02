contract main {




// =====================  Runtime code  =====================


#
#  - start(uint256 arg1, address arg2, uint256 arg3, address arg4, address arg5, address arg6, address arg7)
#
address owner;
uint256 stage;
address stor2;
uint256 stor2;
uint256 stor3;
uint256 stor4;

function owner() {
    return owner
}

function stage() {
    return stage
}

function _fallback() payable {
    revert
}

function getinfo() {
    return stage, address(stor2), stor3, stor4
}

function withdraw(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function pancakeCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    stage = 6
    address(stor2) = arg1
    stor3 = arg2
    stor4 = arg3
    require ext_code.size(msg.sender)
    staticcall msg.sender.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(msg.sender)
    staticcall msg.sender.token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    stage = 7
    stage = 8
    require arg4.length >= 64
    if not cd[(arg4 + 68)]:
        revert with 0, 'e12'
    if not address(cd[(arg4 + 36)]):
        revert with 0, 'e12'
    stage = 9
    require ext_code.size(address(ext_call.return_data[0]))
    if arg2:
        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(cd[(arg4 + 36)]), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        stage = 20
        mem[160] = address(ext_call.return_data[0])
        stage = 21
        mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[196] = arg2
        mem[228] = cd[(arg4 + 68)]
        mem[292] = this.address
        mem[324] = block.timestamp + 60
        mem[260] = 160
        mem[356] = 2
        mem[388 len 0] = None
        require ext_code.size(address(cd[(arg4 + 36)]))
        call address(cd[(arg4 + 36)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg2, cd[(arg4 + 68)], Array(len=2, data=mem[388 len 64]), address(this.address), block.timestamp + 60
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 192
        require return_data.size >= 32
        _96 = mem[192 len 4], Mask(224, 32, arg2) >> 32
        require mem[192 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
        require mem[192 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
        require mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]
        mem[ceil32(return_data.size) + 224 len floor32(mem[_96 + 192])] = mem[_96 + 224 len floor32(mem[_96 + 192])]
        require 1 < mem[ceil32(return_data.size) + 192]
        stage = 22
    else:
        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(cd[(arg4 + 36)]), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        stage = 10
        mem[160] = address(ext_call.return_data[0])
        stage = 11
        mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[196] = arg3
        mem[228] = cd[(arg4 + 68)]
        mem[292] = this.address
        mem[324] = block.timestamp + 60
        mem[260] = 160
        mem[356] = 2
        mem[388 len 0] = None
        require ext_code.size(address(cd[(arg4 + 36)]))
        call address(cd[(arg4 + 36)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg3, cd[(arg4 + 68)], Array(len=2, data=mem[388 len 64]), address(this.address), block.timestamp + 60
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 192
        require return_data.size >= 32
        _98 = mem[192 len 4], Mask(224, 32, arg3) >> 32
        require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
        mem[ceil32(return_data.size) + 224 len floor32(mem[_98 + 192])] = mem[_98 + 224 len floor32(mem[_98 + 192])]
        require 1 < mem[ceil32(return_data.size) + 192]
        stage = 12
    if mem[ceil32(return_data.size) + 256] <= cd[(arg4 + 68)]:
        revert with 0, 'e13'
    stage = 30
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, cd[(arg4 + 68)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    stage = 31
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xa9059cbb with:
         gas gas_remaining wei
        args tx.origin, mem[ceil32(return_data.size) + 256] - cd[(arg4 + 68)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    stage = 32
}

function check(address arg1, uint256 arg2, address arg3, address arg4, address arg5) {
    require calldata.size - 4 >= 160
    mem[96] = 2
    mem[192] = 2
    mem[256] = arg3
    mem[128] = arg3
    mem[224] = arg1
    mem[160] = arg1
    mem[288] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[292] = arg2
    mem[324] = 64
    mem[356] = 2
    mem[388 len 0] = None
    require ext_code.size(arg4)
    staticcall arg4.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg2, Array(len=2, data=mem[388 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[288 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 288
    require return_data.size >= 32
    _70 = mem[288 len 4], Mask(224, 32, arg2) >> 32
    require mem[288 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
    require mem[288 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
    require mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]
    _73 = mem[_70 + 288]
    mem[ceil32(return_data.size) + 320 len floor32(mem[_70 + 288])] = mem[_70 + 320 len floor32(mem[_70 + 288])]
    require 1 < mem[ceil32(return_data.size) + 288]
    _126 = mem[ceil32(return_data.size) + 352]
    mem[(32 * _73) + ceil32(return_data.size) + 320] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[(32 * _73) + ceil32(return_data.size) + 324] = _126
    mem[(32 * _73) + ceil32(return_data.size) + 356] = 64
    mem[(32 * _73) + ceil32(return_data.size) + 388] = 2
    mem[(32 * _73) + ceil32(return_data.size) + 420 len 0] = None
    require ext_code.size(arg5)
    staticcall arg5.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args _126, Array(len=2, data=mem[(32 * _73) + ceil32(return_data.size) + 420 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * _73) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * _73) + (2 * ceil32(return_data.size)) + 320
    require return_data.size >= 32
    _177 = mem[(32 * _73) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, _126) >> 32
    require mem[(32 * _73) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, _126) >> 32 <= 4294967296
    require mem[(32 * _73) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, _126) >> 32 + 32 <= return_data.size
    require mem[(32 * _73) + ceil32(return_data.size) + mem[(32 * _73) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, _126) >> 32 + 320] <= 4294967296 and mem[(32 * _73) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, _126) >> 32 + (32 * mem[(32 * _73) + ceil32(return_data.size) + mem[(32 * _73) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, _126) >> 32 + 320]) + 32 <= return_data.size
    mem[(32 * _73) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * _73) + ceil32(return_data.size) + mem[(32 * _73) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, _126) >> 32 + 320]
    _180 = mem[(32 * _73) + ceil32(return_data.size) + _177 + 320]
    mem[(32 * _73) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[(32 * _73) + ceil32(return_data.size) + _177 + 320])] = mem[(32 * _73) + ceil32(return_data.size) + _177 + 352 len floor32(mem[(32 * _73) + ceil32(return_data.size) + _177 + 320])]
    require 1 < mem[(32 * _73) + (2 * ceil32(return_data.size)) + 320]
    if mem[(32 * _73) + (2 * ceil32(return_data.size)) + 384] - arg2 > 0:
        return 0, mem[(32 * _73) + (2 * ceil32(return_data.size)) + 384] - arg2, _126
    mem[256] = arg1
    mem[128] = arg1
    mem[224] = arg3
    mem[160] = arg3
    mem[(32 * _180) + (32 * _73) + (2 * ceil32(return_data.size)) + 352] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[(32 * _180) + (32 * _73) + (2 * ceil32(return_data.size)) + 356] = arg2
    mem[(32 * _180) + (32 * _73) + (2 * ceil32(return_data.size)) + 388] = 64
    mem[(32 * _180) + (32 * _73) + (2 * ceil32(return_data.size)) + 420] = 2
    mem[(32 * _180) + (32 * _73) + (2 * ceil32(return_data.size)) + 452 len 0] = None
    require ext_code.size(arg4)
    staticcall arg4.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg2, Array(len=2, data=mem[(32 * _180) + (32 * _73) + (2 * ceil32(return_data.size)) + 452 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * _180) + (32 * _73) + (2 * ceil32(return_data.size)) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * _180) + (32 * _73) + (4 * ceil32(return_data.size)) + 352
    require return_data.size >= 32
    _258 = mem[(32 * _180) + (32 * _73) + (2 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, arg2) >> 32
    require mem[(32 * _180) + (32 * _73) + (2 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
    require mem[(32 * _180) + (32 * _73) + (2 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
    require mem[(32 * _180) + (32 * _73) + (2 * ceil32(return_data.size)) + mem[(32 * _180) + (32 * _73) + (2 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, arg2) >> 32 + 352] <= 4294967296 and mem[(32 * _180) + (32 * _73) + (2 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(32 * _180) + (32 * _73) + (2 * ceil32(return_data.size)) + mem[(32 * _180) + (32 * _73) + (2 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, arg2) >> 32 + 352]) + 32 <= return_data.size
    mem[(32 * _180) + (32 * _73) + (4 * ceil32(return_data.size)) + 352] = mem[(32 * _180) + (32 * _73) + (2 * ceil32(return_data.size)) + mem[(32 * _180) + (32 * _73) + (2 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, arg2) >> 32 + 352]
    _261 = mem[(32 * _180) + (32 * _73) + (2 * ceil32(return_data.size)) + _258 + 352]
    mem[(32 * _180) + (32 * _73) + (4 * ceil32(return_data.size)) + 384 len floor32(mem[(32 * _180) + (32 * _73) + (2 * ceil32(return_data.size)) + _258 + 352])] = mem[(32 * _180) + (32 * _73) + (2 * ceil32(return_data.size)) + _258 + 384 len floor32(mem[(32 * _180) + (32 * _73) + (2 * ceil32(return_data.size)) + _258 + 352])]
    require 1 < mem[(32 * _180) + (32 * _73) + (4 * ceil32(return_data.size)) + 352]
    _282 = mem[(32 * _180) + (32 * _73) + (4 * ceil32(return_data.size)) + 416]
    mem[(32 * _261) + (32 * _180) + (32 * _73) + (4 * ceil32(return_data.size)) + 384] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[(32 * _261) + (32 * _180) + (32 * _73) + (4 * ceil32(return_data.size)) + 388] = _282
    mem[(32 * _261) + (32 * _180) + (32 * _73) + (4 * ceil32(return_data.size)) + 420] = 64
    mem[(32 * _261) + (32 * _180) + (32 * _73) + (4 * ceil32(return_data.size)) + 452] = 2
    mem[(32 * _261) + (32 * _180) + (32 * _73) + (4 * ceil32(return_data.size)) + 484 len 0] = None
    require ext_code.size(arg5)
    staticcall arg5.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args _282, Array(len=2, data=mem[(32 * _261) + (32 * _180) + (32 * _73) + (4 * ceil32(return_data.size)) + 484 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * _261) + (32 * _180) + (32 * _73) + (4 * ceil32(return_data.size)) + 384 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * _261) + (32 * _180) + (32 * _73) + (6 * ceil32(return_data.size)) + 384
    require return_data.size >= 32
    _301 = mem[(32 * _261) + (32 * _180) + (32 * _73) + (4 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, _282) >> 32
    require mem[(32 * _261) + (32 * _180) + (32 * _73) + (4 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, _282) >> 32 <= 4294967296
    require mem[(32 * _261) + (32 * _180) + (32 * _73) + (4 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, _282) >> 32 + 32 <= return_data.size
    require mem[(32 * _261) + (32 * _180) + (32 * _73) + (4 * ceil32(return_data.size)) + mem[(32 * _261) + (32 * _180) + (32 * _73) + (4 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, _282) >> 32 + 384] <= 4294967296 and mem[(32 * _261) + (32 * _180) + (32 * _73) + (4 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, _282) >> 32 + (32 * mem[(32 * _261) + (32 * _180) + (32 * _73) + (4 * ceil32(return_data.size)) + mem[(32 * _261) + (32 * _180) + (32 * _73) + (4 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, _282) >> 32 + 384]) + 32 <= return_data.size
    mem[(32 * _261) + (32 * _180) + (32 * _73) + (6 * ceil32(return_data.size)) + 384] = mem[(32 * _261) + (32 * _180) + (32 * _73) + (4 * ceil32(return_data.size)) + mem[(32 * _261) + (32 * _180) + (32 * _73) + (4 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, _282) >> 32 + 384]
    mem[(32 * _261) + (32 * _180) + (32 * _73) + (6 * ceil32(return_data.size)) + 416 len floor32(mem[(32 * _261) + (32 * _180) + (32 * _73) + (4 * ceil32(return_data.size)) + _301 + 384])] = mem[(32 * _261) + (32 * _180) + (32 * _73) + (4 * ceil32(return_data.size)) + _301 + 416 len floor32(mem[(32 * _261) + (32 * _180) + (32 * _73) + (4 * ceil32(return_data.size)) + _301 + 384])]
    require 1 < mem[(32 * _261) + (32 * _180) + (32 * _73) + (6 * ceil32(return_data.size)) + 384]
    return 1, mem[(32 * _261) + (32 * _180) + (32 * _73) + (6 * ceil32(return_data.size)) + 448] - arg2, _282
}

function sub_09235494(?) {
    require calldata.size - 4 >= 192
    stage = 1
    uint256(stor2) = msg.sender or Mask(96, 160, uint256(stor2))
    mem[96] = 2
    mem[192] = 2
    mem[256] = arg3
    mem[128] = arg3
    mem[224] = arg1
    mem[160] = arg1
    mem[288] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[292] = arg2
    mem[324] = 64
    mem[356] = 2
    mem[388 len 0] = None
    require ext_code.size(arg4)
    staticcall arg4.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg2, Array(len=2, data=mem[388 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[288 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 288
    require return_data.size >= 32
    _176 = mem[288 len 4], Mask(224, 32, arg2) >> 32
    require mem[288 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
    require mem[288 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
    require mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]
    _179 = mem[_176 + 288]
    mem[ceil32(return_data.size) + 320 len floor32(mem[_176 + 288])] = mem[_176 + 320 len floor32(mem[_176 + 288])]
    require 1 < mem[ceil32(return_data.size) + 288]
    _338 = mem[ceil32(return_data.size) + 352]
    mem[(32 * _179) + ceil32(return_data.size) + 320] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[(32 * _179) + ceil32(return_data.size) + 324] = _338
    mem[(32 * _179) + ceil32(return_data.size) + 356] = 64
    mem[(32 * _179) + ceil32(return_data.size) + 388] = 2
    mem[(32 * _179) + ceil32(return_data.size) + 420 len 0] = None
    require ext_code.size(arg5)
    staticcall arg5.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args _338, Array(len=2, data=mem[(32 * _179) + ceil32(return_data.size) + 420 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * _179) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * _179) + (2 * ceil32(return_data.size)) + 320
    require return_data.size >= 32
    _495 = mem[(32 * _179) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, _338) >> 32
    require mem[(32 * _179) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, _338) >> 32 <= 4294967296
    require mem[(32 * _179) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, _338) >> 32 + 32 <= return_data.size
    require mem[(32 * _179) + ceil32(return_data.size) + mem[(32 * _179) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, _338) >> 32 + 320] <= 4294967296 and mem[(32 * _179) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, _338) >> 32 + (32 * mem[(32 * _179) + ceil32(return_data.size) + mem[(32 * _179) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, _338) >> 32 + 320]) + 32 <= return_data.size
    mem[(32 * _179) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * _179) + ceil32(return_data.size) + mem[(32 * _179) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, _338) >> 32 + 320]
    _498 = mem[(32 * _179) + ceil32(return_data.size) + _495 + 320]
    mem[(32 * _179) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[(32 * _179) + ceil32(return_data.size) + _495 + 320])] = mem[(32 * _179) + ceil32(return_data.size) + _495 + 352 len floor32(mem[(32 * _179) + ceil32(return_data.size) + _495 + 320])]
    require 1 < mem[(32 * _179) + (2 * ceil32(return_data.size)) + 320]
    if mem[(32 * _179) + (2 * ceil32(return_data.size)) + 384] - arg2 > 0:
        stage = 2
        require ext_code.size(arg6)
        staticcall arg6.getPair(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(arg1), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[12 len 20]:
            revert with 0, 'e10'
        stage = 3
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).token1() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        if ext_call.return_data[12 len 20] == arg1:
            if ext_call.return_data[12 len 20] == arg1:
                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args _338, _338, address(this.address), 128, 64, address(arg5), arg2
            else:
                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args _338, 0, address(this.address), 128, 64, address(arg5), arg2
        else:
            if ext_call.return_data[12 len 20] == arg1:
                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, _338, address(this.address), 128, 64, address(arg5), arg2
            else:
                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, 0, address(this.address), 128, 64, address(arg5), arg2
    else:
        mem[256] = arg1
        mem[128] = arg1
        mem[224] = arg3
        mem[160] = arg3
        mem[(32 * _498) + (32 * _179) + (2 * ceil32(return_data.size)) + 352] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(32 * _498) + (32 * _179) + (2 * ceil32(return_data.size)) + 356] = arg2
        mem[(32 * _498) + (32 * _179) + (2 * ceil32(return_data.size)) + 388] = 64
        mem[(32 * _498) + (32 * _179) + (2 * ceil32(return_data.size)) + 420] = 2
        mem[(32 * _498) + (32 * _179) + (2 * ceil32(return_data.size)) + 452 len 0] = None
        require ext_code.size(arg4)
        staticcall arg4.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg2, Array(len=2, data=mem[(32 * _498) + (32 * _179) + (2 * ceil32(return_data.size)) + 452 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _498) + (32 * _179) + (2 * ceil32(return_data.size)) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _498) + (32 * _179) + (4 * ceil32(return_data.size)) + 352
        require return_data.size >= 32
        _804 = mem[(32 * _498) + (32 * _179) + (2 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, arg2) >> 32
        require mem[(32 * _498) + (32 * _179) + (2 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
        require mem[(32 * _498) + (32 * _179) + (2 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
        require mem[(32 * _498) + (32 * _179) + (2 * ceil32(return_data.size)) + mem[(32 * _498) + (32 * _179) + (2 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, arg2) >> 32 + 352] <= 4294967296 and mem[(32 * _498) + (32 * _179) + (2 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(32 * _498) + (32 * _179) + (2 * ceil32(return_data.size)) + mem[(32 * _498) + (32 * _179) + (2 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, arg2) >> 32 + 352]) + 32 <= return_data.size
        mem[(32 * _498) + (32 * _179) + (4 * ceil32(return_data.size)) + 352] = mem[(32 * _498) + (32 * _179) + (2 * ceil32(return_data.size)) + mem[(32 * _498) + (32 * _179) + (2 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, arg2) >> 32 + 352]
        _807 = mem[(32 * _498) + (32 * _179) + (2 * ceil32(return_data.size)) + _804 + 352]
        mem[(32 * _498) + (32 * _179) + (4 * ceil32(return_data.size)) + 384 len floor32(mem[(32 * _498) + (32 * _179) + (2 * ceil32(return_data.size)) + _804 + 352])] = mem[(32 * _498) + (32 * _179) + (2 * ceil32(return_data.size)) + _804 + 384 len floor32(mem[(32 * _498) + (32 * _179) + (2 * ceil32(return_data.size)) + _804 + 352])]
        require 1 < mem[(32 * _498) + (32 * _179) + (4 * ceil32(return_data.size)) + 352]
        _882 = mem[(32 * _498) + (32 * _179) + (4 * ceil32(return_data.size)) + 416]
        mem[(32 * _807) + (32 * _498) + (32 * _179) + (4 * ceil32(return_data.size)) + 384] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(32 * _807) + (32 * _498) + (32 * _179) + (4 * ceil32(return_data.size)) + 388] = _882
        mem[(32 * _807) + (32 * _498) + (32 * _179) + (4 * ceil32(return_data.size)) + 420] = 64
        mem[(32 * _807) + (32 * _498) + (32 * _179) + (4 * ceil32(return_data.size)) + 452] = 2
        mem[(32 * _807) + (32 * _498) + (32 * _179) + (4 * ceil32(return_data.size)) + 484 len 0] = None
        require ext_code.size(arg5)
        staticcall arg5.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args _882, Array(len=2, data=mem[(32 * _807) + (32 * _498) + (32 * _179) + (4 * ceil32(return_data.size)) + 484 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _807) + (32 * _498) + (32 * _179) + (4 * ceil32(return_data.size)) + 384 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _807) + (32 * _498) + (32 * _179) + (6 * ceil32(return_data.size)) + 384
        require return_data.size >= 32
        _955 = mem[(32 * _807) + (32 * _498) + (32 * _179) + (4 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, _882) >> 32
        require mem[(32 * _807) + (32 * _498) + (32 * _179) + (4 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, _882) >> 32 <= 4294967296
        require mem[(32 * _807) + (32 * _498) + (32 * _179) + (4 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, _882) >> 32 + 32 <= return_data.size
        require mem[(32 * _807) + (32 * _498) + (32 * _179) + (4 * ceil32(return_data.size)) + mem[(32 * _807) + (32 * _498) + (32 * _179) + (4 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, _882) >> 32 + 384] <= 4294967296 and mem[(32 * _807) + (32 * _498) + (32 * _179) + (4 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, _882) >> 32 + (32 * mem[(32 * _807) + (32 * _498) + (32 * _179) + (4 * ceil32(return_data.size)) + mem[(32 * _807) + (32 * _498) + (32 * _179) + (4 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, _882) >> 32 + 384]) + 32 <= return_data.size
        mem[(32 * _807) + (32 * _498) + (32 * _179) + (6 * ceil32(return_data.size)) + 384] = mem[(32 * _807) + (32 * _498) + (32 * _179) + (4 * ceil32(return_data.size)) + mem[(32 * _807) + (32 * _498) + (32 * _179) + (4 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, _882) >> 32 + 384]
        mem[(32 * _807) + (32 * _498) + (32 * _179) + (6 * ceil32(return_data.size)) + 416 len floor32(mem[(32 * _807) + (32 * _498) + (32 * _179) + (4 * ceil32(return_data.size)) + _955 + 384])] = mem[(32 * _807) + (32 * _498) + (32 * _179) + (4 * ceil32(return_data.size)) + _955 + 416 len floor32(mem[(32 * _807) + (32 * _498) + (32 * _179) + (4 * ceil32(return_data.size)) + _955 + 384])]
        require 1 < mem[(32 * _807) + (32 * _498) + (32 * _179) + (6 * ceil32(return_data.size)) + 384]
        if mem[(32 * _807) + (32 * _498) + (32 * _179) + (6 * ceil32(return_data.size)) + 448] - arg2 <= 0:
            revert with 0, 'e01'
        stage = 2
        require ext_code.size(arg6)
        staticcall arg6.getPair(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(arg1), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[12 len 20]:
            revert with 0, 'e10'
        stage = 3
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).token1() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        if ext_call.return_data[12 len 20] == arg1:
            if ext_call.return_data[12 len 20] == arg1:
                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args _882, _882, address(this.address), 128, 64, address(arg5), arg2
            else:
                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args _882, 0, address(this.address), 128, 64, address(arg5), arg2
        else:
            if ext_call.return_data[12 len 20] == arg1:
                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, _882, address(this.address), 128, 64, address(arg5), arg2
            else:
                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, 0, address(this.address), 128, 64, address(arg5), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stage = 5
}



}
