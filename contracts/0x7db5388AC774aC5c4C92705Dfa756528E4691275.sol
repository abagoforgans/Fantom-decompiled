contract main {




// =====================  Runtime code  =====================


#
#  - pancakeCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#
address owner;

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function Balance(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function WithdrawAll(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'caller is not the owner!'
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
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function check(address arg1, uint256 arg2, address arg3, address arg4, address arg5) payable {
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
    _38 = mem[288 len 4], Mask(224, 32, arg2) >> 32
    require mem[288 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
    require mem[288 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
    require mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]
    _41 = mem[_38 + 288]
    mem[ceil32(return_data.size) + 320 len floor32(mem[_38 + 288])] = mem[_38 + 320 len floor32(mem[_38 + 288])]
    require 1 < mem[ceil32(return_data.size) + 288]
    _62 = mem[ceil32(return_data.size) + 352]
    mem[(32 * _41) + ceil32(return_data.size) + 320] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[(32 * _41) + ceil32(return_data.size) + 324] = _62
    mem[(32 * _41) + ceil32(return_data.size) + 356] = 64
    mem[(32 * _41) + ceil32(return_data.size) + 388] = 2
    mem[(32 * _41) + ceil32(return_data.size) + 420 len 0] = None
    require ext_code.size(arg5)
    staticcall arg5.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args _62, Array(len=2, data=mem[(32 * _41) + ceil32(return_data.size) + 420 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * _41) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * _41) + (2 * ceil32(return_data.size)) + 320
    require return_data.size >= 32
    _81 = mem[(32 * _41) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, _62) >> 32
    require mem[(32 * _41) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, _62) >> 32 <= 4294967296
    require mem[(32 * _41) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, _62) >> 32 + 32 <= return_data.size
    require mem[mem[(32 * _41) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, _62) >> 32 + (32 * _41) + ceil32(return_data.size) + 320] <= 4294967296 and mem[(32 * _41) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, _62) >> 32 + (32 * mem[mem[(32 * _41) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, _62) >> 32 + (32 * _41) + ceil32(return_data.size) + 320]) + 32 <= return_data.size
    mem[(32 * _41) + (2 * ceil32(return_data.size)) + 320] = mem[mem[(32 * _41) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, _62) >> 32 + (32 * _41) + ceil32(return_data.size) + 320]
    _84 = mem[_81 + (32 * _41) + ceil32(return_data.size) + 320]
    mem[(32 * _41) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_81 + (32 * _41) + ceil32(return_data.size) + 320])] = mem[_81 + (32 * _41) + ceil32(return_data.size) + 352 len floor32(mem[_81 + (32 * _41) + ceil32(return_data.size) + 320])]
    require 1 < mem[(32 * _41) + (2 * ceil32(return_data.size)) + 320]
    mem[(32 * _84) + (32 * _41) + (2 * ceil32(return_data.size)) + 352] = mem[(32 * _41) + (2 * ceil32(return_data.size)) + 384] - arg2
    return mem[(32 * _84) + (32 * _41) + (2 * ceil32(return_data.size)) + 352], _62
}

function start(uint256 arg1, address arg2, uint256 arg3, address arg4, address arg5, address arg6, address arg7) payable {
    require calldata.size - 4 >= 224
    if block.number > arg1:
        revert with 0, 'e00'
    mem[96] = 2
    mem[192] = 2
    mem[256] = arg4
    mem[128] = arg4
    mem[224] = arg2
    mem[160] = arg2
    mem[288] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[292] = arg3
    mem[324] = 64
    mem[356] = 2
    mem[388 len 0] = None
    require ext_code.size(arg5)
    staticcall arg5.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg3, Array(len=2, data=mem[388 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[288 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 288
    require return_data.size >= 32
    _94 = mem[288 len 4], Mask(224, 32, arg3) >> 32
    require mem[288 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
    require mem[288 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
    require mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]
    _97 = mem[_94 + 288]
    mem[ceil32(return_data.size) + 320 len floor32(mem[_94 + 288])] = mem[_94 + 320 len floor32(mem[_94 + 288])]
    require 1 < mem[ceil32(return_data.size) + 288]
    _172 = mem[ceil32(return_data.size) + 352]
    mem[(32 * _97) + ceil32(return_data.size) + 320] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[(32 * _97) + ceil32(return_data.size) + 324] = _172
    mem[(32 * _97) + ceil32(return_data.size) + 356] = 64
    mem[(32 * _97) + ceil32(return_data.size) + 388] = 2
    mem[(32 * _97) + ceil32(return_data.size) + 420 len 0] = None
    require ext_code.size(arg6)
    staticcall arg6.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args _172, Array(len=2, data=mem[(32 * _97) + ceil32(return_data.size) + 420 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * _97) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * _97) + (2 * ceil32(return_data.size)) + 320
    require return_data.size >= 32
    _245 = mem[(32 * _97) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, _172) >> 32
    require mem[(32 * _97) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, _172) >> 32 <= 4294967296
    require mem[(32 * _97) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, _172) >> 32 + 32 <= return_data.size
    require mem[mem[(32 * _97) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, _172) >> 32 + (32 * _97) + ceil32(return_data.size) + 320] <= 4294967296 and mem[(32 * _97) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, _172) >> 32 + (32 * mem[mem[(32 * _97) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, _172) >> 32 + (32 * _97) + ceil32(return_data.size) + 320]) + 32 <= return_data.size
    mem[(32 * _97) + (2 * ceil32(return_data.size)) + 320] = mem[mem[(32 * _97) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, _172) >> 32 + (32 * _97) + ceil32(return_data.size) + 320]
    mem[(32 * _97) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_245 + (32 * _97) + ceil32(return_data.size) + 320])] = mem[_245 + (32 * _97) + ceil32(return_data.size) + 352 len floor32(mem[_245 + (32 * _97) + ceil32(return_data.size) + 320])]
    require 1 < mem[(32 * _97) + (2 * ceil32(return_data.size)) + 320]
    if mem[(32 * _97) + (2 * ceil32(return_data.size)) + 384] - arg3 <= 0:
        revert with 0, 'e01'
    require ext_code.size(arg7)
    staticcall arg7.getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(arg2), arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[12 len 20]:
        revert with 0, 'e10'
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
    if not address(ext_call.return_data[0]):
        revert with 0, 'e11'
    if not ext_call.return_data[12 len 20]:
        revert with 0, 'e11'
    require ext_code.size(address(ext_call.return_data[0]))
    if arg2 == address(ext_call.return_data[0]):
        if arg2 == ext_call.return_data[12 len 20]:
            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args _172, _172, address(this.address), 128, 64, address(arg5), arg6
        else:
            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args _172, 0, address(this.address), 128, 64, address(arg5), arg6
    else:
        if arg2 == ext_call.return_data[12 len 20]:
            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, _172, address(this.address), 128, 64, address(arg5), arg6
        else:
            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, 0, address(this.address), 128, 64, address(arg5), arg6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_48c5b27e(?) payable {
    require calldata.size - 4 >= 128
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    mem[96] = arg3.length
    mem[128 len arg3.length] = arg3[all]
    mem[arg3.length + 128] = 0
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
    mem[ceil32(arg3.length) + 128] = 2
    mem[ceil32(arg3.length) + 160 len 64] = call.data[calldata.size len 64]
    mem[ceil32(arg3.length) + 224] = 2
    require 1 < Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
    mem[ceil32(arg3.length) + 192] = address(ext_call.return_data[0])
    mem[ceil32(arg3.length) + 256] = address(ext_call.return_data[0])
    require 0 < Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
    mem[ceil32(arg3.length) + 160] = address(ext_call.return_data[0])
    mem[ceil32(arg3.length) + 288] = address(ext_call.return_data[0])
    require arg3.length >= 64
    if not mem[140 len 20]:
        revert with 0, 'e12'
    if not mem[172 len 20]:
        revert with 0, 'e12'
    require ext_code.size(address(ext_call.return_data[0]))
    if not arg1:
        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args mem[172 len 20], arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[ceil32(arg3.length) + 320] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
        mem[ceil32(arg3.length) + 324] = arg2
        mem[ceil32(arg3.length) + 356] = 64
        mem[ceil32(arg3.length) + 388] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
        mem[ceil32(arg3.length) + 420 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
        require ext_code.size(mem[140 len 20])
        staticcall mem[140 len 20].getAmountsIn(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args mem[ceil32(arg3.length) + 324 len (32 * Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(arg3.length) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(arg3.length) + ceil32(return_data.size) + 320
        require return_data.size >= 32
        if not arg1:
            if not arg1:
                if not arg1:
                    _790 = mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg3.length) + 320] <= 4294967296 and mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg3.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg3.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg3.length) + 320]
                    _838 = mem[_790 + ceil32(arg3.length) + 320]
                    mem[ceil32(arg3.length) + ceil32(return_data.size) + 352 len floor32(mem[_790 + ceil32(arg3.length) + 320])] = mem[_790 + ceil32(arg3.length) + 352 len floor32(mem[_790 + ceil32(arg3.length) + 320])]
                    require 0 < mem[ceil32(arg3.length) + ceil32(return_data.size) + 320]
                    _1302 = mem[ceil32(arg3.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _838) + ceil32(arg3.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _838) + ceil32(arg3.length) + ceil32(return_data.size) + 356] = arg2
                    mem[(32 * _838) + ceil32(arg3.length) + ceil32(return_data.size) + 388] = _1302
                    mem[(32 * _838) + ceil32(arg3.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _838) + ceil32(arg3.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _838) + ceil32(arg3.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _838) + ceil32(arg3.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _838) + ceil32(arg3.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1302, Array(len=2, data=mem[(32 * _838) + ceil32(arg3.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _838) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _838) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _1734 = mem[(32 * _838) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _838) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _838) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _838) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _838) + ceil32(arg3.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _838) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _838) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _838) + ceil32(arg3.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _838) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _838) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _838) + ceil32(arg3.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _838) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_1734 + (32 * _838) + ceil32(arg3.length) + ceil32(return_data.size) + 352])] = mem[_1734 + (32 * _838) + ceil32(arg3.length) + ceil32(return_data.size) + 384 len floor32(mem[_1734 + (32 * _838) + ceil32(arg3.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _838) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _838) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 416] <= _1302:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg1:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _838) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 416] - _1302
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1302
                else:
                    _792 = mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg3.length) + 320] <= 4294967296 and mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg3.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg3.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg3.length) + 320]
                    _839 = mem[_792 + ceil32(arg3.length) + 320]
                    mem[ceil32(arg3.length) + ceil32(return_data.size) + 352 len floor32(mem[_792 + ceil32(arg3.length) + 320])] = mem[_792 + ceil32(arg3.length) + 352 len floor32(mem[_792 + ceil32(arg3.length) + 320])]
                    require 0 < mem[ceil32(arg3.length) + ceil32(return_data.size) + 320]
                    _1306 = mem[ceil32(arg3.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _839) + ceil32(arg3.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _839) + ceil32(arg3.length) + ceil32(return_data.size) + 356] = arg2
                    mem[(32 * _839) + ceil32(arg3.length) + ceil32(return_data.size) + 388] = _1306
                    mem[(32 * _839) + ceil32(arg3.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _839) + ceil32(arg3.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _839) + ceil32(arg3.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _839) + ceil32(arg3.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _839) + ceil32(arg3.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1306, Array(len=2, data=mem[(32 * _839) + ceil32(arg3.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _839) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _839) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _1736 = mem[(32 * _839) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _839) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _839) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _839) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _839) + ceil32(arg3.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _839) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _839) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _839) + ceil32(arg3.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _839) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _839) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _839) + ceil32(arg3.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _839) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_1736 + (32 * _839) + ceil32(arg3.length) + ceil32(return_data.size) + 352])] = mem[_1736 + (32 * _839) + ceil32(arg3.length) + ceil32(return_data.size) + 384 len floor32(mem[_1736 + (32 * _839) + ceil32(arg3.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _839) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _839) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 416] <= _1306:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg1:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _839) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 416] - _1306
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1306
            else:
                if not arg1:
                    _794 = mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg3.length) + 320] <= 4294967296 and mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg3.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg3.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg3.length) + 320]
                    _840 = mem[_794 + ceil32(arg3.length) + 320]
                    mem[ceil32(arg3.length) + ceil32(return_data.size) + 352 len floor32(mem[_794 + ceil32(arg3.length) + 320])] = mem[_794 + ceil32(arg3.length) + 352 len floor32(mem[_794 + ceil32(arg3.length) + 320])]
                    require 0 < mem[ceil32(arg3.length) + ceil32(return_data.size) + 320]
                    _1310 = mem[ceil32(arg3.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _840) + ceil32(arg3.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _840) + ceil32(arg3.length) + ceil32(return_data.size) + 356] = arg2
                    mem[(32 * _840) + ceil32(arg3.length) + ceil32(return_data.size) + 388] = _1310
                    mem[(32 * _840) + ceil32(arg3.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _840) + ceil32(arg3.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _840) + ceil32(arg3.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _840) + ceil32(arg3.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _840) + ceil32(arg3.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1310, Array(len=2, data=mem[(32 * _840) + ceil32(arg3.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _840) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _840) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _1738 = mem[(32 * _840) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _840) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _840) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _840) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _840) + ceil32(arg3.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _840) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _840) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _840) + ceil32(arg3.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _840) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _840) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _840) + ceil32(arg3.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _840) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_1738 + (32 * _840) + ceil32(arg3.length) + ceil32(return_data.size) + 352])] = mem[_1738 + (32 * _840) + ceil32(arg3.length) + ceil32(return_data.size) + 384 len floor32(mem[_1738 + (32 * _840) + ceil32(arg3.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _840) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _840) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 416] <= _1310:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg1:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _840) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 416] - _1310
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1310
                else:
                    _796 = mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg3.length) + 320] <= 4294967296 and mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg3.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg3.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg3.length) + 320]
                    _841 = mem[_796 + ceil32(arg3.length) + 320]
                    mem[ceil32(arg3.length) + ceil32(return_data.size) + 352 len floor32(mem[_796 + ceil32(arg3.length) + 320])] = mem[_796 + ceil32(arg3.length) + 352 len floor32(mem[_796 + ceil32(arg3.length) + 320])]
                    require 0 < mem[ceil32(arg3.length) + ceil32(return_data.size) + 320]
                    _1314 = mem[ceil32(arg3.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _841) + ceil32(arg3.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _841) + ceil32(arg3.length) + ceil32(return_data.size) + 356] = arg2
                    mem[(32 * _841) + ceil32(arg3.length) + ceil32(return_data.size) + 388] = _1314
                    mem[(32 * _841) + ceil32(arg3.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _841) + ceil32(arg3.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _841) + ceil32(arg3.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _841) + ceil32(arg3.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _841) + ceil32(arg3.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1314, Array(len=2, data=mem[(32 * _841) + ceil32(arg3.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _841) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _841) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _1740 = mem[(32 * _841) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _841) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _841) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _841) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _841) + ceil32(arg3.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _841) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _841) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _841) + ceil32(arg3.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _841) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _841) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _841) + ceil32(arg3.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _841) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_1740 + (32 * _841) + ceil32(arg3.length) + ceil32(return_data.size) + 352])] = mem[_1740 + (32 * _841) + ceil32(arg3.length) + ceil32(return_data.size) + 384 len floor32(mem[_1740 + (32 * _841) + ceil32(arg3.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _841) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _841) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 416] <= _1314:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg1:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _841) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 416] - _1314
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1314
        else:
            if not arg1:
                if not arg1:
                    _798 = mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg3.length) + 320] <= 4294967296 and mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg3.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg3.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg3.length) + 320]
                    _842 = mem[_798 + ceil32(arg3.length) + 320]
                    mem[ceil32(arg3.length) + ceil32(return_data.size) + 352 len floor32(mem[_798 + ceil32(arg3.length) + 320])] = mem[_798 + ceil32(arg3.length) + 352 len floor32(mem[_798 + ceil32(arg3.length) + 320])]
                    require 0 < mem[ceil32(arg3.length) + ceil32(return_data.size) + 320]
                    _1318 = mem[ceil32(arg3.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _842) + ceil32(arg3.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _842) + ceil32(arg3.length) + ceil32(return_data.size) + 356] = arg2
                    mem[(32 * _842) + ceil32(arg3.length) + ceil32(return_data.size) + 388] = _1318
                    mem[(32 * _842) + ceil32(arg3.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _842) + ceil32(arg3.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _842) + ceil32(arg3.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _842) + ceil32(arg3.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _842) + ceil32(arg3.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1318, Array(len=2, data=mem[(32 * _842) + ceil32(arg3.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _842) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _842) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _1742 = mem[(32 * _842) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _842) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _842) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _842) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _842) + ceil32(arg3.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _842) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _842) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _842) + ceil32(arg3.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _842) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _842) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _842) + ceil32(arg3.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _842) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_1742 + (32 * _842) + ceil32(arg3.length) + ceil32(return_data.size) + 352])] = mem[_1742 + (32 * _842) + ceil32(arg3.length) + ceil32(return_data.size) + 384 len floor32(mem[_1742 + (32 * _842) + ceil32(arg3.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _842) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _842) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 416] <= _1318:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg1:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _842) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 416] - _1318
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1318
                else:
                    _800 = mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg3.length) + 320] <= 4294967296 and mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg3.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg3.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg3.length) + 320]
                    _843 = mem[_800 + ceil32(arg3.length) + 320]
                    mem[ceil32(arg3.length) + ceil32(return_data.size) + 352 len floor32(mem[_800 + ceil32(arg3.length) + 320])] = mem[_800 + ceil32(arg3.length) + 352 len floor32(mem[_800 + ceil32(arg3.length) + 320])]
                    require 0 < mem[ceil32(arg3.length) + ceil32(return_data.size) + 320]
                    _1322 = mem[ceil32(arg3.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _843) + ceil32(arg3.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _843) + ceil32(arg3.length) + ceil32(return_data.size) + 356] = arg2
                    mem[(32 * _843) + ceil32(arg3.length) + ceil32(return_data.size) + 388] = _1322
                    mem[(32 * _843) + ceil32(arg3.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _843) + ceil32(arg3.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _843) + ceil32(arg3.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _843) + ceil32(arg3.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _843) + ceil32(arg3.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1322, Array(len=2, data=mem[(32 * _843) + ceil32(arg3.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _843) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _843) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _1744 = mem[(32 * _843) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _843) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _843) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _843) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _843) + ceil32(arg3.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _843) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _843) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _843) + ceil32(arg3.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _843) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _843) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _843) + ceil32(arg3.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _843) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_1744 + (32 * _843) + ceil32(arg3.length) + ceil32(return_data.size) + 352])] = mem[_1744 + (32 * _843) + ceil32(arg3.length) + ceil32(return_data.size) + 384 len floor32(mem[_1744 + (32 * _843) + ceil32(arg3.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _843) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _843) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 416] <= _1322:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg1:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _843) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 416] - _1322
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1322
            else:
                if not arg1:
                    _802 = mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg3.length) + 320] <= 4294967296 and mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg3.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg3.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg3.length) + 320]
                    _844 = mem[_802 + ceil32(arg3.length) + 320]
                    mem[ceil32(arg3.length) + ceil32(return_data.size) + 352 len floor32(mem[_802 + ceil32(arg3.length) + 320])] = mem[_802 + ceil32(arg3.length) + 352 len floor32(mem[_802 + ceil32(arg3.length) + 320])]
                    require 0 < mem[ceil32(arg3.length) + ceil32(return_data.size) + 320]
                    _1326 = mem[ceil32(arg3.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _844) + ceil32(arg3.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _844) + ceil32(arg3.length) + ceil32(return_data.size) + 356] = arg2
                    mem[(32 * _844) + ceil32(arg3.length) + ceil32(return_data.size) + 388] = _1326
                    mem[(32 * _844) + ceil32(arg3.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _844) + ceil32(arg3.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _844) + ceil32(arg3.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _844) + ceil32(arg3.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _844) + ceil32(arg3.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1326, Array(len=2, data=mem[(32 * _844) + ceil32(arg3.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _844) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _844) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _1746 = mem[(32 * _844) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _844) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _844) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _844) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _844) + ceil32(arg3.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _844) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _844) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _844) + ceil32(arg3.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _844) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _844) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _844) + ceil32(arg3.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _844) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_1746 + (32 * _844) + ceil32(arg3.length) + ceil32(return_data.size) + 352])] = mem[_1746 + (32 * _844) + ceil32(arg3.length) + ceil32(return_data.size) + 384 len floor32(mem[_1746 + (32 * _844) + ceil32(arg3.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _844) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _844) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 416] <= _1326:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg1:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _844) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 416] - _1326
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1326
                else:
                    _804 = mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg3.length) + 320] <= 4294967296 and mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg3.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg3.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg3.length) + 320]
                    _845 = mem[_804 + ceil32(arg3.length) + 320]
                    mem[ceil32(arg3.length) + ceil32(return_data.size) + 352 len floor32(mem[_804 + ceil32(arg3.length) + 320])] = mem[_804 + ceil32(arg3.length) + 352 len floor32(mem[_804 + ceil32(arg3.length) + 320])]
                    require 0 < mem[ceil32(arg3.length) + ceil32(return_data.size) + 320]
                    _1330 = mem[ceil32(arg3.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _845) + ceil32(arg3.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _845) + ceil32(arg3.length) + ceil32(return_data.size) + 356] = arg2
                    mem[(32 * _845) + ceil32(arg3.length) + ceil32(return_data.size) + 388] = _1330
                    mem[(32 * _845) + ceil32(arg3.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _845) + ceil32(arg3.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _845) + ceil32(arg3.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _845) + ceil32(arg3.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _845) + ceil32(arg3.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1330, Array(len=2, data=mem[(32 * _845) + ceil32(arg3.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _845) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _845) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _1748 = mem[(32 * _845) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _845) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _845) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _845) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _845) + ceil32(arg3.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _845) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _845) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _845) + ceil32(arg3.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _845) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _845) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _845) + ceil32(arg3.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _845) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_1748 + (32 * _845) + ceil32(arg3.length) + ceil32(return_data.size) + 352])] = mem[_1748 + (32 * _845) + ceil32(arg3.length) + ceil32(return_data.size) + 384 len floor32(mem[_1748 + (32 * _845) + ceil32(arg3.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _845) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _845) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 416] <= _1330:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg1:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _845) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 416] - _1330
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1330
    else:
        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args mem[172 len 20], arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[ceil32(arg3.length) + 320] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
        mem[ceil32(arg3.length) + 324] = arg1
        mem[ceil32(arg3.length) + 356] = 64
        mem[ceil32(arg3.length) + 388] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
        mem[ceil32(arg3.length) + 420 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
        require ext_code.size(mem[140 len 20])
        staticcall mem[140 len 20].getAmountsIn(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args mem[ceil32(arg3.length) + 324 len (32 * Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(arg3.length) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(arg3.length) + ceil32(return_data.size) + 320
        require return_data.size >= 32
        if not arg1:
            if not arg1:
                if not arg1:
                    _806 = mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg1) >> 32
                    require mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
                    require mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg1) >> 32 + ceil32(arg3.length) + 320] <= 4294967296 and mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg1) >> 32 + ceil32(arg3.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg3.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg1) >> 32 + ceil32(arg3.length) + 320]
                    _846 = mem[_806 + ceil32(arg3.length) + 320]
                    mem[ceil32(arg3.length) + ceil32(return_data.size) + 352 len floor32(mem[_806 + ceil32(arg3.length) + 320])] = mem[_806 + ceil32(arg3.length) + 352 len floor32(mem[_806 + ceil32(arg3.length) + 320])]
                    require 0 < mem[ceil32(arg3.length) + ceil32(return_data.size) + 320]
                    _1334 = mem[ceil32(arg3.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _846) + ceil32(arg3.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _846) + ceil32(arg3.length) + ceil32(return_data.size) + 356] = arg1
                    mem[(32 * _846) + ceil32(arg3.length) + ceil32(return_data.size) + 388] = _1334
                    mem[(32 * _846) + ceil32(arg3.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _846) + ceil32(arg3.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _846) + ceil32(arg3.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _846) + ceil32(arg3.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _846) + ceil32(arg3.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg1, _1334, Array(len=2, data=mem[(32 * _846) + ceil32(arg3.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _846) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _846) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _1750 = mem[(32 * _846) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg1) >> 32
                    require mem[(32 * _846) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
                    require mem[(32 * _846) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _846) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg1) >> 32 + (32 * _846) + ceil32(arg3.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _846) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[(32 * _846) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg1) >> 32 + (32 * _846) + ceil32(arg3.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _846) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _846) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg1) >> 32 + (32 * _846) + ceil32(arg3.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _846) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_1750 + (32 * _846) + ceil32(arg3.length) + ceil32(return_data.size) + 352])] = mem[_1750 + (32 * _846) + ceil32(arg3.length) + ceil32(return_data.size) + 384 len floor32(mem[_1750 + (32 * _846) + ceil32(arg3.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _846) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _846) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 416] <= _1334:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg1:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _846) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 416] - _1334
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1334
                else:
                    _808 = mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg1) >> 32
                    require mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
                    require mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg1) >> 32 + ceil32(arg3.length) + 320] <= 4294967296 and mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg1) >> 32 + ceil32(arg3.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg3.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg1) >> 32 + ceil32(arg3.length) + 320]
                    _847 = mem[_808 + ceil32(arg3.length) + 320]
                    mem[ceil32(arg3.length) + ceil32(return_data.size) + 352 len floor32(mem[_808 + ceil32(arg3.length) + 320])] = mem[_808 + ceil32(arg3.length) + 352 len floor32(mem[_808 + ceil32(arg3.length) + 320])]
                    require 0 < mem[ceil32(arg3.length) + ceil32(return_data.size) + 320]
                    _1338 = mem[ceil32(arg3.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _847) + ceil32(arg3.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _847) + ceil32(arg3.length) + ceil32(return_data.size) + 356] = arg1
                    mem[(32 * _847) + ceil32(arg3.length) + ceil32(return_data.size) + 388] = _1338
                    mem[(32 * _847) + ceil32(arg3.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _847) + ceil32(arg3.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _847) + ceil32(arg3.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _847) + ceil32(arg3.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _847) + ceil32(arg3.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg1, _1338, Array(len=2, data=mem[(32 * _847) + ceil32(arg3.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _847) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _847) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _1752 = mem[(32 * _847) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg1) >> 32
                    require mem[(32 * _847) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
                    require mem[(32 * _847) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _847) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg1) >> 32 + (32 * _847) + ceil32(arg3.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _847) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[(32 * _847) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg1) >> 32 + (32 * _847) + ceil32(arg3.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _847) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _847) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg1) >> 32 + (32 * _847) + ceil32(arg3.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _847) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_1752 + (32 * _847) + ceil32(arg3.length) + ceil32(return_data.size) + 352])] = mem[_1752 + (32 * _847) + ceil32(arg3.length) + ceil32(return_data.size) + 384 len floor32(mem[_1752 + (32 * _847) + ceil32(arg3.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _847) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _847) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 416] <= _1338:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg1:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _847) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 416] - _1338
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1338
            else:
                if not arg1:
                    _810 = mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg1) >> 32
                    require mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
                    require mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg1) >> 32 + ceil32(arg3.length) + 320] <= 4294967296 and mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg1) >> 32 + ceil32(arg3.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg3.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg1) >> 32 + ceil32(arg3.length) + 320]
                    _848 = mem[_810 + ceil32(arg3.length) + 320]
                    mem[ceil32(arg3.length) + ceil32(return_data.size) + 352 len floor32(mem[_810 + ceil32(arg3.length) + 320])] = mem[_810 + ceil32(arg3.length) + 352 len floor32(mem[_810 + ceil32(arg3.length) + 320])]
                    require 0 < mem[ceil32(arg3.length) + ceil32(return_data.size) + 320]
                    _1342 = mem[ceil32(arg3.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _848) + ceil32(arg3.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _848) + ceil32(arg3.length) + ceil32(return_data.size) + 356] = arg1
                    mem[(32 * _848) + ceil32(arg3.length) + ceil32(return_data.size) + 388] = _1342
                    mem[(32 * _848) + ceil32(arg3.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _848) + ceil32(arg3.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _848) + ceil32(arg3.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _848) + ceil32(arg3.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _848) + ceil32(arg3.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg1, _1342, Array(len=2, data=mem[(32 * _848) + ceil32(arg3.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _848) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _848) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _1754 = mem[(32 * _848) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg1) >> 32
                    require mem[(32 * _848) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
                    require mem[(32 * _848) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _848) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg1) >> 32 + (32 * _848) + ceil32(arg3.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _848) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[(32 * _848) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg1) >> 32 + (32 * _848) + ceil32(arg3.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _848) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _848) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg1) >> 32 + (32 * _848) + ceil32(arg3.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _848) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_1754 + (32 * _848) + ceil32(arg3.length) + ceil32(return_data.size) + 352])] = mem[_1754 + (32 * _848) + ceil32(arg3.length) + ceil32(return_data.size) + 384 len floor32(mem[_1754 + (32 * _848) + ceil32(arg3.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _848) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _848) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 416] <= _1342:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg1:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _848) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 416] - _1342
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1342
                else:
                    _812 = mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg1) >> 32
                    require mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
                    require mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg1) >> 32 + ceil32(arg3.length) + 320] <= 4294967296 and mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg1) >> 32 + ceil32(arg3.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg3.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg1) >> 32 + ceil32(arg3.length) + 320]
                    _849 = mem[_812 + ceil32(arg3.length) + 320]
                    mem[ceil32(arg3.length) + ceil32(return_data.size) + 352 len floor32(mem[_812 + ceil32(arg3.length) + 320])] = mem[_812 + ceil32(arg3.length) + 352 len floor32(mem[_812 + ceil32(arg3.length) + 320])]
                    require 0 < mem[ceil32(arg3.length) + ceil32(return_data.size) + 320]
                    _1346 = mem[ceil32(arg3.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _849) + ceil32(arg3.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _849) + ceil32(arg3.length) + ceil32(return_data.size) + 356] = arg1
                    mem[(32 * _849) + ceil32(arg3.length) + ceil32(return_data.size) + 388] = _1346
                    mem[(32 * _849) + ceil32(arg3.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _849) + ceil32(arg3.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _849) + ceil32(arg3.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _849) + ceil32(arg3.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _849) + ceil32(arg3.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg1, _1346, Array(len=2, data=mem[(32 * _849) + ceil32(arg3.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _849) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _849) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _1756 = mem[(32 * _849) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg1) >> 32
                    require mem[(32 * _849) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
                    require mem[(32 * _849) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _849) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg1) >> 32 + (32 * _849) + ceil32(arg3.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _849) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[(32 * _849) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg1) >> 32 + (32 * _849) + ceil32(arg3.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _849) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _849) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg1) >> 32 + (32 * _849) + ceil32(arg3.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _849) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_1756 + (32 * _849) + ceil32(arg3.length) + ceil32(return_data.size) + 352])] = mem[_1756 + (32 * _849) + ceil32(arg3.length) + ceil32(return_data.size) + 384 len floor32(mem[_1756 + (32 * _849) + ceil32(arg3.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _849) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _849) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 416] <= _1346:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg1:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _849) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 416] - _1346
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1346
        else:
            if not arg1:
                if not arg1:
                    _814 = mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg1) >> 32
                    require mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
                    require mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg1) >> 32 + ceil32(arg3.length) + 320] <= 4294967296 and mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg1) >> 32 + ceil32(arg3.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg3.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg1) >> 32 + ceil32(arg3.length) + 320]
                    _850 = mem[_814 + ceil32(arg3.length) + 320]
                    mem[ceil32(arg3.length) + ceil32(return_data.size) + 352 len floor32(mem[_814 + ceil32(arg3.length) + 320])] = mem[_814 + ceil32(arg3.length) + 352 len floor32(mem[_814 + ceil32(arg3.length) + 320])]
                    require 0 < mem[ceil32(arg3.length) + ceil32(return_data.size) + 320]
                    _1350 = mem[ceil32(arg3.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _850) + ceil32(arg3.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _850) + ceil32(arg3.length) + ceil32(return_data.size) + 356] = arg1
                    mem[(32 * _850) + ceil32(arg3.length) + ceil32(return_data.size) + 388] = _1350
                    mem[(32 * _850) + ceil32(arg3.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _850) + ceil32(arg3.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _850) + ceil32(arg3.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _850) + ceil32(arg3.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _850) + ceil32(arg3.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg1, _1350, Array(len=2, data=mem[(32 * _850) + ceil32(arg3.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _850) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _850) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _1758 = mem[(32 * _850) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg1) >> 32
                    require mem[(32 * _850) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
                    require mem[(32 * _850) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _850) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg1) >> 32 + (32 * _850) + ceil32(arg3.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _850) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[(32 * _850) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg1) >> 32 + (32 * _850) + ceil32(arg3.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _850) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _850) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg1) >> 32 + (32 * _850) + ceil32(arg3.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _850) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_1758 + (32 * _850) + ceil32(arg3.length) + ceil32(return_data.size) + 352])] = mem[_1758 + (32 * _850) + ceil32(arg3.length) + ceil32(return_data.size) + 384 len floor32(mem[_1758 + (32 * _850) + ceil32(arg3.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _850) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _850) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 416] <= _1350:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg1:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _850) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 416] - _1350
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1350
                else:
                    _816 = mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg1) >> 32
                    require mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
                    require mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg1) >> 32 + ceil32(arg3.length) + 320] <= 4294967296 and mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg1) >> 32 + ceil32(arg3.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg3.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg1) >> 32 + ceil32(arg3.length) + 320]
                    _851 = mem[_816 + ceil32(arg3.length) + 320]
                    mem[ceil32(arg3.length) + ceil32(return_data.size) + 352 len floor32(mem[_816 + ceil32(arg3.length) + 320])] = mem[_816 + ceil32(arg3.length) + 352 len floor32(mem[_816 + ceil32(arg3.length) + 320])]
                    require 0 < mem[ceil32(arg3.length) + ceil32(return_data.size) + 320]
                    _1354 = mem[ceil32(arg3.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _851) + ceil32(arg3.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _851) + ceil32(arg3.length) + ceil32(return_data.size) + 356] = arg1
                    mem[(32 * _851) + ceil32(arg3.length) + ceil32(return_data.size) + 388] = _1354
                    mem[(32 * _851) + ceil32(arg3.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _851) + ceil32(arg3.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _851) + ceil32(arg3.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _851) + ceil32(arg3.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _851) + ceil32(arg3.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg1, _1354, Array(len=2, data=mem[(32 * _851) + ceil32(arg3.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _851) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _851) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _1760 = mem[(32 * _851) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg1) >> 32
                    require mem[(32 * _851) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
                    require mem[(32 * _851) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _851) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg1) >> 32 + (32 * _851) + ceil32(arg3.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _851) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[(32 * _851) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg1) >> 32 + (32 * _851) + ceil32(arg3.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _851) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _851) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg1) >> 32 + (32 * _851) + ceil32(arg3.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _851) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_1760 + (32 * _851) + ceil32(arg3.length) + ceil32(return_data.size) + 352])] = mem[_1760 + (32 * _851) + ceil32(arg3.length) + ceil32(return_data.size) + 384 len floor32(mem[_1760 + (32 * _851) + ceil32(arg3.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _851) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _851) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 416] <= _1354:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg1:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _851) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 416] - _1354
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1354
            else:
                if not arg1:
                    _818 = mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg1) >> 32
                    require mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
                    require mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg1) >> 32 + ceil32(arg3.length) + 320] <= 4294967296 and mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg1) >> 32 + ceil32(arg3.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg3.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg1) >> 32 + ceil32(arg3.length) + 320]
                    _852 = mem[_818 + ceil32(arg3.length) + 320]
                    mem[ceil32(arg3.length) + ceil32(return_data.size) + 352 len floor32(mem[_818 + ceil32(arg3.length) + 320])] = mem[_818 + ceil32(arg3.length) + 352 len floor32(mem[_818 + ceil32(arg3.length) + 320])]
                    require 0 < mem[ceil32(arg3.length) + ceil32(return_data.size) + 320]
                    _1358 = mem[ceil32(arg3.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _852) + ceil32(arg3.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _852) + ceil32(arg3.length) + ceil32(return_data.size) + 356] = arg1
                    mem[(32 * _852) + ceil32(arg3.length) + ceil32(return_data.size) + 388] = _1358
                    mem[(32 * _852) + ceil32(arg3.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _852) + ceil32(arg3.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _852) + ceil32(arg3.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _852) + ceil32(arg3.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _852) + ceil32(arg3.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg1, _1358, Array(len=2, data=mem[(32 * _852) + ceil32(arg3.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _852) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _852) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _1762 = mem[(32 * _852) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg1) >> 32
                    require mem[(32 * _852) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
                    require mem[(32 * _852) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _852) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg1) >> 32 + (32 * _852) + ceil32(arg3.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _852) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[(32 * _852) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg1) >> 32 + (32 * _852) + ceil32(arg3.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _852) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _852) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg1) >> 32 + (32 * _852) + ceil32(arg3.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _852) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_1762 + (32 * _852) + ceil32(arg3.length) + ceil32(return_data.size) + 352])] = mem[_1762 + (32 * _852) + ceil32(arg3.length) + ceil32(return_data.size) + 384 len floor32(mem[_1762 + (32 * _852) + ceil32(arg3.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _852) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _852) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 416] <= _1358:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg1:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _852) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 416] - _1358
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1358
                else:
                    _820 = mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg1) >> 32
                    require mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
                    require mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg1) >> 32 + ceil32(arg3.length) + 320] <= 4294967296 and mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg1) >> 32 + ceil32(arg3.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg3.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg1) >> 32 + ceil32(arg3.length) + 320]
                    _853 = mem[_820 + ceil32(arg3.length) + 320]
                    mem[ceil32(arg3.length) + ceil32(return_data.size) + 352 len floor32(mem[_820 + ceil32(arg3.length) + 320])] = mem[_820 + ceil32(arg3.length) + 352 len floor32(mem[_820 + ceil32(arg3.length) + 320])]
                    require 0 < mem[ceil32(arg3.length) + ceil32(return_data.size) + 320]
                    _1362 = mem[ceil32(arg3.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _853) + ceil32(arg3.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _853) + ceil32(arg3.length) + ceil32(return_data.size) + 356] = arg1
                    mem[(32 * _853) + ceil32(arg3.length) + ceil32(return_data.size) + 388] = _1362
                    mem[(32 * _853) + ceil32(arg3.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _853) + ceil32(arg3.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _853) + ceil32(arg3.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _853) + ceil32(arg3.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _853) + ceil32(arg3.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg1, _1362, Array(len=2, data=mem[(32 * _853) + ceil32(arg3.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _853) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _853) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _1764 = mem[(32 * _853) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg1) >> 32
                    require mem[(32 * _853) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
                    require mem[(32 * _853) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _853) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg1) >> 32 + (32 * _853) + ceil32(arg3.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _853) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[(32 * _853) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg1) >> 32 + (32 * _853) + ceil32(arg3.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _853) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _853) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg1) >> 32 + (32 * _853) + ceil32(arg3.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _853) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_1764 + (32 * _853) + ceil32(arg3.length) + ceil32(return_data.size) + 352])] = mem[_1764 + (32 * _853) + ceil32(arg3.length) + ceil32(return_data.size) + 384 len floor32(mem[_1764 + (32 * _853) + ceil32(arg3.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _853) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _853) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 416] <= _1362:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg1:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _853) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 416] - _1362
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1362
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function elkCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[96] = arg4.length
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
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
    mem[ceil32(arg4.length) + 128] = 2
    mem[ceil32(arg4.length) + 160 len 64] = call.data[calldata.size len 64]
    mem[ceil32(arg4.length) + 224] = 2
    require 1 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
    mem[ceil32(arg4.length) + 192] = address(ext_call.return_data[0])
    mem[ceil32(arg4.length) + 256] = address(ext_call.return_data[0])
    require 0 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
    mem[ceil32(arg4.length) + 160] = address(ext_call.return_data[0])
    mem[ceil32(arg4.length) + 288] = address(ext_call.return_data[0])
    require arg4.length >= 64
    if not mem[140 len 20]:
        revert with 0, 'e12'
    if not mem[172 len 20]:
        revert with 0, 'e12'
    require ext_code.size(address(ext_call.return_data[0]))
    if not arg2:
        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args mem[172 len 20], arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[ceil32(arg4.length) + 320] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
        mem[ceil32(arg4.length) + 324] = arg3
        mem[ceil32(arg4.length) + 356] = 64
        mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
        mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
        require ext_code.size(mem[140 len 20])
        staticcall mem[140 len 20].getAmountsIn(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args mem[ceil32(arg4.length) + 324 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(arg4.length) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 320
        require return_data.size >= 32
        if not arg2:
            if not arg2:
                if not arg2:
                    _790 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]
                    _838 = mem[_790 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_790 + ceil32(arg4.length) + 320])] = mem[_790 + ceil32(arg4.length) + 352 len floor32(mem[_790 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1302 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _838) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _838) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg3
                    mem[(32 * _838) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1302
                    mem[(32 * _838) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _838) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _838) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _838) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _838) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1302, Array(len=2, data=mem[(32 * _838) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _838) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _838) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _1734 = mem[(32 * _838) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _838) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _838) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _838) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _838) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _838) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _838) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _838) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _838) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _838) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _838) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _838) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_1734 + (32 * _838) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_1734 + (32 * _838) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_1734 + (32 * _838) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _838) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _838) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1302:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _838) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1302
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1302
                else:
                    _792 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]
                    _839 = mem[_792 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_792 + ceil32(arg4.length) + 320])] = mem[_792 + ceil32(arg4.length) + 352 len floor32(mem[_792 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1306 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _839) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _839) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg3
                    mem[(32 * _839) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1306
                    mem[(32 * _839) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _839) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _839) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _839) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _839) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1306, Array(len=2, data=mem[(32 * _839) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _839) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _839) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _1736 = mem[(32 * _839) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _839) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _839) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _839) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _839) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _839) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _839) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _839) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _839) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _839) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _839) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _839) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_1736 + (32 * _839) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_1736 + (32 * _839) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_1736 + (32 * _839) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _839) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _839) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1306:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _839) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1306
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1306
            else:
                if not arg2:
                    _794 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]
                    _840 = mem[_794 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_794 + ceil32(arg4.length) + 320])] = mem[_794 + ceil32(arg4.length) + 352 len floor32(mem[_794 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1310 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _840) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _840) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg3
                    mem[(32 * _840) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1310
                    mem[(32 * _840) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _840) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _840) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _840) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _840) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1310, Array(len=2, data=mem[(32 * _840) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _840) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _840) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _1738 = mem[(32 * _840) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _840) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _840) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _840) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _840) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _840) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _840) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _840) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _840) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _840) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _840) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _840) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_1738 + (32 * _840) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_1738 + (32 * _840) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_1738 + (32 * _840) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _840) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _840) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1310:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _840) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1310
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1310
                else:
                    _796 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]
                    _841 = mem[_796 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_796 + ceil32(arg4.length) + 320])] = mem[_796 + ceil32(arg4.length) + 352 len floor32(mem[_796 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1314 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _841) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _841) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg3
                    mem[(32 * _841) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1314
                    mem[(32 * _841) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _841) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _841) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _841) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _841) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1314, Array(len=2, data=mem[(32 * _841) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _841) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _841) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _1740 = mem[(32 * _841) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _841) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _841) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _841) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _841) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _841) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _841) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _841) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _841) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _841) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _841) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _841) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_1740 + (32 * _841) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_1740 + (32 * _841) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_1740 + (32 * _841) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _841) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _841) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1314:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _841) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1314
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1314
        else:
            if not arg2:
                if not arg2:
                    _798 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]
                    _842 = mem[_798 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_798 + ceil32(arg4.length) + 320])] = mem[_798 + ceil32(arg4.length) + 352 len floor32(mem[_798 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1318 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _842) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _842) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg3
                    mem[(32 * _842) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1318
                    mem[(32 * _842) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _842) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _842) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _842) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _842) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1318, Array(len=2, data=mem[(32 * _842) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _842) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _842) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _1742 = mem[(32 * _842) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _842) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _842) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _842) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _842) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _842) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _842) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _842) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _842) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _842) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _842) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _842) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_1742 + (32 * _842) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_1742 + (32 * _842) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_1742 + (32 * _842) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _842) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _842) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1318:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _842) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1318
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1318
                else:
                    _800 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]
                    _843 = mem[_800 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_800 + ceil32(arg4.length) + 320])] = mem[_800 + ceil32(arg4.length) + 352 len floor32(mem[_800 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1322 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _843) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _843) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg3
                    mem[(32 * _843) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1322
                    mem[(32 * _843) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _843) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _843) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _843) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _843) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1322, Array(len=2, data=mem[(32 * _843) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _843) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _843) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _1744 = mem[(32 * _843) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _843) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _843) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _843) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _843) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _843) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _843) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _843) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _843) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _843) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _843) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _843) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_1744 + (32 * _843) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_1744 + (32 * _843) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_1744 + (32 * _843) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _843) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _843) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1322:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _843) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1322
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1322
            else:
                if not arg2:
                    _802 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]
                    _844 = mem[_802 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_802 + ceil32(arg4.length) + 320])] = mem[_802 + ceil32(arg4.length) + 352 len floor32(mem[_802 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1326 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _844) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _844) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg3
                    mem[(32 * _844) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1326
                    mem[(32 * _844) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _844) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _844) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _844) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _844) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1326, Array(len=2, data=mem[(32 * _844) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _844) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _844) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _1746 = mem[(32 * _844) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _844) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _844) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _844) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _844) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _844) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _844) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _844) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _844) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _844) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _844) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _844) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_1746 + (32 * _844) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_1746 + (32 * _844) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_1746 + (32 * _844) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _844) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _844) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1326:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _844) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1326
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1326
                else:
                    _804 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]
                    _845 = mem[_804 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_804 + ceil32(arg4.length) + 320])] = mem[_804 + ceil32(arg4.length) + 352 len floor32(mem[_804 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1330 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _845) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _845) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg3
                    mem[(32 * _845) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1330
                    mem[(32 * _845) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _845) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _845) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _845) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _845) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1330, Array(len=2, data=mem[(32 * _845) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _845) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _845) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _1748 = mem[(32 * _845) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _845) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _845) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _845) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _845) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _845) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _845) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _845) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _845) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _845) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _845) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _845) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_1748 + (32 * _845) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_1748 + (32 * _845) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_1748 + (32 * _845) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _845) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _845) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1330:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _845) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1330
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1330
    else:
        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args mem[172 len 20], arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[ceil32(arg4.length) + 320] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
        mem[ceil32(arg4.length) + 324] = arg2
        mem[ceil32(arg4.length) + 356] = 64
        mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
        mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
        require ext_code.size(mem[140 len 20])
        staticcall mem[140 len 20].getAmountsIn(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args mem[ceil32(arg4.length) + 324 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(arg4.length) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 320
        require return_data.size >= 32
        if not arg2:
            if not arg2:
                if not arg2:
                    _806 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]
                    _846 = mem[_806 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_806 + ceil32(arg4.length) + 320])] = mem[_806 + ceil32(arg4.length) + 352 len floor32(mem[_806 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1334 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _846) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _846) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg2
                    mem[(32 * _846) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1334
                    mem[(32 * _846) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _846) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _846) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _846) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _846) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1334, Array(len=2, data=mem[(32 * _846) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _846) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _846) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _1750 = mem[(32 * _846) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _846) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _846) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _846) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _846) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _846) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _846) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _846) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _846) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _846) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _846) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _846) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_1750 + (32 * _846) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_1750 + (32 * _846) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_1750 + (32 * _846) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _846) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _846) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1334:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _846) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1334
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1334
                else:
                    _808 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]
                    _847 = mem[_808 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_808 + ceil32(arg4.length) + 320])] = mem[_808 + ceil32(arg4.length) + 352 len floor32(mem[_808 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1338 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _847) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _847) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg2
                    mem[(32 * _847) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1338
                    mem[(32 * _847) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _847) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _847) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _847) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _847) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1338, Array(len=2, data=mem[(32 * _847) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _847) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _847) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _1752 = mem[(32 * _847) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _847) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _847) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _847) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _847) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _847) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _847) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _847) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _847) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _847) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _847) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _847) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_1752 + (32 * _847) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_1752 + (32 * _847) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_1752 + (32 * _847) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _847) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _847) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1338:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _847) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1338
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1338
            else:
                if not arg2:
                    _810 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]
                    _848 = mem[_810 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_810 + ceil32(arg4.length) + 320])] = mem[_810 + ceil32(arg4.length) + 352 len floor32(mem[_810 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1342 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _848) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _848) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg2
                    mem[(32 * _848) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1342
                    mem[(32 * _848) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _848) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _848) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _848) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _848) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1342, Array(len=2, data=mem[(32 * _848) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _848) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _848) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _1754 = mem[(32 * _848) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _848) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _848) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _848) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _848) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _848) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _848) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _848) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _848) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _848) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _848) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _848) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_1754 + (32 * _848) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_1754 + (32 * _848) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_1754 + (32 * _848) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _848) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _848) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1342:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _848) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1342
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1342
                else:
                    _812 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]
                    _849 = mem[_812 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_812 + ceil32(arg4.length) + 320])] = mem[_812 + ceil32(arg4.length) + 352 len floor32(mem[_812 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1346 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _849) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _849) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg2
                    mem[(32 * _849) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1346
                    mem[(32 * _849) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _849) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _849) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _849) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _849) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1346, Array(len=2, data=mem[(32 * _849) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _849) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _849) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _1756 = mem[(32 * _849) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _849) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _849) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _849) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _849) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _849) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _849) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _849) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _849) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _849) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _849) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _849) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_1756 + (32 * _849) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_1756 + (32 * _849) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_1756 + (32 * _849) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _849) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _849) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1346:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _849) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1346
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1346
        else:
            if not arg2:
                if not arg2:
                    _814 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]
                    _850 = mem[_814 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_814 + ceil32(arg4.length) + 320])] = mem[_814 + ceil32(arg4.length) + 352 len floor32(mem[_814 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1350 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _850) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _850) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg2
                    mem[(32 * _850) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1350
                    mem[(32 * _850) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _850) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _850) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _850) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _850) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1350, Array(len=2, data=mem[(32 * _850) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _850) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _850) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _1758 = mem[(32 * _850) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _850) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _850) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _850) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _850) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _850) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _850) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _850) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _850) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _850) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _850) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _850) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_1758 + (32 * _850) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_1758 + (32 * _850) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_1758 + (32 * _850) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _850) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _850) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1350:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _850) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1350
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1350
                else:
                    _816 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]
                    _851 = mem[_816 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_816 + ceil32(arg4.length) + 320])] = mem[_816 + ceil32(arg4.length) + 352 len floor32(mem[_816 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1354 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _851) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _851) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg2
                    mem[(32 * _851) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1354
                    mem[(32 * _851) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _851) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _851) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _851) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _851) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1354, Array(len=2, data=mem[(32 * _851) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _851) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _851) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _1760 = mem[(32 * _851) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _851) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _851) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _851) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _851) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _851) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _851) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _851) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _851) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _851) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _851) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _851) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_1760 + (32 * _851) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_1760 + (32 * _851) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_1760 + (32 * _851) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _851) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _851) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1354:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _851) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1354
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1354
            else:
                if not arg2:
                    _818 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]
                    _852 = mem[_818 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_818 + ceil32(arg4.length) + 320])] = mem[_818 + ceil32(arg4.length) + 352 len floor32(mem[_818 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1358 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _852) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _852) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg2
                    mem[(32 * _852) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1358
                    mem[(32 * _852) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _852) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _852) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _852) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _852) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1358, Array(len=2, data=mem[(32 * _852) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _852) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _852) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _1762 = mem[(32 * _852) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _852) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _852) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _852) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _852) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _852) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _852) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _852) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _852) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _852) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _852) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _852) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_1762 + (32 * _852) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_1762 + (32 * _852) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_1762 + (32 * _852) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _852) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _852) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1358:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _852) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1358
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1358
                else:
                    _820 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]
                    _853 = mem[_820 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_820 + ceil32(arg4.length) + 320])] = mem[_820 + ceil32(arg4.length) + 352 len floor32(mem[_820 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1362 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _853) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _853) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg2
                    mem[(32 * _853) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1362
                    mem[(32 * _853) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _853) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _853) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _853) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _853) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1362, Array(len=2, data=mem[(32 * _853) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _853) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _853) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _1764 = mem[(32 * _853) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _853) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _853) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _853) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _853) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _853) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _853) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _853) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _853) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _853) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _853) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _853) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_1764 + (32 * _853) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_1764 + (32 * _853) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_1764 + (32 * _853) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _853) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _853) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1362:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _853) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1362
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1362
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function cafeCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[96] = arg4.length
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
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
    mem[ceil32(arg4.length) + 128] = 2
    mem[ceil32(arg4.length) + 160 len 64] = call.data[calldata.size len 64]
    mem[ceil32(arg4.length) + 224] = 2
    require 1 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
    mem[ceil32(arg4.length) + 192] = address(ext_call.return_data[0])
    mem[ceil32(arg4.length) + 256] = address(ext_call.return_data[0])
    require 0 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
    mem[ceil32(arg4.length) + 160] = address(ext_call.return_data[0])
    mem[ceil32(arg4.length) + 288] = address(ext_call.return_data[0])
    require arg4.length >= 64
    if not mem[140 len 20]:
        revert with 0, 'e12'
    if not mem[172 len 20]:
        revert with 0, 'e12'
    require ext_code.size(address(ext_call.return_data[0]))
    if not arg2:
        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args mem[172 len 20], arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[ceil32(arg4.length) + 320] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
        mem[ceil32(arg4.length) + 324] = arg3
        mem[ceil32(arg4.length) + 356] = 64
        mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
        mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
        require ext_code.size(mem[140 len 20])
        staticcall mem[140 len 20].getAmountsIn(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args mem[ceil32(arg4.length) + 324 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(arg4.length) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 320
        require return_data.size >= 32
        if not arg2:
            if not arg2:
                if not arg2:
                    _790 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]
                    _838 = mem[_790 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_790 + ceil32(arg4.length) + 320])] = mem[_790 + ceil32(arg4.length) + 352 len floor32(mem[_790 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1302 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _838) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _838) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg3
                    mem[(32 * _838) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1302
                    mem[(32 * _838) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _838) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _838) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _838) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _838) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1302, Array(len=2, data=mem[(32 * _838) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _838) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _838) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _1734 = mem[(32 * _838) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _838) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _838) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _838) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _838) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _838) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _838) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _838) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _838) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _838) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _838) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _838) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_1734 + (32 * _838) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_1734 + (32 * _838) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_1734 + (32 * _838) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _838) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _838) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1302:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _838) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1302
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1302
                else:
                    _792 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]
                    _839 = mem[_792 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_792 + ceil32(arg4.length) + 320])] = mem[_792 + ceil32(arg4.length) + 352 len floor32(mem[_792 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1306 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _839) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _839) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg3
                    mem[(32 * _839) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1306
                    mem[(32 * _839) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _839) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _839) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _839) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _839) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1306, Array(len=2, data=mem[(32 * _839) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _839) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _839) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _1736 = mem[(32 * _839) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _839) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _839) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _839) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _839) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _839) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _839) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _839) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _839) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _839) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _839) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _839) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_1736 + (32 * _839) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_1736 + (32 * _839) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_1736 + (32 * _839) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _839) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _839) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1306:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _839) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1306
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1306
            else:
                if not arg2:
                    _794 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]
                    _840 = mem[_794 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_794 + ceil32(arg4.length) + 320])] = mem[_794 + ceil32(arg4.length) + 352 len floor32(mem[_794 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1310 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _840) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _840) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg3
                    mem[(32 * _840) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1310
                    mem[(32 * _840) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _840) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _840) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _840) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _840) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1310, Array(len=2, data=mem[(32 * _840) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _840) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _840) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _1738 = mem[(32 * _840) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _840) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _840) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _840) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _840) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _840) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _840) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _840) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _840) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _840) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _840) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _840) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_1738 + (32 * _840) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_1738 + (32 * _840) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_1738 + (32 * _840) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _840) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _840) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1310:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _840) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1310
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1310
                else:
                    _796 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]
                    _841 = mem[_796 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_796 + ceil32(arg4.length) + 320])] = mem[_796 + ceil32(arg4.length) + 352 len floor32(mem[_796 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1314 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _841) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _841) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg3
                    mem[(32 * _841) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1314
                    mem[(32 * _841) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _841) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _841) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _841) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _841) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1314, Array(len=2, data=mem[(32 * _841) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _841) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _841) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _1740 = mem[(32 * _841) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _841) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _841) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _841) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _841) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _841) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _841) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _841) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _841) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _841) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _841) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _841) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_1740 + (32 * _841) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_1740 + (32 * _841) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_1740 + (32 * _841) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _841) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _841) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1314:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _841) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1314
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1314
        else:
            if not arg2:
                if not arg2:
                    _798 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]
                    _842 = mem[_798 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_798 + ceil32(arg4.length) + 320])] = mem[_798 + ceil32(arg4.length) + 352 len floor32(mem[_798 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1318 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _842) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _842) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg3
                    mem[(32 * _842) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1318
                    mem[(32 * _842) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _842) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _842) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _842) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _842) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1318, Array(len=2, data=mem[(32 * _842) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _842) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _842) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _1742 = mem[(32 * _842) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _842) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _842) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _842) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _842) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _842) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _842) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _842) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _842) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _842) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _842) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _842) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_1742 + (32 * _842) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_1742 + (32 * _842) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_1742 + (32 * _842) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _842) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _842) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1318:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _842) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1318
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1318
                else:
                    _800 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]
                    _843 = mem[_800 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_800 + ceil32(arg4.length) + 320])] = mem[_800 + ceil32(arg4.length) + 352 len floor32(mem[_800 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1322 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _843) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _843) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg3
                    mem[(32 * _843) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1322
                    mem[(32 * _843) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _843) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _843) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _843) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _843) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1322, Array(len=2, data=mem[(32 * _843) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _843) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _843) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _1744 = mem[(32 * _843) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _843) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _843) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _843) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _843) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _843) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _843) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _843) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _843) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _843) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _843) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _843) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_1744 + (32 * _843) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_1744 + (32 * _843) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_1744 + (32 * _843) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _843) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _843) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1322:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _843) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1322
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1322
            else:
                if not arg2:
                    _802 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]
                    _844 = mem[_802 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_802 + ceil32(arg4.length) + 320])] = mem[_802 + ceil32(arg4.length) + 352 len floor32(mem[_802 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1326 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _844) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _844) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg3
                    mem[(32 * _844) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1326
                    mem[(32 * _844) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _844) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _844) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _844) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _844) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1326, Array(len=2, data=mem[(32 * _844) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _844) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _844) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _1746 = mem[(32 * _844) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _844) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _844) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _844) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _844) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _844) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _844) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _844) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _844) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _844) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _844) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _844) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_1746 + (32 * _844) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_1746 + (32 * _844) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_1746 + (32 * _844) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _844) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _844) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1326:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _844) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1326
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1326
                else:
                    _804 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]
                    _845 = mem[_804 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_804 + ceil32(arg4.length) + 320])] = mem[_804 + ceil32(arg4.length) + 352 len floor32(mem[_804 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1330 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _845) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _845) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg3
                    mem[(32 * _845) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1330
                    mem[(32 * _845) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _845) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _845) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _845) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _845) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1330, Array(len=2, data=mem[(32 * _845) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _845) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _845) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _1748 = mem[(32 * _845) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _845) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _845) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _845) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _845) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _845) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _845) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _845) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _845) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _845) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _845) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _845) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_1748 + (32 * _845) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_1748 + (32 * _845) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_1748 + (32 * _845) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _845) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _845) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1330:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _845) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1330
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1330
    else:
        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args mem[172 len 20], arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[ceil32(arg4.length) + 320] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
        mem[ceil32(arg4.length) + 324] = arg2
        mem[ceil32(arg4.length) + 356] = 64
        mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
        mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
        require ext_code.size(mem[140 len 20])
        staticcall mem[140 len 20].getAmountsIn(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args mem[ceil32(arg4.length) + 324 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(arg4.length) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 320
        require return_data.size >= 32
        if not arg2:
            if not arg2:
                if not arg2:
                    _806 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]
                    _846 = mem[_806 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_806 + ceil32(arg4.length) + 320])] = mem[_806 + ceil32(arg4.length) + 352 len floor32(mem[_806 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1334 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _846) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _846) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg2
                    mem[(32 * _846) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1334
                    mem[(32 * _846) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _846) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _846) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _846) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _846) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1334, Array(len=2, data=mem[(32 * _846) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _846) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _846) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _1750 = mem[(32 * _846) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _846) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _846) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _846) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _846) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _846) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _846) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _846) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _846) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _846) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _846) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _846) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_1750 + (32 * _846) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_1750 + (32 * _846) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_1750 + (32 * _846) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _846) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _846) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1334:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _846) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1334
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1334
                else:
                    _808 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]
                    _847 = mem[_808 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_808 + ceil32(arg4.length) + 320])] = mem[_808 + ceil32(arg4.length) + 352 len floor32(mem[_808 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1338 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _847) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _847) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg2
                    mem[(32 * _847) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1338
                    mem[(32 * _847) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _847) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _847) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _847) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _847) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1338, Array(len=2, data=mem[(32 * _847) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _847) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _847) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _1752 = mem[(32 * _847) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _847) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _847) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _847) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _847) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _847) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _847) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _847) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _847) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _847) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _847) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _847) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_1752 + (32 * _847) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_1752 + (32 * _847) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_1752 + (32 * _847) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _847) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _847) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1338:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _847) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1338
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1338
            else:
                if not arg2:
                    _810 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]
                    _848 = mem[_810 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_810 + ceil32(arg4.length) + 320])] = mem[_810 + ceil32(arg4.length) + 352 len floor32(mem[_810 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1342 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _848) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _848) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg2
                    mem[(32 * _848) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1342
                    mem[(32 * _848) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _848) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _848) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _848) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _848) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1342, Array(len=2, data=mem[(32 * _848) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _848) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _848) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _1754 = mem[(32 * _848) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _848) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _848) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _848) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _848) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _848) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _848) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _848) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _848) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _848) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _848) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _848) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_1754 + (32 * _848) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_1754 + (32 * _848) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_1754 + (32 * _848) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _848) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _848) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1342:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _848) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1342
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1342
                else:
                    _812 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]
                    _849 = mem[_812 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_812 + ceil32(arg4.length) + 320])] = mem[_812 + ceil32(arg4.length) + 352 len floor32(mem[_812 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1346 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _849) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _849) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg2
                    mem[(32 * _849) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1346
                    mem[(32 * _849) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _849) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _849) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _849) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _849) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1346, Array(len=2, data=mem[(32 * _849) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _849) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _849) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _1756 = mem[(32 * _849) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _849) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _849) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _849) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _849) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _849) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _849) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _849) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _849) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _849) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _849) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _849) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_1756 + (32 * _849) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_1756 + (32 * _849) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_1756 + (32 * _849) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _849) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _849) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1346:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _849) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1346
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1346
        else:
            if not arg2:
                if not arg2:
                    _814 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]
                    _850 = mem[_814 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_814 + ceil32(arg4.length) + 320])] = mem[_814 + ceil32(arg4.length) + 352 len floor32(mem[_814 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1350 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _850) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _850) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg2
                    mem[(32 * _850) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1350
                    mem[(32 * _850) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _850) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _850) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _850) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _850) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1350, Array(len=2, data=mem[(32 * _850) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _850) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _850) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _1758 = mem[(32 * _850) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _850) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _850) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _850) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _850) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _850) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _850) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _850) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _850) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _850) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _850) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _850) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_1758 + (32 * _850) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_1758 + (32 * _850) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_1758 + (32 * _850) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _850) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _850) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1350:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _850) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1350
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1350
                else:
                    _816 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]
                    _851 = mem[_816 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_816 + ceil32(arg4.length) + 320])] = mem[_816 + ceil32(arg4.length) + 352 len floor32(mem[_816 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1354 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _851) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _851) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg2
                    mem[(32 * _851) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1354
                    mem[(32 * _851) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _851) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _851) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _851) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _851) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1354, Array(len=2, data=mem[(32 * _851) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _851) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _851) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _1760 = mem[(32 * _851) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _851) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _851) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _851) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _851) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _851) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _851) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _851) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _851) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _851) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _851) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _851) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_1760 + (32 * _851) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_1760 + (32 * _851) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_1760 + (32 * _851) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _851) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _851) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1354:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _851) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1354
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1354
            else:
                if not arg2:
                    _818 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]
                    _852 = mem[_818 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_818 + ceil32(arg4.length) + 320])] = mem[_818 + ceil32(arg4.length) + 352 len floor32(mem[_818 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1358 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _852) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _852) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg2
                    mem[(32 * _852) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1358
                    mem[(32 * _852) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _852) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _852) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _852) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _852) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1358, Array(len=2, data=mem[(32 * _852) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _852) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _852) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _1762 = mem[(32 * _852) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _852) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _852) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _852) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _852) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _852) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _852) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _852) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _852) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _852) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _852) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _852) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_1762 + (32 * _852) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_1762 + (32 * _852) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_1762 + (32 * _852) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _852) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _852) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1358:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _852) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1358
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1358
                else:
                    _820 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]
                    _853 = mem[_820 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_820 + ceil32(arg4.length) + 320])] = mem[_820 + ceil32(arg4.length) + 352 len floor32(mem[_820 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1362 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _853) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _853) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg2
                    mem[(32 * _853) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1362
                    mem[(32 * _853) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _853) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _853) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _853) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _853) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1362, Array(len=2, data=mem[(32 * _853) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _853) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _853) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _1764 = mem[(32 * _853) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _853) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _853) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _853) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _853) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _853) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _853) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _853) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _853) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _853) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _853) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _853) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_1764 + (32 * _853) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_1764 + (32 * _853) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_1764 + (32 * _853) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _853) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _853) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1362:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _853) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1362
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1362
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function swapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[96] = arg4.length
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
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
    mem[ceil32(arg4.length) + 128] = 2
    mem[ceil32(arg4.length) + 160 len 64] = call.data[calldata.size len 64]
    mem[ceil32(arg4.length) + 224] = 2
    require 1 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
    mem[ceil32(arg4.length) + 192] = address(ext_call.return_data[0])
    mem[ceil32(arg4.length) + 256] = address(ext_call.return_data[0])
    require 0 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
    mem[ceil32(arg4.length) + 160] = address(ext_call.return_data[0])
    mem[ceil32(arg4.length) + 288] = address(ext_call.return_data[0])
    require arg4.length >= 64
    if not mem[140 len 20]:
        revert with 0, 'e12'
    if not mem[172 len 20]:
        revert with 0, 'e12'
    require ext_code.size(address(ext_call.return_data[0]))
    if not arg2:
        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args mem[172 len 20], arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[ceil32(arg4.length) + 320] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
        mem[ceil32(arg4.length) + 324] = arg3
        mem[ceil32(arg4.length) + 356] = 64
        mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
        mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
        require ext_code.size(mem[140 len 20])
        staticcall mem[140 len 20].getAmountsIn(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args mem[ceil32(arg4.length) + 324 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(arg4.length) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 320
        require return_data.size >= 32
        if not arg2:
            if not arg2:
                if not arg2:
                    _790 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]
                    _838 = mem[_790 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_790 + ceil32(arg4.length) + 320])] = mem[_790 + ceil32(arg4.length) + 352 len floor32(mem[_790 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1302 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _838) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _838) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg3
                    mem[(32 * _838) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1302
                    mem[(32 * _838) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _838) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _838) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _838) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _838) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1302, Array(len=2, data=mem[(32 * _838) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _838) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _838) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _1734 = mem[(32 * _838) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _838) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _838) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _838) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _838) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _838) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _838) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _838) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _838) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _838) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _838) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _838) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_1734 + (32 * _838) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_1734 + (32 * _838) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_1734 + (32 * _838) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _838) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _838) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1302:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _838) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1302
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1302
                else:
                    _792 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]
                    _839 = mem[_792 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_792 + ceil32(arg4.length) + 320])] = mem[_792 + ceil32(arg4.length) + 352 len floor32(mem[_792 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1306 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _839) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _839) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg3
                    mem[(32 * _839) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1306
                    mem[(32 * _839) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _839) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _839) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _839) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _839) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1306, Array(len=2, data=mem[(32 * _839) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _839) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _839) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _1736 = mem[(32 * _839) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _839) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _839) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _839) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _839) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _839) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _839) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _839) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _839) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _839) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _839) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _839) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_1736 + (32 * _839) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_1736 + (32 * _839) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_1736 + (32 * _839) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _839) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _839) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1306:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _839) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1306
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1306
            else:
                if not arg2:
                    _794 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]
                    _840 = mem[_794 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_794 + ceil32(arg4.length) + 320])] = mem[_794 + ceil32(arg4.length) + 352 len floor32(mem[_794 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1310 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _840) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _840) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg3
                    mem[(32 * _840) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1310
                    mem[(32 * _840) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _840) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _840) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _840) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _840) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1310, Array(len=2, data=mem[(32 * _840) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _840) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _840) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _1738 = mem[(32 * _840) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _840) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _840) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _840) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _840) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _840) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _840) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _840) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _840) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _840) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _840) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _840) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_1738 + (32 * _840) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_1738 + (32 * _840) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_1738 + (32 * _840) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _840) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _840) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1310:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _840) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1310
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1310
                else:
                    _796 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]
                    _841 = mem[_796 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_796 + ceil32(arg4.length) + 320])] = mem[_796 + ceil32(arg4.length) + 352 len floor32(mem[_796 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1314 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _841) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _841) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg3
                    mem[(32 * _841) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1314
                    mem[(32 * _841) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _841) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _841) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _841) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _841) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1314, Array(len=2, data=mem[(32 * _841) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _841) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _841) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _1740 = mem[(32 * _841) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _841) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _841) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _841) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _841) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _841) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _841) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _841) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _841) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _841) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _841) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _841) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_1740 + (32 * _841) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_1740 + (32 * _841) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_1740 + (32 * _841) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _841) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _841) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1314:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _841) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1314
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1314
        else:
            if not arg2:
                if not arg2:
                    _798 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]
                    _842 = mem[_798 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_798 + ceil32(arg4.length) + 320])] = mem[_798 + ceil32(arg4.length) + 352 len floor32(mem[_798 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1318 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _842) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _842) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg3
                    mem[(32 * _842) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1318
                    mem[(32 * _842) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _842) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _842) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _842) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _842) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1318, Array(len=2, data=mem[(32 * _842) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _842) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _842) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _1742 = mem[(32 * _842) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _842) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _842) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _842) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _842) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _842) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _842) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _842) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _842) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _842) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _842) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _842) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_1742 + (32 * _842) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_1742 + (32 * _842) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_1742 + (32 * _842) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _842) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _842) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1318:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _842) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1318
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1318
                else:
                    _800 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]
                    _843 = mem[_800 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_800 + ceil32(arg4.length) + 320])] = mem[_800 + ceil32(arg4.length) + 352 len floor32(mem[_800 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1322 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _843) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _843) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg3
                    mem[(32 * _843) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1322
                    mem[(32 * _843) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _843) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _843) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _843) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _843) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1322, Array(len=2, data=mem[(32 * _843) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _843) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _843) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _1744 = mem[(32 * _843) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _843) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _843) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _843) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _843) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _843) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _843) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _843) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _843) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _843) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _843) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _843) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_1744 + (32 * _843) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_1744 + (32 * _843) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_1744 + (32 * _843) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _843) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _843) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1322:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _843) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1322
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1322
            else:
                if not arg2:
                    _802 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]
                    _844 = mem[_802 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_802 + ceil32(arg4.length) + 320])] = mem[_802 + ceil32(arg4.length) + 352 len floor32(mem[_802 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1326 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _844) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _844) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg3
                    mem[(32 * _844) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1326
                    mem[(32 * _844) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _844) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _844) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _844) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _844) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1326, Array(len=2, data=mem[(32 * _844) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _844) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _844) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _1746 = mem[(32 * _844) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _844) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _844) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _844) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _844) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _844) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _844) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _844) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _844) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _844) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _844) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _844) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_1746 + (32 * _844) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_1746 + (32 * _844) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_1746 + (32 * _844) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _844) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _844) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1326:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _844) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1326
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1326
                else:
                    _804 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]
                    _845 = mem[_804 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_804 + ceil32(arg4.length) + 320])] = mem[_804 + ceil32(arg4.length) + 352 len floor32(mem[_804 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1330 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _845) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _845) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg3
                    mem[(32 * _845) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1330
                    mem[(32 * _845) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _845) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _845) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _845) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _845) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1330, Array(len=2, data=mem[(32 * _845) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _845) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _845) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _1748 = mem[(32 * _845) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _845) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _845) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _845) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _845) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _845) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _845) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _845) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _845) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _845) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _845) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _845) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_1748 + (32 * _845) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_1748 + (32 * _845) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_1748 + (32 * _845) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _845) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _845) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1330:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _845) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1330
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1330
    else:
        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args mem[172 len 20], arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[ceil32(arg4.length) + 320] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
        mem[ceil32(arg4.length) + 324] = arg2
        mem[ceil32(arg4.length) + 356] = 64
        mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
        mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
        require ext_code.size(mem[140 len 20])
        staticcall mem[140 len 20].getAmountsIn(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args mem[ceil32(arg4.length) + 324 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(arg4.length) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 320
        require return_data.size >= 32
        if not arg2:
            if not arg2:
                if not arg2:
                    _806 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]
                    _846 = mem[_806 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_806 + ceil32(arg4.length) + 320])] = mem[_806 + ceil32(arg4.length) + 352 len floor32(mem[_806 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1334 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _846) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _846) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg2
                    mem[(32 * _846) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1334
                    mem[(32 * _846) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _846) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _846) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _846) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _846) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1334, Array(len=2, data=mem[(32 * _846) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _846) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _846) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _1750 = mem[(32 * _846) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _846) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _846) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _846) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _846) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _846) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _846) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _846) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _846) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _846) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _846) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _846) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_1750 + (32 * _846) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_1750 + (32 * _846) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_1750 + (32 * _846) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _846) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _846) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1334:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _846) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1334
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1334
                else:
                    _808 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]
                    _847 = mem[_808 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_808 + ceil32(arg4.length) + 320])] = mem[_808 + ceil32(arg4.length) + 352 len floor32(mem[_808 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1338 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _847) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _847) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg2
                    mem[(32 * _847) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1338
                    mem[(32 * _847) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _847) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _847) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _847) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _847) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1338, Array(len=2, data=mem[(32 * _847) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _847) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _847) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _1752 = mem[(32 * _847) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _847) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _847) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _847) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _847) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _847) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _847) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _847) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _847) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _847) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _847) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _847) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_1752 + (32 * _847) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_1752 + (32 * _847) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_1752 + (32 * _847) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _847) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _847) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1338:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _847) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1338
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1338
            else:
                if not arg2:
                    _810 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]
                    _848 = mem[_810 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_810 + ceil32(arg4.length) + 320])] = mem[_810 + ceil32(arg4.length) + 352 len floor32(mem[_810 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1342 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _848) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _848) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg2
                    mem[(32 * _848) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1342
                    mem[(32 * _848) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _848) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _848) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _848) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _848) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1342, Array(len=2, data=mem[(32 * _848) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _848) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _848) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _1754 = mem[(32 * _848) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _848) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _848) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _848) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _848) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _848) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _848) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _848) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _848) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _848) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _848) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _848) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_1754 + (32 * _848) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_1754 + (32 * _848) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_1754 + (32 * _848) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _848) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _848) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1342:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _848) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1342
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1342
                else:
                    _812 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]
                    _849 = mem[_812 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_812 + ceil32(arg4.length) + 320])] = mem[_812 + ceil32(arg4.length) + 352 len floor32(mem[_812 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1346 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _849) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _849) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg2
                    mem[(32 * _849) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1346
                    mem[(32 * _849) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _849) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _849) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _849) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _849) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1346, Array(len=2, data=mem[(32 * _849) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _849) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _849) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _1756 = mem[(32 * _849) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _849) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _849) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _849) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _849) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _849) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _849) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _849) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _849) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _849) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _849) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _849) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_1756 + (32 * _849) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_1756 + (32 * _849) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_1756 + (32 * _849) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _849) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _849) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1346:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _849) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1346
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1346
        else:
            if not arg2:
                if not arg2:
                    _814 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]
                    _850 = mem[_814 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_814 + ceil32(arg4.length) + 320])] = mem[_814 + ceil32(arg4.length) + 352 len floor32(mem[_814 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1350 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _850) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _850) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg2
                    mem[(32 * _850) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1350
                    mem[(32 * _850) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _850) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _850) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _850) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _850) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1350, Array(len=2, data=mem[(32 * _850) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _850) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _850) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _1758 = mem[(32 * _850) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _850) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _850) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _850) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _850) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _850) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _850) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _850) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _850) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _850) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _850) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _850) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_1758 + (32 * _850) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_1758 + (32 * _850) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_1758 + (32 * _850) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _850) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _850) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1350:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _850) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1350
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1350
                else:
                    _816 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]
                    _851 = mem[_816 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_816 + ceil32(arg4.length) + 320])] = mem[_816 + ceil32(arg4.length) + 352 len floor32(mem[_816 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1354 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _851) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _851) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg2
                    mem[(32 * _851) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1354
                    mem[(32 * _851) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _851) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _851) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _851) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _851) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1354, Array(len=2, data=mem[(32 * _851) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _851) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _851) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _1760 = mem[(32 * _851) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _851) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _851) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _851) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _851) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _851) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _851) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _851) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _851) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _851) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _851) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _851) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_1760 + (32 * _851) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_1760 + (32 * _851) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_1760 + (32 * _851) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _851) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _851) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1354:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _851) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1354
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1354
            else:
                if not arg2:
                    _818 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]
                    _852 = mem[_818 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_818 + ceil32(arg4.length) + 320])] = mem[_818 + ceil32(arg4.length) + 352 len floor32(mem[_818 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1358 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _852) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _852) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg2
                    mem[(32 * _852) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1358
                    mem[(32 * _852) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _852) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _852) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _852) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _852) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1358, Array(len=2, data=mem[(32 * _852) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _852) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _852) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _1762 = mem[(32 * _852) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _852) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _852) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _852) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _852) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _852) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _852) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _852) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _852) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _852) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _852) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _852) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_1762 + (32 * _852) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_1762 + (32 * _852) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_1762 + (32 * _852) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _852) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _852) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1358:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _852) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1358
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1358
                else:
                    _820 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]
                    _853 = mem[_820 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_820 + ceil32(arg4.length) + 320])] = mem[_820 + ceil32(arg4.length) + 352 len floor32(mem[_820 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1362 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _853) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _853) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg2
                    mem[(32 * _853) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1362
                    mem[(32 * _853) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _853) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _853) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _853) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _853) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1362, Array(len=2, data=mem[(32 * _853) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _853) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _853) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _1764 = mem[(32 * _853) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _853) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _853) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _853) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _853) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _853) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _853) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _853) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _853) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _853) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _853) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _853) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_1764 + (32 * _853) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_1764 + (32 * _853) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_1764 + (32 * _853) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _853) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _853) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1362:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _853) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1362
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1362
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function pantherCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[96] = arg4.length
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
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
    mem[ceil32(arg4.length) + 128] = 2
    mem[ceil32(arg4.length) + 160 len 64] = call.data[calldata.size len 64]
    mem[ceil32(arg4.length) + 224] = 2
    require 1 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
    mem[ceil32(arg4.length) + 192] = address(ext_call.return_data[0])
    mem[ceil32(arg4.length) + 256] = address(ext_call.return_data[0])
    require 0 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
    mem[ceil32(arg4.length) + 160] = address(ext_call.return_data[0])
    mem[ceil32(arg4.length) + 288] = address(ext_call.return_data[0])
    require arg4.length >= 64
    if not mem[140 len 20]:
        revert with 0, 'e12'
    if not mem[172 len 20]:
        revert with 0, 'e12'
    require ext_code.size(address(ext_call.return_data[0]))
    if not arg2:
        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args mem[172 len 20], arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[ceil32(arg4.length) + 320] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
        mem[ceil32(arg4.length) + 324] = arg3
        mem[ceil32(arg4.length) + 356] = 64
        mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
        mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
        require ext_code.size(mem[140 len 20])
        staticcall mem[140 len 20].getAmountsIn(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args mem[ceil32(arg4.length) + 324 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(arg4.length) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 320
        require return_data.size >= 32
        if not arg2:
            if not arg2:
                if not arg2:
                    _790 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]
                    _838 = mem[_790 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_790 + ceil32(arg4.length) + 320])] = mem[_790 + ceil32(arg4.length) + 352 len floor32(mem[_790 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1302 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _838) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _838) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg3
                    mem[(32 * _838) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1302
                    mem[(32 * _838) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _838) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _838) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _838) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _838) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1302, Array(len=2, data=mem[(32 * _838) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _838) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _838) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _1734 = mem[(32 * _838) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _838) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _838) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _838) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _838) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _838) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _838) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _838) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _838) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _838) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _838) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _838) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_1734 + (32 * _838) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_1734 + (32 * _838) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_1734 + (32 * _838) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _838) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _838) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1302:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _838) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1302
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1302
                else:
                    _792 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]
                    _839 = mem[_792 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_792 + ceil32(arg4.length) + 320])] = mem[_792 + ceil32(arg4.length) + 352 len floor32(mem[_792 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1306 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _839) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _839) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg3
                    mem[(32 * _839) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1306
                    mem[(32 * _839) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _839) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _839) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _839) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _839) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1306, Array(len=2, data=mem[(32 * _839) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _839) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _839) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _1736 = mem[(32 * _839) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _839) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _839) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _839) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _839) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _839) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _839) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _839) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _839) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _839) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _839) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _839) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_1736 + (32 * _839) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_1736 + (32 * _839) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_1736 + (32 * _839) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _839) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _839) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1306:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _839) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1306
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1306
            else:
                if not arg2:
                    _794 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]
                    _840 = mem[_794 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_794 + ceil32(arg4.length) + 320])] = mem[_794 + ceil32(arg4.length) + 352 len floor32(mem[_794 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1310 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _840) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _840) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg3
                    mem[(32 * _840) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1310
                    mem[(32 * _840) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _840) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _840) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _840) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _840) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1310, Array(len=2, data=mem[(32 * _840) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _840) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _840) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _1738 = mem[(32 * _840) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _840) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _840) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _840) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _840) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _840) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _840) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _840) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _840) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _840) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _840) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _840) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_1738 + (32 * _840) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_1738 + (32 * _840) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_1738 + (32 * _840) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _840) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _840) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1310:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _840) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1310
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1310
                else:
                    _796 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]
                    _841 = mem[_796 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_796 + ceil32(arg4.length) + 320])] = mem[_796 + ceil32(arg4.length) + 352 len floor32(mem[_796 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1314 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _841) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _841) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg3
                    mem[(32 * _841) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1314
                    mem[(32 * _841) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _841) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _841) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _841) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _841) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1314, Array(len=2, data=mem[(32 * _841) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _841) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _841) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _1740 = mem[(32 * _841) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _841) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _841) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _841) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _841) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _841) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _841) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _841) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _841) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _841) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _841) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _841) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_1740 + (32 * _841) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_1740 + (32 * _841) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_1740 + (32 * _841) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _841) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _841) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1314:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _841) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1314
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1314
        else:
            if not arg2:
                if not arg2:
                    _798 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]
                    _842 = mem[_798 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_798 + ceil32(arg4.length) + 320])] = mem[_798 + ceil32(arg4.length) + 352 len floor32(mem[_798 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1318 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _842) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _842) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg3
                    mem[(32 * _842) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1318
                    mem[(32 * _842) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _842) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _842) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _842) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _842) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1318, Array(len=2, data=mem[(32 * _842) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _842) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _842) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _1742 = mem[(32 * _842) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _842) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _842) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _842) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _842) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _842) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _842) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _842) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _842) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _842) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _842) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _842) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_1742 + (32 * _842) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_1742 + (32 * _842) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_1742 + (32 * _842) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _842) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _842) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1318:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _842) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1318
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1318
                else:
                    _800 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]
                    _843 = mem[_800 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_800 + ceil32(arg4.length) + 320])] = mem[_800 + ceil32(arg4.length) + 352 len floor32(mem[_800 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1322 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _843) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _843) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg3
                    mem[(32 * _843) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1322
                    mem[(32 * _843) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _843) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _843) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _843) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _843) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1322, Array(len=2, data=mem[(32 * _843) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _843) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _843) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _1744 = mem[(32 * _843) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _843) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _843) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _843) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _843) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _843) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _843) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _843) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _843) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _843) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _843) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _843) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_1744 + (32 * _843) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_1744 + (32 * _843) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_1744 + (32 * _843) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _843) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _843) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1322:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _843) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1322
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1322
            else:
                if not arg2:
                    _802 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]
                    _844 = mem[_802 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_802 + ceil32(arg4.length) + 320])] = mem[_802 + ceil32(arg4.length) + 352 len floor32(mem[_802 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1326 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _844) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _844) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg3
                    mem[(32 * _844) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1326
                    mem[(32 * _844) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _844) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _844) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _844) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _844) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1326, Array(len=2, data=mem[(32 * _844) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _844) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _844) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _1746 = mem[(32 * _844) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _844) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _844) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _844) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _844) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _844) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _844) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _844) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _844) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _844) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _844) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _844) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_1746 + (32 * _844) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_1746 + (32 * _844) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_1746 + (32 * _844) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _844) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _844) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1326:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _844) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1326
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1326
                else:
                    _804 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]
                    _845 = mem[_804 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_804 + ceil32(arg4.length) + 320])] = mem[_804 + ceil32(arg4.length) + 352 len floor32(mem[_804 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1330 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _845) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _845) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg3
                    mem[(32 * _845) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1330
                    mem[(32 * _845) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _845) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _845) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _845) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _845) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1330, Array(len=2, data=mem[(32 * _845) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _845) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _845) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _1748 = mem[(32 * _845) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _845) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _845) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _845) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _845) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _845) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _845) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _845) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _845) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _845) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _845) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _845) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_1748 + (32 * _845) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_1748 + (32 * _845) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_1748 + (32 * _845) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _845) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _845) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1330:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _845) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1330
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1330
    else:
        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args mem[172 len 20], arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[ceil32(arg4.length) + 320] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
        mem[ceil32(arg4.length) + 324] = arg2
        mem[ceil32(arg4.length) + 356] = 64
        mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
        mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
        require ext_code.size(mem[140 len 20])
        staticcall mem[140 len 20].getAmountsIn(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args mem[ceil32(arg4.length) + 324 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(arg4.length) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 320
        require return_data.size >= 32
        if not arg2:
            if not arg2:
                if not arg2:
                    _806 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]
                    _846 = mem[_806 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_806 + ceil32(arg4.length) + 320])] = mem[_806 + ceil32(arg4.length) + 352 len floor32(mem[_806 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1334 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _846) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _846) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg2
                    mem[(32 * _846) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1334
                    mem[(32 * _846) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _846) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _846) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _846) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _846) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1334, Array(len=2, data=mem[(32 * _846) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _846) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _846) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _1750 = mem[(32 * _846) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _846) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _846) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _846) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _846) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _846) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _846) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _846) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _846) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _846) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _846) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _846) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_1750 + (32 * _846) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_1750 + (32 * _846) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_1750 + (32 * _846) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _846) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _846) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1334:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _846) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1334
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1334
                else:
                    _808 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]
                    _847 = mem[_808 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_808 + ceil32(arg4.length) + 320])] = mem[_808 + ceil32(arg4.length) + 352 len floor32(mem[_808 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1338 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _847) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _847) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg2
                    mem[(32 * _847) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1338
                    mem[(32 * _847) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _847) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _847) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _847) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _847) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1338, Array(len=2, data=mem[(32 * _847) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _847) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _847) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _1752 = mem[(32 * _847) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _847) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _847) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _847) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _847) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _847) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _847) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _847) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _847) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _847) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _847) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _847) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_1752 + (32 * _847) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_1752 + (32 * _847) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_1752 + (32 * _847) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _847) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _847) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1338:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _847) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1338
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1338
            else:
                if not arg2:
                    _810 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]
                    _848 = mem[_810 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_810 + ceil32(arg4.length) + 320])] = mem[_810 + ceil32(arg4.length) + 352 len floor32(mem[_810 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1342 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _848) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _848) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg2
                    mem[(32 * _848) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1342
                    mem[(32 * _848) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _848) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _848) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _848) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _848) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1342, Array(len=2, data=mem[(32 * _848) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _848) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _848) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _1754 = mem[(32 * _848) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _848) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _848) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _848) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _848) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _848) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _848) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _848) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _848) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _848) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _848) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _848) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_1754 + (32 * _848) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_1754 + (32 * _848) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_1754 + (32 * _848) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _848) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _848) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1342:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _848) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1342
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1342
                else:
                    _812 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]
                    _849 = mem[_812 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_812 + ceil32(arg4.length) + 320])] = mem[_812 + ceil32(arg4.length) + 352 len floor32(mem[_812 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1346 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _849) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _849) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg2
                    mem[(32 * _849) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1346
                    mem[(32 * _849) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _849) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _849) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _849) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _849) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1346, Array(len=2, data=mem[(32 * _849) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _849) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _849) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _1756 = mem[(32 * _849) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _849) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _849) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _849) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _849) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _849) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _849) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _849) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _849) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _849) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _849) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _849) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_1756 + (32 * _849) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_1756 + (32 * _849) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_1756 + (32 * _849) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _849) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _849) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1346:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _849) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1346
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1346
        else:
            if not arg2:
                if not arg2:
                    _814 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]
                    _850 = mem[_814 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_814 + ceil32(arg4.length) + 320])] = mem[_814 + ceil32(arg4.length) + 352 len floor32(mem[_814 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1350 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _850) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _850) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg2
                    mem[(32 * _850) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1350
                    mem[(32 * _850) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _850) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _850) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _850) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _850) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1350, Array(len=2, data=mem[(32 * _850) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _850) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _850) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _1758 = mem[(32 * _850) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _850) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _850) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _850) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _850) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _850) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _850) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _850) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _850) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _850) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _850) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _850) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_1758 + (32 * _850) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_1758 + (32 * _850) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_1758 + (32 * _850) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _850) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _850) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1350:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _850) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1350
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1350
                else:
                    _816 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]
                    _851 = mem[_816 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_816 + ceil32(arg4.length) + 320])] = mem[_816 + ceil32(arg4.length) + 352 len floor32(mem[_816 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1354 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _851) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _851) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg2
                    mem[(32 * _851) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1354
                    mem[(32 * _851) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _851) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _851) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _851) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _851) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1354, Array(len=2, data=mem[(32 * _851) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _851) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _851) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _1760 = mem[(32 * _851) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _851) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _851) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _851) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _851) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _851) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _851) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _851) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _851) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _851) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _851) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _851) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_1760 + (32 * _851) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_1760 + (32 * _851) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_1760 + (32 * _851) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _851) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _851) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1354:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _851) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1354
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1354
            else:
                if not arg2:
                    _818 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]
                    _852 = mem[_818 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_818 + ceil32(arg4.length) + 320])] = mem[_818 + ceil32(arg4.length) + 352 len floor32(mem[_818 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1358 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _852) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _852) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg2
                    mem[(32 * _852) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1358
                    mem[(32 * _852) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _852) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _852) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _852) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _852) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1358, Array(len=2, data=mem[(32 * _852) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _852) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _852) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _1762 = mem[(32 * _852) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _852) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _852) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _852) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _852) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _852) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _852) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _852) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _852) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _852) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _852) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _852) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_1762 + (32 * _852) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_1762 + (32 * _852) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_1762 + (32 * _852) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _852) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _852) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1358:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _852) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1358
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1358
                else:
                    _820 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]
                    _853 = mem[_820 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_820 + ceil32(arg4.length) + 320])] = mem[_820 + ceil32(arg4.length) + 352 len floor32(mem[_820 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1362 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _853) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _853) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg2
                    mem[(32 * _853) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1362
                    mem[(32 * _853) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _853) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _853) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _853) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _853) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1362, Array(len=2, data=mem[(32 * _853) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _853) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _853) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _1764 = mem[(32 * _853) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _853) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _853) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _853) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _853) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _853) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _853) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _853) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _853) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _853) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _853) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _853) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_1764 + (32 * _853) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_1764 + (32 * _853) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_1764 + (32 * _853) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _853) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _853) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1362:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _853) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1362
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1362
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function jetswapCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[96] = arg4.length
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
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
    mem[ceil32(arg4.length) + 128] = 2
    mem[ceil32(arg4.length) + 160 len 64] = call.data[calldata.size len 64]
    mem[ceil32(arg4.length) + 224] = 2
    require 1 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
    mem[ceil32(arg4.length) + 192] = address(ext_call.return_data[0])
    mem[ceil32(arg4.length) + 256] = address(ext_call.return_data[0])
    require 0 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
    mem[ceil32(arg4.length) + 160] = address(ext_call.return_data[0])
    mem[ceil32(arg4.length) + 288] = address(ext_call.return_data[0])
    require arg4.length >= 64
    if not mem[140 len 20]:
        revert with 0, 'e12'
    if not mem[172 len 20]:
        revert with 0, 'e12'
    require ext_code.size(address(ext_call.return_data[0]))
    if not arg2:
        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args mem[172 len 20], arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[ceil32(arg4.length) + 320] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
        mem[ceil32(arg4.length) + 324] = arg3
        mem[ceil32(arg4.length) + 356] = 64
        mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
        mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
        require ext_code.size(mem[140 len 20])
        staticcall mem[140 len 20].getAmountsIn(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args mem[ceil32(arg4.length) + 324 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(arg4.length) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 320
        require return_data.size >= 32
        if not arg2:
            if not arg2:
                if not arg2:
                    _790 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]
                    _838 = mem[_790 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_790 + ceil32(arg4.length) + 320])] = mem[_790 + ceil32(arg4.length) + 352 len floor32(mem[_790 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1302 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _838) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _838) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg3
                    mem[(32 * _838) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1302
                    mem[(32 * _838) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _838) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _838) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _838) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _838) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1302, Array(len=2, data=mem[(32 * _838) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _838) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _838) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _1734 = mem[(32 * _838) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _838) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _838) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _838) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _838) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _838) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _838) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _838) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _838) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _838) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _838) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _838) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_1734 + (32 * _838) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_1734 + (32 * _838) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_1734 + (32 * _838) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _838) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _838) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1302:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _838) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1302
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1302
                else:
                    _792 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]
                    _839 = mem[_792 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_792 + ceil32(arg4.length) + 320])] = mem[_792 + ceil32(arg4.length) + 352 len floor32(mem[_792 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1306 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _839) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _839) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg3
                    mem[(32 * _839) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1306
                    mem[(32 * _839) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _839) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _839) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _839) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _839) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1306, Array(len=2, data=mem[(32 * _839) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _839) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _839) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _1736 = mem[(32 * _839) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _839) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _839) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _839) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _839) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _839) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _839) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _839) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _839) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _839) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _839) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _839) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_1736 + (32 * _839) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_1736 + (32 * _839) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_1736 + (32 * _839) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _839) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _839) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1306:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _839) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1306
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1306
            else:
                if not arg2:
                    _794 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]
                    _840 = mem[_794 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_794 + ceil32(arg4.length) + 320])] = mem[_794 + ceil32(arg4.length) + 352 len floor32(mem[_794 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1310 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _840) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _840) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg3
                    mem[(32 * _840) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1310
                    mem[(32 * _840) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _840) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _840) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _840) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _840) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1310, Array(len=2, data=mem[(32 * _840) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _840) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _840) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _1738 = mem[(32 * _840) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _840) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _840) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _840) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _840) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _840) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _840) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _840) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _840) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _840) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _840) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _840) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_1738 + (32 * _840) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_1738 + (32 * _840) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_1738 + (32 * _840) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _840) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _840) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1310:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _840) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1310
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1310
                else:
                    _796 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]
                    _841 = mem[_796 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_796 + ceil32(arg4.length) + 320])] = mem[_796 + ceil32(arg4.length) + 352 len floor32(mem[_796 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1314 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _841) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _841) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg3
                    mem[(32 * _841) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1314
                    mem[(32 * _841) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _841) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _841) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _841) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _841) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1314, Array(len=2, data=mem[(32 * _841) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _841) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _841) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _1740 = mem[(32 * _841) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _841) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _841) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _841) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _841) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _841) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _841) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _841) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _841) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _841) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _841) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _841) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_1740 + (32 * _841) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_1740 + (32 * _841) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_1740 + (32 * _841) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _841) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _841) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1314:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _841) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1314
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1314
        else:
            if not arg2:
                if not arg2:
                    _798 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]
                    _842 = mem[_798 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_798 + ceil32(arg4.length) + 320])] = mem[_798 + ceil32(arg4.length) + 352 len floor32(mem[_798 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1318 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _842) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _842) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg3
                    mem[(32 * _842) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1318
                    mem[(32 * _842) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _842) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _842) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _842) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _842) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1318, Array(len=2, data=mem[(32 * _842) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _842) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _842) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _1742 = mem[(32 * _842) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _842) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _842) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _842) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _842) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _842) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _842) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _842) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _842) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _842) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _842) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _842) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_1742 + (32 * _842) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_1742 + (32 * _842) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_1742 + (32 * _842) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _842) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _842) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1318:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _842) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1318
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1318
                else:
                    _800 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]
                    _843 = mem[_800 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_800 + ceil32(arg4.length) + 320])] = mem[_800 + ceil32(arg4.length) + 352 len floor32(mem[_800 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1322 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _843) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _843) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg3
                    mem[(32 * _843) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1322
                    mem[(32 * _843) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _843) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _843) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _843) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _843) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1322, Array(len=2, data=mem[(32 * _843) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _843) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _843) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _1744 = mem[(32 * _843) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _843) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _843) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _843) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _843) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _843) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _843) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _843) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _843) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _843) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _843) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _843) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_1744 + (32 * _843) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_1744 + (32 * _843) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_1744 + (32 * _843) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _843) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _843) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1322:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _843) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1322
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1322
            else:
                if not arg2:
                    _802 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]
                    _844 = mem[_802 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_802 + ceil32(arg4.length) + 320])] = mem[_802 + ceil32(arg4.length) + 352 len floor32(mem[_802 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1326 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _844) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _844) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg3
                    mem[(32 * _844) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1326
                    mem[(32 * _844) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _844) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _844) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _844) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _844) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1326, Array(len=2, data=mem[(32 * _844) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _844) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _844) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _1746 = mem[(32 * _844) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _844) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _844) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _844) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _844) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _844) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _844) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _844) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _844) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _844) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _844) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _844) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_1746 + (32 * _844) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_1746 + (32 * _844) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_1746 + (32 * _844) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _844) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _844) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1326:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _844) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1326
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1326
                else:
                    _804 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]
                    _845 = mem[_804 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_804 + ceil32(arg4.length) + 320])] = mem[_804 + ceil32(arg4.length) + 352 len floor32(mem[_804 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1330 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _845) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _845) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg3
                    mem[(32 * _845) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1330
                    mem[(32 * _845) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _845) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _845) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _845) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _845) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1330, Array(len=2, data=mem[(32 * _845) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _845) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _845) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _1748 = mem[(32 * _845) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _845) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _845) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _845) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _845) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _845) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _845) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _845) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _845) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _845) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _845) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _845) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_1748 + (32 * _845) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_1748 + (32 * _845) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_1748 + (32 * _845) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _845) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _845) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1330:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _845) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1330
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1330
    else:
        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args mem[172 len 20], arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[ceil32(arg4.length) + 320] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
        mem[ceil32(arg4.length) + 324] = arg2
        mem[ceil32(arg4.length) + 356] = 64
        mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
        mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
        require ext_code.size(mem[140 len 20])
        staticcall mem[140 len 20].getAmountsIn(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args mem[ceil32(arg4.length) + 324 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(arg4.length) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 320
        require return_data.size >= 32
        if not arg2:
            if not arg2:
                if not arg2:
                    _806 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]
                    _846 = mem[_806 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_806 + ceil32(arg4.length) + 320])] = mem[_806 + ceil32(arg4.length) + 352 len floor32(mem[_806 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1334 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _846) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _846) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg2
                    mem[(32 * _846) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1334
                    mem[(32 * _846) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _846) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _846) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _846) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _846) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1334, Array(len=2, data=mem[(32 * _846) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _846) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _846) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _1750 = mem[(32 * _846) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _846) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _846) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _846) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _846) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _846) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _846) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _846) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _846) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _846) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _846) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _846) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_1750 + (32 * _846) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_1750 + (32 * _846) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_1750 + (32 * _846) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _846) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _846) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1334:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _846) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1334
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1334
                else:
                    _808 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]
                    _847 = mem[_808 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_808 + ceil32(arg4.length) + 320])] = mem[_808 + ceil32(arg4.length) + 352 len floor32(mem[_808 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1338 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _847) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _847) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg2
                    mem[(32 * _847) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1338
                    mem[(32 * _847) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _847) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _847) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _847) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _847) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1338, Array(len=2, data=mem[(32 * _847) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _847) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _847) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _1752 = mem[(32 * _847) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _847) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _847) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _847) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _847) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _847) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _847) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _847) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _847) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _847) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _847) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _847) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_1752 + (32 * _847) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_1752 + (32 * _847) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_1752 + (32 * _847) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _847) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _847) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1338:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _847) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1338
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1338
            else:
                if not arg2:
                    _810 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]
                    _848 = mem[_810 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_810 + ceil32(arg4.length) + 320])] = mem[_810 + ceil32(arg4.length) + 352 len floor32(mem[_810 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1342 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _848) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _848) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg2
                    mem[(32 * _848) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1342
                    mem[(32 * _848) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _848) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _848) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _848) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _848) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1342, Array(len=2, data=mem[(32 * _848) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _848) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _848) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _1754 = mem[(32 * _848) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _848) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _848) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _848) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _848) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _848) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _848) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _848) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _848) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _848) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _848) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _848) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_1754 + (32 * _848) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_1754 + (32 * _848) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_1754 + (32 * _848) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _848) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _848) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1342:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _848) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1342
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1342
                else:
                    _812 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]
                    _849 = mem[_812 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_812 + ceil32(arg4.length) + 320])] = mem[_812 + ceil32(arg4.length) + 352 len floor32(mem[_812 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1346 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _849) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _849) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg2
                    mem[(32 * _849) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1346
                    mem[(32 * _849) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _849) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _849) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _849) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _849) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1346, Array(len=2, data=mem[(32 * _849) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _849) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _849) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _1756 = mem[(32 * _849) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _849) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _849) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _849) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _849) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _849) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _849) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _849) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _849) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _849) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _849) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _849) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_1756 + (32 * _849) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_1756 + (32 * _849) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_1756 + (32 * _849) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _849) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _849) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1346:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _849) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1346
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1346
        else:
            if not arg2:
                if not arg2:
                    _814 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]
                    _850 = mem[_814 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_814 + ceil32(arg4.length) + 320])] = mem[_814 + ceil32(arg4.length) + 352 len floor32(mem[_814 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1350 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _850) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _850) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg2
                    mem[(32 * _850) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1350
                    mem[(32 * _850) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _850) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _850) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _850) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _850) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1350, Array(len=2, data=mem[(32 * _850) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _850) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _850) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _1758 = mem[(32 * _850) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _850) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _850) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _850) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _850) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _850) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _850) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _850) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _850) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _850) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _850) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _850) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_1758 + (32 * _850) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_1758 + (32 * _850) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_1758 + (32 * _850) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _850) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _850) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1350:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _850) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1350
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1350
                else:
                    _816 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]
                    _851 = mem[_816 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_816 + ceil32(arg4.length) + 320])] = mem[_816 + ceil32(arg4.length) + 352 len floor32(mem[_816 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1354 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _851) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _851) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg2
                    mem[(32 * _851) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1354
                    mem[(32 * _851) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _851) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _851) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _851) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _851) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1354, Array(len=2, data=mem[(32 * _851) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _851) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _851) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _1760 = mem[(32 * _851) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _851) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _851) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _851) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _851) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _851) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _851) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _851) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _851) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _851) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _851) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _851) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_1760 + (32 * _851) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_1760 + (32 * _851) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_1760 + (32 * _851) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _851) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _851) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1354:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _851) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1354
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1354
            else:
                if not arg2:
                    _818 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]
                    _852 = mem[_818 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_818 + ceil32(arg4.length) + 320])] = mem[_818 + ceil32(arg4.length) + 352 len floor32(mem[_818 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1358 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _852) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _852) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg2
                    mem[(32 * _852) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1358
                    mem[(32 * _852) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _852) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _852) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _852) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _852) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1358, Array(len=2, data=mem[(32 * _852) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _852) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _852) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _1762 = mem[(32 * _852) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _852) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _852) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _852) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _852) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _852) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _852) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _852) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _852) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _852) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _852) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _852) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_1762 + (32 * _852) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_1762 + (32 * _852) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_1762 + (32 * _852) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _852) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _852) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1358:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _852) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1358
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1358
                else:
                    _820 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]
                    _853 = mem[_820 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_820 + ceil32(arg4.length) + 320])] = mem[_820 + ceil32(arg4.length) + 352 len floor32(mem[_820 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1362 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _853) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _853) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg2
                    mem[(32 * _853) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1362
                    mem[(32 * _853) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _853) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _853) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _853) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _853) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1362, Array(len=2, data=mem[(32 * _853) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _853) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _853) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _1764 = mem[(32 * _853) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _853) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _853) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _853) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _853) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _853) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _853) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _853) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _853) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _853) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _853) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _853) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_1764 + (32 * _853) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_1764 + (32 * _853) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_1764 + (32 * _853) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _853) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _853) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1362:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _853) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1362
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1362
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function uniswapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[96] = arg4.length
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
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
    mem[ceil32(arg4.length) + 128] = 2
    mem[ceil32(arg4.length) + 160 len 64] = call.data[calldata.size len 64]
    mem[ceil32(arg4.length) + 224] = 2
    require 1 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
    mem[ceil32(arg4.length) + 192] = address(ext_call.return_data[0])
    mem[ceil32(arg4.length) + 256] = address(ext_call.return_data[0])
    require 0 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
    mem[ceil32(arg4.length) + 160] = address(ext_call.return_data[0])
    mem[ceil32(arg4.length) + 288] = address(ext_call.return_data[0])
    require arg4.length >= 64
    if not mem[140 len 20]:
        revert with 0, 'e12'
    if not mem[172 len 20]:
        revert with 0, 'e12'
    require ext_code.size(address(ext_call.return_data[0]))
    if not arg2:
        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args mem[172 len 20], arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[ceil32(arg4.length) + 320] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
        mem[ceil32(arg4.length) + 324] = arg3
        mem[ceil32(arg4.length) + 356] = 64
        mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
        mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
        require ext_code.size(mem[140 len 20])
        staticcall mem[140 len 20].getAmountsIn(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args mem[ceil32(arg4.length) + 324 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(arg4.length) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 320
        require return_data.size >= 32
        if not arg2:
            if not arg2:
                if not arg2:
                    _790 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]
                    _838 = mem[_790 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_790 + ceil32(arg4.length) + 320])] = mem[_790 + ceil32(arg4.length) + 352 len floor32(mem[_790 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1302 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _838) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _838) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg3
                    mem[(32 * _838) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1302
                    mem[(32 * _838) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _838) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _838) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _838) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _838) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1302, Array(len=2, data=mem[(32 * _838) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _838) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _838) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _1734 = mem[(32 * _838) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _838) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _838) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _838) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _838) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _838) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _838) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _838) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _838) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _838) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _838) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _838) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_1734 + (32 * _838) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_1734 + (32 * _838) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_1734 + (32 * _838) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _838) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _838) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1302:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _838) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1302
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1302
                else:
                    _792 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]
                    _839 = mem[_792 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_792 + ceil32(arg4.length) + 320])] = mem[_792 + ceil32(arg4.length) + 352 len floor32(mem[_792 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1306 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _839) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _839) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg3
                    mem[(32 * _839) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1306
                    mem[(32 * _839) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _839) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _839) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _839) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _839) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1306, Array(len=2, data=mem[(32 * _839) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _839) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _839) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _1736 = mem[(32 * _839) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _839) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _839) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _839) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _839) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _839) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _839) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _839) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _839) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _839) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _839) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _839) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_1736 + (32 * _839) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_1736 + (32 * _839) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_1736 + (32 * _839) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _839) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _839) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1306:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _839) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1306
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1306
            else:
                if not arg2:
                    _794 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]
                    _840 = mem[_794 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_794 + ceil32(arg4.length) + 320])] = mem[_794 + ceil32(arg4.length) + 352 len floor32(mem[_794 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1310 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _840) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _840) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg3
                    mem[(32 * _840) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1310
                    mem[(32 * _840) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _840) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _840) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _840) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _840) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1310, Array(len=2, data=mem[(32 * _840) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _840) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _840) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _1738 = mem[(32 * _840) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _840) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _840) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _840) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _840) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _840) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _840) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _840) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _840) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _840) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _840) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _840) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_1738 + (32 * _840) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_1738 + (32 * _840) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_1738 + (32 * _840) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _840) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _840) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1310:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _840) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1310
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1310
                else:
                    _796 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]
                    _841 = mem[_796 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_796 + ceil32(arg4.length) + 320])] = mem[_796 + ceil32(arg4.length) + 352 len floor32(mem[_796 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1314 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _841) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _841) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg3
                    mem[(32 * _841) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1314
                    mem[(32 * _841) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _841) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _841) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _841) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _841) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1314, Array(len=2, data=mem[(32 * _841) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _841) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _841) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _1740 = mem[(32 * _841) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _841) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _841) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _841) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _841) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _841) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _841) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _841) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _841) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _841) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _841) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _841) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_1740 + (32 * _841) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_1740 + (32 * _841) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_1740 + (32 * _841) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _841) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _841) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1314:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _841) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1314
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1314
        else:
            if not arg2:
                if not arg2:
                    _798 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]
                    _842 = mem[_798 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_798 + ceil32(arg4.length) + 320])] = mem[_798 + ceil32(arg4.length) + 352 len floor32(mem[_798 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1318 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _842) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _842) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg3
                    mem[(32 * _842) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1318
                    mem[(32 * _842) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _842) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _842) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _842) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _842) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1318, Array(len=2, data=mem[(32 * _842) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _842) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _842) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _1742 = mem[(32 * _842) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _842) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _842) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _842) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _842) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _842) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _842) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _842) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _842) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _842) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _842) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _842) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_1742 + (32 * _842) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_1742 + (32 * _842) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_1742 + (32 * _842) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _842) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _842) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1318:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _842) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1318
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1318
                else:
                    _800 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]
                    _843 = mem[_800 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_800 + ceil32(arg4.length) + 320])] = mem[_800 + ceil32(arg4.length) + 352 len floor32(mem[_800 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1322 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _843) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _843) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg3
                    mem[(32 * _843) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1322
                    mem[(32 * _843) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _843) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _843) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _843) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _843) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1322, Array(len=2, data=mem[(32 * _843) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _843) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _843) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _1744 = mem[(32 * _843) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _843) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _843) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _843) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _843) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _843) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _843) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _843) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _843) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _843) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _843) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _843) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_1744 + (32 * _843) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_1744 + (32 * _843) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_1744 + (32 * _843) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _843) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _843) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1322:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _843) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1322
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1322
            else:
                if not arg2:
                    _802 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]
                    _844 = mem[_802 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_802 + ceil32(arg4.length) + 320])] = mem[_802 + ceil32(arg4.length) + 352 len floor32(mem[_802 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1326 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _844) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _844) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg3
                    mem[(32 * _844) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1326
                    mem[(32 * _844) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _844) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _844) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _844) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _844) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1326, Array(len=2, data=mem[(32 * _844) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _844) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _844) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _1746 = mem[(32 * _844) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _844) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _844) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _844) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _844) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _844) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _844) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _844) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _844) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _844) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _844) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _844) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_1746 + (32 * _844) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_1746 + (32 * _844) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_1746 + (32 * _844) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _844) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _844) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1326:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _844) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1326
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1326
                else:
                    _804 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]
                    _845 = mem[_804 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_804 + ceil32(arg4.length) + 320])] = mem[_804 + ceil32(arg4.length) + 352 len floor32(mem[_804 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1330 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _845) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _845) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg3
                    mem[(32 * _845) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1330
                    mem[(32 * _845) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _845) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _845) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _845) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _845) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1330, Array(len=2, data=mem[(32 * _845) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _845) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _845) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _1748 = mem[(32 * _845) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _845) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _845) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _845) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _845) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _845) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _845) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _845) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _845) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _845) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _845) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _845) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_1748 + (32 * _845) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_1748 + (32 * _845) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_1748 + (32 * _845) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _845) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _845) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1330:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _845) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1330
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1330
    else:
        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args mem[172 len 20], arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[ceil32(arg4.length) + 320] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
        mem[ceil32(arg4.length) + 324] = arg2
        mem[ceil32(arg4.length) + 356] = 64
        mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
        mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
        require ext_code.size(mem[140 len 20])
        staticcall mem[140 len 20].getAmountsIn(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args mem[ceil32(arg4.length) + 324 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(arg4.length) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 320
        require return_data.size >= 32
        if not arg2:
            if not arg2:
                if not arg2:
                    _806 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]
                    _846 = mem[_806 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_806 + ceil32(arg4.length) + 320])] = mem[_806 + ceil32(arg4.length) + 352 len floor32(mem[_806 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1334 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _846) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _846) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg2
                    mem[(32 * _846) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1334
                    mem[(32 * _846) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _846) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _846) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _846) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _846) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1334, Array(len=2, data=mem[(32 * _846) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _846) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _846) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _1750 = mem[(32 * _846) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _846) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _846) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _846) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _846) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _846) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _846) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _846) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _846) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _846) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _846) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _846) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_1750 + (32 * _846) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_1750 + (32 * _846) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_1750 + (32 * _846) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _846) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _846) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1334:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _846) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1334
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1334
                else:
                    _808 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]
                    _847 = mem[_808 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_808 + ceil32(arg4.length) + 320])] = mem[_808 + ceil32(arg4.length) + 352 len floor32(mem[_808 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1338 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _847) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _847) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg2
                    mem[(32 * _847) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1338
                    mem[(32 * _847) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _847) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _847) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _847) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _847) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1338, Array(len=2, data=mem[(32 * _847) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _847) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _847) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _1752 = mem[(32 * _847) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _847) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _847) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _847) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _847) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _847) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _847) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _847) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _847) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _847) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _847) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _847) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_1752 + (32 * _847) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_1752 + (32 * _847) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_1752 + (32 * _847) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _847) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _847) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1338:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _847) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1338
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1338
            else:
                if not arg2:
                    _810 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]
                    _848 = mem[_810 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_810 + ceil32(arg4.length) + 320])] = mem[_810 + ceil32(arg4.length) + 352 len floor32(mem[_810 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1342 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _848) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _848) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg2
                    mem[(32 * _848) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1342
                    mem[(32 * _848) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _848) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _848) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _848) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _848) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1342, Array(len=2, data=mem[(32 * _848) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _848) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _848) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _1754 = mem[(32 * _848) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _848) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _848) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _848) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _848) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _848) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _848) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _848) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _848) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _848) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _848) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _848) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_1754 + (32 * _848) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_1754 + (32 * _848) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_1754 + (32 * _848) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _848) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _848) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1342:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _848) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1342
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1342
                else:
                    _812 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]
                    _849 = mem[_812 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_812 + ceil32(arg4.length) + 320])] = mem[_812 + ceil32(arg4.length) + 352 len floor32(mem[_812 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1346 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _849) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _849) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg2
                    mem[(32 * _849) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1346
                    mem[(32 * _849) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _849) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _849) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _849) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _849) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1346, Array(len=2, data=mem[(32 * _849) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _849) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _849) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _1756 = mem[(32 * _849) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _849) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _849) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _849) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _849) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _849) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _849) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _849) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _849) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _849) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _849) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _849) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_1756 + (32 * _849) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_1756 + (32 * _849) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_1756 + (32 * _849) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _849) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _849) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1346:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _849) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1346
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1346
        else:
            if not arg2:
                if not arg2:
                    _814 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]
                    _850 = mem[_814 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_814 + ceil32(arg4.length) + 320])] = mem[_814 + ceil32(arg4.length) + 352 len floor32(mem[_814 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1350 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _850) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _850) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg2
                    mem[(32 * _850) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1350
                    mem[(32 * _850) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _850) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _850) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _850) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _850) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1350, Array(len=2, data=mem[(32 * _850) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _850) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _850) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _1758 = mem[(32 * _850) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _850) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _850) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _850) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _850) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _850) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _850) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _850) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _850) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _850) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _850) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _850) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_1758 + (32 * _850) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_1758 + (32 * _850) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_1758 + (32 * _850) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _850) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _850) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1350:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _850) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1350
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1350
                else:
                    _816 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]
                    _851 = mem[_816 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_816 + ceil32(arg4.length) + 320])] = mem[_816 + ceil32(arg4.length) + 352 len floor32(mem[_816 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1354 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _851) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _851) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg2
                    mem[(32 * _851) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1354
                    mem[(32 * _851) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _851) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _851) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _851) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _851) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1354, Array(len=2, data=mem[(32 * _851) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _851) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _851) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _1760 = mem[(32 * _851) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _851) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _851) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _851) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _851) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _851) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _851) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _851) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _851) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _851) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _851) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _851) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_1760 + (32 * _851) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_1760 + (32 * _851) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_1760 + (32 * _851) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _851) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _851) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1354:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _851) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1354
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1354
            else:
                if not arg2:
                    _818 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]
                    _852 = mem[_818 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_818 + ceil32(arg4.length) + 320])] = mem[_818 + ceil32(arg4.length) + 352 len floor32(mem[_818 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1358 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _852) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _852) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg2
                    mem[(32 * _852) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1358
                    mem[(32 * _852) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _852) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _852) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _852) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _852) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1358, Array(len=2, data=mem[(32 * _852) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _852) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _852) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _1762 = mem[(32 * _852) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _852) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _852) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _852) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _852) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _852) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _852) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _852) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _852) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _852) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _852) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _852) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_1762 + (32 * _852) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_1762 + (32 * _852) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_1762 + (32 * _852) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _852) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _852) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1358:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _852) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1358
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1358
                else:
                    _820 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]
                    _853 = mem[_820 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_820 + ceil32(arg4.length) + 320])] = mem[_820 + ceil32(arg4.length) + 352 len floor32(mem[_820 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1362 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _853) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _853) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg2
                    mem[(32 * _853) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1362
                    mem[(32 * _853) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _853) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _853) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _853) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _853) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1362, Array(len=2, data=mem[(32 * _853) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _853) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _853) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _1764 = mem[(32 * _853) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _853) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _853) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _853) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _853) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _853) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _853) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _853) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _853) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _853) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _853) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _853) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_1764 + (32 * _853) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_1764 + (32 * _853) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_1764 + (32 * _853) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _853) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _853) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1362:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _853) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1362
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1362
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function waultSwapCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[96] = arg4.length
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
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
    mem[ceil32(arg4.length) + 128] = 2
    mem[ceil32(arg4.length) + 160 len 64] = call.data[calldata.size len 64]
    mem[ceil32(arg4.length) + 224] = 2
    require 1 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
    mem[ceil32(arg4.length) + 192] = address(ext_call.return_data[0])
    mem[ceil32(arg4.length) + 256] = address(ext_call.return_data[0])
    require 0 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
    mem[ceil32(arg4.length) + 160] = address(ext_call.return_data[0])
    mem[ceil32(arg4.length) + 288] = address(ext_call.return_data[0])
    require arg4.length >= 64
    if not mem[140 len 20]:
        revert with 0, 'e12'
    if not mem[172 len 20]:
        revert with 0, 'e12'
    require ext_code.size(address(ext_call.return_data[0]))
    if not arg2:
        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args mem[172 len 20], arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[ceil32(arg4.length) + 320] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
        mem[ceil32(arg4.length) + 324] = arg3
        mem[ceil32(arg4.length) + 356] = 64
        mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
        mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
        require ext_code.size(mem[140 len 20])
        staticcall mem[140 len 20].getAmountsIn(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args mem[ceil32(arg4.length) + 324 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(arg4.length) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 320
        require return_data.size >= 32
        if not arg2:
            if not arg2:
                if not arg2:
                    _790 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]
                    _838 = mem[_790 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_790 + ceil32(arg4.length) + 320])] = mem[_790 + ceil32(arg4.length) + 352 len floor32(mem[_790 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1302 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _838) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _838) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg3
                    mem[(32 * _838) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1302
                    mem[(32 * _838) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _838) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _838) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _838) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _838) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1302, Array(len=2, data=mem[(32 * _838) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _838) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _838) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _1734 = mem[(32 * _838) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _838) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _838) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _838) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _838) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _838) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _838) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _838) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _838) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _838) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _838) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _838) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_1734 + (32 * _838) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_1734 + (32 * _838) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_1734 + (32 * _838) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _838) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _838) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1302:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _838) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1302
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1302
                else:
                    _792 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]
                    _839 = mem[_792 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_792 + ceil32(arg4.length) + 320])] = mem[_792 + ceil32(arg4.length) + 352 len floor32(mem[_792 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1306 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _839) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _839) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg3
                    mem[(32 * _839) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1306
                    mem[(32 * _839) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _839) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _839) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _839) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _839) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1306, Array(len=2, data=mem[(32 * _839) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _839) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _839) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _1736 = mem[(32 * _839) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _839) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _839) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _839) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _839) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _839) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _839) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _839) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _839) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _839) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _839) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _839) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_1736 + (32 * _839) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_1736 + (32 * _839) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_1736 + (32 * _839) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _839) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _839) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1306:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _839) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1306
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1306
            else:
                if not arg2:
                    _794 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]
                    _840 = mem[_794 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_794 + ceil32(arg4.length) + 320])] = mem[_794 + ceil32(arg4.length) + 352 len floor32(mem[_794 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1310 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _840) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _840) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg3
                    mem[(32 * _840) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1310
                    mem[(32 * _840) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _840) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _840) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _840) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _840) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1310, Array(len=2, data=mem[(32 * _840) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _840) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _840) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _1738 = mem[(32 * _840) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _840) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _840) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _840) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _840) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _840) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _840) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _840) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _840) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _840) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _840) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _840) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_1738 + (32 * _840) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_1738 + (32 * _840) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_1738 + (32 * _840) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _840) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _840) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1310:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _840) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1310
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1310
                else:
                    _796 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]
                    _841 = mem[_796 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_796 + ceil32(arg4.length) + 320])] = mem[_796 + ceil32(arg4.length) + 352 len floor32(mem[_796 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1314 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _841) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _841) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg3
                    mem[(32 * _841) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1314
                    mem[(32 * _841) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _841) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _841) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _841) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _841) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1314, Array(len=2, data=mem[(32 * _841) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _841) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _841) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _1740 = mem[(32 * _841) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _841) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _841) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _841) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _841) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _841) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _841) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _841) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _841) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _841) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _841) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _841) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_1740 + (32 * _841) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_1740 + (32 * _841) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_1740 + (32 * _841) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _841) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _841) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1314:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _841) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1314
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1314
        else:
            if not arg2:
                if not arg2:
                    _798 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]
                    _842 = mem[_798 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_798 + ceil32(arg4.length) + 320])] = mem[_798 + ceil32(arg4.length) + 352 len floor32(mem[_798 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1318 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _842) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _842) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg3
                    mem[(32 * _842) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1318
                    mem[(32 * _842) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _842) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _842) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _842) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _842) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1318, Array(len=2, data=mem[(32 * _842) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _842) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _842) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _1742 = mem[(32 * _842) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _842) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _842) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _842) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _842) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _842) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _842) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _842) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _842) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _842) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _842) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _842) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_1742 + (32 * _842) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_1742 + (32 * _842) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_1742 + (32 * _842) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _842) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _842) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1318:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _842) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1318
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1318
                else:
                    _800 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]
                    _843 = mem[_800 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_800 + ceil32(arg4.length) + 320])] = mem[_800 + ceil32(arg4.length) + 352 len floor32(mem[_800 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1322 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _843) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _843) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg3
                    mem[(32 * _843) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1322
                    mem[(32 * _843) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _843) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _843) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _843) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _843) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1322, Array(len=2, data=mem[(32 * _843) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _843) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _843) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _1744 = mem[(32 * _843) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _843) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _843) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _843) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _843) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _843) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _843) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _843) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _843) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _843) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _843) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _843) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_1744 + (32 * _843) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_1744 + (32 * _843) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_1744 + (32 * _843) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _843) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _843) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1322:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _843) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1322
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1322
            else:
                if not arg2:
                    _802 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]
                    _844 = mem[_802 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_802 + ceil32(arg4.length) + 320])] = mem[_802 + ceil32(arg4.length) + 352 len floor32(mem[_802 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1326 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _844) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _844) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg3
                    mem[(32 * _844) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1326
                    mem[(32 * _844) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _844) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _844) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _844) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _844) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1326, Array(len=2, data=mem[(32 * _844) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _844) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _844) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _1746 = mem[(32 * _844) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _844) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _844) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _844) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _844) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _844) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _844) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _844) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _844) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _844) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _844) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _844) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_1746 + (32 * _844) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_1746 + (32 * _844) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_1746 + (32 * _844) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _844) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _844) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1326:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _844) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1326
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1326
                else:
                    _804 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]
                    _845 = mem[_804 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_804 + ceil32(arg4.length) + 320])] = mem[_804 + ceil32(arg4.length) + 352 len floor32(mem[_804 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1330 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _845) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _845) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg3
                    mem[(32 * _845) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1330
                    mem[(32 * _845) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _845) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _845) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _845) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _845) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1330, Array(len=2, data=mem[(32 * _845) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _845) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _845) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _1748 = mem[(32 * _845) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _845) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _845) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _845) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _845) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _845) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _845) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _845) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _845) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _845) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _845) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _845) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_1748 + (32 * _845) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_1748 + (32 * _845) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_1748 + (32 * _845) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _845) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _845) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1330:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _845) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1330
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1330
    else:
        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args mem[172 len 20], arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[ceil32(arg4.length) + 320] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
        mem[ceil32(arg4.length) + 324] = arg2
        mem[ceil32(arg4.length) + 356] = 64
        mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
        mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
        require ext_code.size(mem[140 len 20])
        staticcall mem[140 len 20].getAmountsIn(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args mem[ceil32(arg4.length) + 324 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(arg4.length) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 320
        require return_data.size >= 32
        if not arg2:
            if not arg2:
                if not arg2:
                    _806 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]
                    _846 = mem[_806 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_806 + ceil32(arg4.length) + 320])] = mem[_806 + ceil32(arg4.length) + 352 len floor32(mem[_806 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1334 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _846) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _846) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg2
                    mem[(32 * _846) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1334
                    mem[(32 * _846) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _846) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _846) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _846) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _846) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1334, Array(len=2, data=mem[(32 * _846) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _846) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _846) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _1750 = mem[(32 * _846) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _846) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _846) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _846) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _846) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _846) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _846) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _846) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _846) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _846) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _846) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _846) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_1750 + (32 * _846) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_1750 + (32 * _846) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_1750 + (32 * _846) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _846) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _846) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1334:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _846) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1334
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1334
                else:
                    _808 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]
                    _847 = mem[_808 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_808 + ceil32(arg4.length) + 320])] = mem[_808 + ceil32(arg4.length) + 352 len floor32(mem[_808 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1338 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _847) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _847) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg2
                    mem[(32 * _847) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1338
                    mem[(32 * _847) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _847) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _847) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _847) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _847) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1338, Array(len=2, data=mem[(32 * _847) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _847) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _847) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _1752 = mem[(32 * _847) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _847) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _847) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _847) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _847) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _847) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _847) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _847) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _847) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _847) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _847) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _847) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_1752 + (32 * _847) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_1752 + (32 * _847) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_1752 + (32 * _847) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _847) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _847) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1338:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _847) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1338
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1338
            else:
                if not arg2:
                    _810 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]
                    _848 = mem[_810 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_810 + ceil32(arg4.length) + 320])] = mem[_810 + ceil32(arg4.length) + 352 len floor32(mem[_810 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1342 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _848) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _848) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg2
                    mem[(32 * _848) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1342
                    mem[(32 * _848) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _848) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _848) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _848) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _848) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1342, Array(len=2, data=mem[(32 * _848) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _848) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _848) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _1754 = mem[(32 * _848) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _848) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _848) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _848) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _848) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _848) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _848) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _848) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _848) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _848) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _848) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _848) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_1754 + (32 * _848) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_1754 + (32 * _848) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_1754 + (32 * _848) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _848) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _848) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1342:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _848) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1342
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1342
                else:
                    _812 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]
                    _849 = mem[_812 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_812 + ceil32(arg4.length) + 320])] = mem[_812 + ceil32(arg4.length) + 352 len floor32(mem[_812 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1346 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _849) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _849) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg2
                    mem[(32 * _849) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1346
                    mem[(32 * _849) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _849) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _849) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _849) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _849) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1346, Array(len=2, data=mem[(32 * _849) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _849) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _849) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _1756 = mem[(32 * _849) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _849) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _849) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _849) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _849) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _849) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _849) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _849) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _849) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _849) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _849) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _849) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_1756 + (32 * _849) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_1756 + (32 * _849) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_1756 + (32 * _849) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _849) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _849) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1346:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _849) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1346
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1346
        else:
            if not arg2:
                if not arg2:
                    _814 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]
                    _850 = mem[_814 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_814 + ceil32(arg4.length) + 320])] = mem[_814 + ceil32(arg4.length) + 352 len floor32(mem[_814 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1350 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _850) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _850) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg2
                    mem[(32 * _850) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1350
                    mem[(32 * _850) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _850) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _850) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _850) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _850) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1350, Array(len=2, data=mem[(32 * _850) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _850) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _850) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _1758 = mem[(32 * _850) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _850) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _850) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _850) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _850) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _850) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _850) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _850) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _850) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _850) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _850) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _850) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_1758 + (32 * _850) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_1758 + (32 * _850) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_1758 + (32 * _850) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _850) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _850) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1350:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _850) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1350
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1350
                else:
                    _816 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]
                    _851 = mem[_816 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_816 + ceil32(arg4.length) + 320])] = mem[_816 + ceil32(arg4.length) + 352 len floor32(mem[_816 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1354 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _851) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _851) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg2
                    mem[(32 * _851) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1354
                    mem[(32 * _851) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _851) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _851) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _851) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _851) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1354, Array(len=2, data=mem[(32 * _851) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _851) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _851) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _1760 = mem[(32 * _851) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _851) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _851) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _851) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _851) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _851) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _851) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _851) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _851) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _851) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _851) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _851) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_1760 + (32 * _851) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_1760 + (32 * _851) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_1760 + (32 * _851) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _851) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _851) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1354:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _851) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1354
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1354
            else:
                if not arg2:
                    _818 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]
                    _852 = mem[_818 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_818 + ceil32(arg4.length) + 320])] = mem[_818 + ceil32(arg4.length) + 352 len floor32(mem[_818 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1358 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _852) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _852) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg2
                    mem[(32 * _852) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1358
                    mem[(32 * _852) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _852) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _852) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _852) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _852) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1358, Array(len=2, data=mem[(32 * _852) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _852) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _852) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _1762 = mem[(32 * _852) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _852) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _852) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _852) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _852) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _852) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _852) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _852) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _852) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _852) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _852) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _852) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_1762 + (32 * _852) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_1762 + (32 * _852) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_1762 + (32 * _852) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _852) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _852) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1358:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _852) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1358
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1358
                else:
                    _820 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]
                    _853 = mem[_820 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_820 + ceil32(arg4.length) + 320])] = mem[_820 + ceil32(arg4.length) + 352 len floor32(mem[_820 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1362 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _853) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _853) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg2
                    mem[(32 * _853) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1362
                    mem[(32 * _853) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _853) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _853) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _853) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _853) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1362, Array(len=2, data=mem[(32 * _853) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _853) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _853) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _1764 = mem[(32 * _853) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _853) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _853) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _853) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _853) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _853) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _853) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _853) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _853) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _853) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _853) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _853) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_1764 + (32 * _853) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_1764 + (32 * _853) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_1764 + (32 * _853) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _853) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _853) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1362:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _853) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1362
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1362
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}



}
