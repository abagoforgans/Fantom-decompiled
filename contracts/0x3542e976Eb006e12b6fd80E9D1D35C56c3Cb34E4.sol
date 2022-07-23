contract main {




// =====================  Runtime code  =====================


#
#  - waultSwapCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#
address owner;

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function check(address arg1, uint256 arg2, address arg3, address arg4, address arg5) payable {
    require calldata.size - 4 >= 160
    mem[256] = arg3
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
                    _918 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]
                    _966 = mem[_918 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_918 + ceil32(arg4.length) + 320])] = mem[_918 + ceil32(arg4.length) + 352 len floor32(mem[_918 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1558 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg3
                    mem[(32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1558
                    mem[(32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1558, Array(len=2, data=mem[(32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _966) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _2118 = mem[(32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _966) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _966) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_2118 + (32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_2118 + (32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_2118 + (32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _966) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _966) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1558:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1558
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _966) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1558
                else:
                    _920 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]
                    _967 = mem[_920 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_920 + ceil32(arg4.length) + 320])] = mem[_920 + ceil32(arg4.length) + 352 len floor32(mem[_920 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1562 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg3
                    mem[(32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1562
                    mem[(32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1562, Array(len=2, data=mem[(32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _967) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _2120 = mem[(32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _967) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _967) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_2120 + (32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_2120 + (32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_2120 + (32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _967) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _967) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1562:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1562
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _967) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1562
            else:
                if not arg2:
                    _922 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]
                    _968 = mem[_922 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_922 + ceil32(arg4.length) + 320])] = mem[_922 + ceil32(arg4.length) + 352 len floor32(mem[_922 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1566 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg3
                    mem[(32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1566
                    mem[(32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1566, Array(len=2, data=mem[(32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _968) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _2122 = mem[(32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _968) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _968) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_2122 + (32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_2122 + (32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_2122 + (32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _968) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _968) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1566:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1566
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _968) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1566
                else:
                    _924 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]
                    _969 = mem[_924 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_924 + ceil32(arg4.length) + 320])] = mem[_924 + ceil32(arg4.length) + 352 len floor32(mem[_924 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1570 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg3
                    mem[(32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1570
                    mem[(32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1570, Array(len=2, data=mem[(32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _969) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _2124 = mem[(32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _969) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _969) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_2124 + (32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_2124 + (32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_2124 + (32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _969) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _969) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1570:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1570
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _969) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1570
        else:
            if not arg2:
                if not arg2:
                    _926 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]
                    _970 = mem[_926 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_926 + ceil32(arg4.length) + 320])] = mem[_926 + ceil32(arg4.length) + 352 len floor32(mem[_926 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1574 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg3
                    mem[(32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1574
                    mem[(32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1574, Array(len=2, data=mem[(32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _2126 = mem[(32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_2126 + (32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_2126 + (32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_2126 + (32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1574:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1574
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1574
                else:
                    _928 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]
                    _971 = mem[_928 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_928 + ceil32(arg4.length) + 320])] = mem[_928 + ceil32(arg4.length) + 352 len floor32(mem[_928 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1578 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg3
                    mem[(32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1578
                    mem[(32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1578, Array(len=2, data=mem[(32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _2128 = mem[(32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_2128 + (32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_2128 + (32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_2128 + (32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1578:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1578
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1578
            else:
                if not arg2:
                    _930 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]
                    _972 = mem[_930 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_930 + ceil32(arg4.length) + 320])] = mem[_930 + ceil32(arg4.length) + 352 len floor32(mem[_930 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1582 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _972) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _972) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg3
                    mem[(32 * _972) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1582
                    mem[(32 * _972) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _972) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _972) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _972) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _972) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1582, Array(len=2, data=mem[(32 * _972) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _972) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _972) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _2130 = mem[(32 * _972) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _972) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _972) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _972) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _972) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _972) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _972) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _972) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _972) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _972) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _972) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _972) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_2130 + (32 * _972) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_2130 + (32 * _972) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_2130 + (32 * _972) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _972) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _972) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1582:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1582
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _972) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1582
                else:
                    _932 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]
                    _973 = mem[_932 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_932 + ceil32(arg4.length) + 320])] = mem[_932 + ceil32(arg4.length) + 352 len floor32(mem[_932 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1586 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _973) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _973) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg3
                    mem[(32 * _973) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1586
                    mem[(32 * _973) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _973) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _973) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _973) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _973) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1586, Array(len=2, data=mem[(32 * _973) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _973) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _973) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _2132 = mem[(32 * _973) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _973) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _973) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _973) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _973) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _973) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _973) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _973) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _973) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _973) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _973) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _973) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_2132 + (32 * _973) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_2132 + (32 * _973) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_2132 + (32 * _973) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _973) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _973) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1586:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1586
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _973) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1586
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
                    _934 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]
                    _974 = mem[_934 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_934 + ceil32(arg4.length) + 320])] = mem[_934 + ceil32(arg4.length) + 352 len floor32(mem[_934 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1590 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _974) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _974) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg2
                    mem[(32 * _974) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1590
                    mem[(32 * _974) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _974) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _974) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _974) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _974) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1590, Array(len=2, data=mem[(32 * _974) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _974) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _974) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _2134 = mem[(32 * _974) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _974) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _974) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _974) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _974) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _974) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _974) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _974) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _974) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _974) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _974) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _974) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_2134 + (32 * _974) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_2134 + (32 * _974) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_2134 + (32 * _974) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _974) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _974) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1590:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1590
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _974) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1590
                else:
                    _936 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]
                    _975 = mem[_936 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_936 + ceil32(arg4.length) + 320])] = mem[_936 + ceil32(arg4.length) + 352 len floor32(mem[_936 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1594 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _975) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _975) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg2
                    mem[(32 * _975) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1594
                    mem[(32 * _975) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _975) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _975) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _975) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _975) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1594, Array(len=2, data=mem[(32 * _975) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _975) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _975) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _2136 = mem[(32 * _975) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _975) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _975) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _975) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _975) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _975) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _975) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _975) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _975) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _975) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _975) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _975) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_2136 + (32 * _975) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_2136 + (32 * _975) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_2136 + (32 * _975) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _975) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _975) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1594:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1594
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _975) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1594
            else:
                if not arg2:
                    _938 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]
                    _976 = mem[_938 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_938 + ceil32(arg4.length) + 320])] = mem[_938 + ceil32(arg4.length) + 352 len floor32(mem[_938 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1598 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _976) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _976) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg2
                    mem[(32 * _976) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1598
                    mem[(32 * _976) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _976) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _976) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _976) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _976) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1598, Array(len=2, data=mem[(32 * _976) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _976) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _976) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _2138 = mem[(32 * _976) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _976) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _976) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _976) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _976) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _976) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _976) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _976) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _976) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _976) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _976) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _976) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_2138 + (32 * _976) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_2138 + (32 * _976) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_2138 + (32 * _976) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _976) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _976) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1598:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1598
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _976) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1598
                else:
                    _940 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]
                    _977 = mem[_940 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_940 + ceil32(arg4.length) + 320])] = mem[_940 + ceil32(arg4.length) + 352 len floor32(mem[_940 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1602 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _977) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _977) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg2
                    mem[(32 * _977) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1602
                    mem[(32 * _977) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _977) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _977) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _977) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _977) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1602, Array(len=2, data=mem[(32 * _977) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _977) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _977) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _2140 = mem[(32 * _977) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _977) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _977) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _977) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _977) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _977) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _977) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _977) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _977) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _977) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _977) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _977) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_2140 + (32 * _977) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_2140 + (32 * _977) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_2140 + (32 * _977) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _977) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _977) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1602:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1602
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _977) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1602
        else:
            if not arg2:
                if not arg2:
                    _942 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]
                    _978 = mem[_942 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_942 + ceil32(arg4.length) + 320])] = mem[_942 + ceil32(arg4.length) + 352 len floor32(mem[_942 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1606 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _978) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _978) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg2
                    mem[(32 * _978) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1606
                    mem[(32 * _978) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _978) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _978) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _978) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _978) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1606, Array(len=2, data=mem[(32 * _978) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _978) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _978) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _2142 = mem[(32 * _978) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _978) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _978) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _978) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _978) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _978) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _978) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _978) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _978) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _978) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _978) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _978) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_2142 + (32 * _978) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_2142 + (32 * _978) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_2142 + (32 * _978) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _978) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _978) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1606:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1606
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _978) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1606
                else:
                    _944 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]
                    _979 = mem[_944 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_944 + ceil32(arg4.length) + 320])] = mem[_944 + ceil32(arg4.length) + 352 len floor32(mem[_944 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1610 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _979) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _979) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg2
                    mem[(32 * _979) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1610
                    mem[(32 * _979) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _979) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _979) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _979) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _979) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1610, Array(len=2, data=mem[(32 * _979) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _979) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _979) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _2144 = mem[(32 * _979) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _979) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _979) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _979) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _979) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _979) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _979) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _979) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _979) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _979) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _979) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _979) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_2144 + (32 * _979) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_2144 + (32 * _979) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_2144 + (32 * _979) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _979) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _979) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1610:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1610
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _979) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1610
            else:
                if not arg2:
                    _946 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]
                    _980 = mem[_946 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_946 + ceil32(arg4.length) + 320])] = mem[_946 + ceil32(arg4.length) + 352 len floor32(mem[_946 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1614 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _980) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _980) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg2
                    mem[(32 * _980) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1614
                    mem[(32 * _980) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _980) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _980) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _980) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _980) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1614, Array(len=2, data=mem[(32 * _980) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _980) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _980) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _2146 = mem[(32 * _980) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _980) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _980) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _980) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _980) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _980) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _980) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _980) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _980) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _980) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _980) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _980) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_2146 + (32 * _980) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_2146 + (32 * _980) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_2146 + (32 * _980) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _980) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _980) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1614:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1614
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _980) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1614
                else:
                    _948 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]
                    _981 = mem[_948 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_948 + ceil32(arg4.length) + 320])] = mem[_948 + ceil32(arg4.length) + 352 len floor32(mem[_948 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1618 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _981) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _981) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg2
                    mem[(32 * _981) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1618
                    mem[(32 * _981) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _981) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _981) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _981) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _981) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1618, Array(len=2, data=mem[(32 * _981) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _981) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _981) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _2148 = mem[(32 * _981) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _981) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _981) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _981) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _981) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _981) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _981) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _981) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _981) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _981) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _981) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _981) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_2148 + (32 * _981) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_2148 + (32 * _981) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_2148 + (32 * _981) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _981) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _981) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1618:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1618
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _981) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1618
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function wardenCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
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
                    _918 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]
                    _966 = mem[_918 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_918 + ceil32(arg4.length) + 320])] = mem[_918 + ceil32(arg4.length) + 352 len floor32(mem[_918 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1558 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg3
                    mem[(32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1558
                    mem[(32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1558, Array(len=2, data=mem[(32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _966) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _2118 = mem[(32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _966) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _966) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_2118 + (32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_2118 + (32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_2118 + (32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _966) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _966) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1558:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1558
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _966) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1558
                else:
                    _920 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]
                    _967 = mem[_920 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_920 + ceil32(arg4.length) + 320])] = mem[_920 + ceil32(arg4.length) + 352 len floor32(mem[_920 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1562 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg3
                    mem[(32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1562
                    mem[(32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1562, Array(len=2, data=mem[(32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _967) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _2120 = mem[(32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _967) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _967) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_2120 + (32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_2120 + (32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_2120 + (32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _967) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _967) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1562:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1562
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _967) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1562
            else:
                if not arg2:
                    _922 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]
                    _968 = mem[_922 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_922 + ceil32(arg4.length) + 320])] = mem[_922 + ceil32(arg4.length) + 352 len floor32(mem[_922 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1566 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg3
                    mem[(32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1566
                    mem[(32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1566, Array(len=2, data=mem[(32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _968) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _2122 = mem[(32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _968) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _968) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_2122 + (32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_2122 + (32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_2122 + (32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _968) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _968) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1566:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1566
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _968) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1566
                else:
                    _924 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]
                    _969 = mem[_924 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_924 + ceil32(arg4.length) + 320])] = mem[_924 + ceil32(arg4.length) + 352 len floor32(mem[_924 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1570 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg3
                    mem[(32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1570
                    mem[(32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1570, Array(len=2, data=mem[(32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _969) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _2124 = mem[(32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _969) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _969) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_2124 + (32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_2124 + (32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_2124 + (32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _969) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _969) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1570:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1570
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _969) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1570
        else:
            if not arg2:
                if not arg2:
                    _926 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]
                    _970 = mem[_926 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_926 + ceil32(arg4.length) + 320])] = mem[_926 + ceil32(arg4.length) + 352 len floor32(mem[_926 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1574 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg3
                    mem[(32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1574
                    mem[(32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1574, Array(len=2, data=mem[(32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _2126 = mem[(32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_2126 + (32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_2126 + (32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_2126 + (32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1574:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1574
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1574
                else:
                    _928 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]
                    _971 = mem[_928 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_928 + ceil32(arg4.length) + 320])] = mem[_928 + ceil32(arg4.length) + 352 len floor32(mem[_928 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1578 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg3
                    mem[(32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1578
                    mem[(32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1578, Array(len=2, data=mem[(32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _2128 = mem[(32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_2128 + (32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_2128 + (32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_2128 + (32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1578:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1578
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1578
            else:
                if not arg2:
                    _930 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]
                    _972 = mem[_930 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_930 + ceil32(arg4.length) + 320])] = mem[_930 + ceil32(arg4.length) + 352 len floor32(mem[_930 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1582 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _972) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _972) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg3
                    mem[(32 * _972) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1582
                    mem[(32 * _972) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _972) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _972) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _972) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _972) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1582, Array(len=2, data=mem[(32 * _972) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _972) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _972) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _2130 = mem[(32 * _972) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _972) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _972) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _972) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _972) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _972) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _972) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _972) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _972) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _972) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _972) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _972) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_2130 + (32 * _972) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_2130 + (32 * _972) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_2130 + (32 * _972) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _972) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _972) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1582:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1582
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _972) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1582
                else:
                    _932 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]
                    _973 = mem[_932 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_932 + ceil32(arg4.length) + 320])] = mem[_932 + ceil32(arg4.length) + 352 len floor32(mem[_932 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1586 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _973) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _973) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg3
                    mem[(32 * _973) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1586
                    mem[(32 * _973) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _973) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _973) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _973) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _973) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1586, Array(len=2, data=mem[(32 * _973) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _973) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _973) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _2132 = mem[(32 * _973) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _973) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _973) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _973) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _973) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _973) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _973) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _973) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _973) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _973) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _973) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _973) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_2132 + (32 * _973) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_2132 + (32 * _973) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_2132 + (32 * _973) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _973) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _973) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1586:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1586
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _973) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1586
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
                    _934 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]
                    _974 = mem[_934 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_934 + ceil32(arg4.length) + 320])] = mem[_934 + ceil32(arg4.length) + 352 len floor32(mem[_934 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1590 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _974) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _974) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg2
                    mem[(32 * _974) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1590
                    mem[(32 * _974) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _974) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _974) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _974) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _974) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1590, Array(len=2, data=mem[(32 * _974) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _974) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _974) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _2134 = mem[(32 * _974) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _974) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _974) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _974) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _974) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _974) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _974) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _974) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _974) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _974) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _974) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _974) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_2134 + (32 * _974) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_2134 + (32 * _974) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_2134 + (32 * _974) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _974) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _974) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1590:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1590
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _974) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1590
                else:
                    _936 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]
                    _975 = mem[_936 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_936 + ceil32(arg4.length) + 320])] = mem[_936 + ceil32(arg4.length) + 352 len floor32(mem[_936 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1594 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _975) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _975) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg2
                    mem[(32 * _975) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1594
                    mem[(32 * _975) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _975) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _975) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _975) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _975) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1594, Array(len=2, data=mem[(32 * _975) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _975) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _975) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _2136 = mem[(32 * _975) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _975) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _975) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _975) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _975) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _975) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _975) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _975) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _975) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _975) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _975) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _975) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_2136 + (32 * _975) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_2136 + (32 * _975) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_2136 + (32 * _975) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _975) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _975) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1594:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1594
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _975) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1594
            else:
                if not arg2:
                    _938 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]
                    _976 = mem[_938 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_938 + ceil32(arg4.length) + 320])] = mem[_938 + ceil32(arg4.length) + 352 len floor32(mem[_938 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1598 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _976) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _976) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg2
                    mem[(32 * _976) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1598
                    mem[(32 * _976) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _976) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _976) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _976) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _976) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1598, Array(len=2, data=mem[(32 * _976) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _976) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _976) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _2138 = mem[(32 * _976) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _976) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _976) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _976) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _976) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _976) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _976) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _976) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _976) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _976) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _976) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _976) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_2138 + (32 * _976) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_2138 + (32 * _976) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_2138 + (32 * _976) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _976) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _976) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1598:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1598
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _976) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1598
                else:
                    _940 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]
                    _977 = mem[_940 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_940 + ceil32(arg4.length) + 320])] = mem[_940 + ceil32(arg4.length) + 352 len floor32(mem[_940 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1602 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _977) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _977) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg2
                    mem[(32 * _977) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1602
                    mem[(32 * _977) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _977) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _977) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _977) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _977) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1602, Array(len=2, data=mem[(32 * _977) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _977) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _977) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _2140 = mem[(32 * _977) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _977) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _977) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _977) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _977) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _977) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _977) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _977) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _977) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _977) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _977) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _977) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_2140 + (32 * _977) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_2140 + (32 * _977) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_2140 + (32 * _977) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _977) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _977) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1602:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1602
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _977) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1602
        else:
            if not arg2:
                if not arg2:
                    _942 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]
                    _978 = mem[_942 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_942 + ceil32(arg4.length) + 320])] = mem[_942 + ceil32(arg4.length) + 352 len floor32(mem[_942 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1606 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _978) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _978) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg2
                    mem[(32 * _978) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1606
                    mem[(32 * _978) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _978) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _978) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _978) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _978) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1606, Array(len=2, data=mem[(32 * _978) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _978) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _978) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _2142 = mem[(32 * _978) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _978) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _978) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _978) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _978) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _978) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _978) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _978) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _978) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _978) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _978) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _978) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_2142 + (32 * _978) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_2142 + (32 * _978) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_2142 + (32 * _978) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _978) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _978) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1606:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1606
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _978) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1606
                else:
                    _944 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]
                    _979 = mem[_944 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_944 + ceil32(arg4.length) + 320])] = mem[_944 + ceil32(arg4.length) + 352 len floor32(mem[_944 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1610 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _979) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _979) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg2
                    mem[(32 * _979) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1610
                    mem[(32 * _979) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _979) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _979) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _979) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _979) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1610, Array(len=2, data=mem[(32 * _979) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _979) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _979) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _2144 = mem[(32 * _979) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _979) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _979) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _979) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _979) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _979) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _979) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _979) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _979) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _979) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _979) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _979) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_2144 + (32 * _979) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_2144 + (32 * _979) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_2144 + (32 * _979) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _979) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _979) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1610:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1610
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _979) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1610
            else:
                if not arg2:
                    _946 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]
                    _980 = mem[_946 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_946 + ceil32(arg4.length) + 320])] = mem[_946 + ceil32(arg4.length) + 352 len floor32(mem[_946 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1614 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _980) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _980) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg2
                    mem[(32 * _980) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1614
                    mem[(32 * _980) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _980) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _980) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _980) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _980) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1614, Array(len=2, data=mem[(32 * _980) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _980) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _980) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _2146 = mem[(32 * _980) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _980) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _980) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _980) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _980) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _980) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _980) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _980) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _980) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _980) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _980) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _980) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_2146 + (32 * _980) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_2146 + (32 * _980) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_2146 + (32 * _980) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _980) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _980) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1614:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1614
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _980) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1614
                else:
                    _948 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]
                    _981 = mem[_948 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_948 + ceil32(arg4.length) + 320])] = mem[_948 + ceil32(arg4.length) + 352 len floor32(mem[_948 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1618 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _981) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _981) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg2
                    mem[(32 * _981) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1618
                    mem[(32 * _981) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _981) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _981) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _981) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _981) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1618, Array(len=2, data=mem[(32 * _981) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _981) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _981) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _2148 = mem[(32 * _981) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _981) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _981) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _981) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _981) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _981) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _981) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _981) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _981) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _981) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _981) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _981) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_2148 + (32 * _981) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_2148 + (32 * _981) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_2148 + (32 * _981) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _981) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _981) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1618:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1618
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _981) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1618
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function BiswapCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
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
                    _918 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]
                    _966 = mem[_918 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_918 + ceil32(arg4.length) + 320])] = mem[_918 + ceil32(arg4.length) + 352 len floor32(mem[_918 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1558 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg3
                    mem[(32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1558
                    mem[(32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1558, Array(len=2, data=mem[(32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _966) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _2118 = mem[(32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _966) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _966) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_2118 + (32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_2118 + (32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_2118 + (32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _966) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _966) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1558:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1558
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _966) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1558
                else:
                    _920 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]
                    _967 = mem[_920 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_920 + ceil32(arg4.length) + 320])] = mem[_920 + ceil32(arg4.length) + 352 len floor32(mem[_920 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1562 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg3
                    mem[(32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1562
                    mem[(32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1562, Array(len=2, data=mem[(32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _967) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _2120 = mem[(32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _967) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _967) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_2120 + (32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_2120 + (32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_2120 + (32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _967) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _967) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1562:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1562
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _967) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1562
            else:
                if not arg2:
                    _922 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]
                    _968 = mem[_922 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_922 + ceil32(arg4.length) + 320])] = mem[_922 + ceil32(arg4.length) + 352 len floor32(mem[_922 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1566 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg3
                    mem[(32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1566
                    mem[(32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1566, Array(len=2, data=mem[(32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _968) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _2122 = mem[(32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _968) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _968) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_2122 + (32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_2122 + (32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_2122 + (32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _968) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _968) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1566:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1566
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _968) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1566
                else:
                    _924 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]
                    _969 = mem[_924 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_924 + ceil32(arg4.length) + 320])] = mem[_924 + ceil32(arg4.length) + 352 len floor32(mem[_924 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1570 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg3
                    mem[(32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1570
                    mem[(32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1570, Array(len=2, data=mem[(32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _969) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _2124 = mem[(32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _969) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _969) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_2124 + (32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_2124 + (32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_2124 + (32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _969) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _969) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1570:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1570
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _969) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1570
        else:
            if not arg2:
                if not arg2:
                    _926 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]
                    _970 = mem[_926 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_926 + ceil32(arg4.length) + 320])] = mem[_926 + ceil32(arg4.length) + 352 len floor32(mem[_926 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1574 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg3
                    mem[(32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1574
                    mem[(32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1574, Array(len=2, data=mem[(32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _2126 = mem[(32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_2126 + (32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_2126 + (32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_2126 + (32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1574:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1574
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1574
                else:
                    _928 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]
                    _971 = mem[_928 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_928 + ceil32(arg4.length) + 320])] = mem[_928 + ceil32(arg4.length) + 352 len floor32(mem[_928 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1578 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg3
                    mem[(32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1578
                    mem[(32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1578, Array(len=2, data=mem[(32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _2128 = mem[(32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_2128 + (32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_2128 + (32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_2128 + (32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1578:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1578
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1578
            else:
                if not arg2:
                    _930 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]
                    _972 = mem[_930 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_930 + ceil32(arg4.length) + 320])] = mem[_930 + ceil32(arg4.length) + 352 len floor32(mem[_930 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1582 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _972) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _972) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg3
                    mem[(32 * _972) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1582
                    mem[(32 * _972) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _972) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _972) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _972) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _972) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1582, Array(len=2, data=mem[(32 * _972) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _972) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _972) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _2130 = mem[(32 * _972) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _972) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _972) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _972) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _972) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _972) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _972) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _972) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _972) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _972) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _972) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _972) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_2130 + (32 * _972) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_2130 + (32 * _972) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_2130 + (32 * _972) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _972) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _972) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1582:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1582
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _972) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1582
                else:
                    _932 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]
                    _973 = mem[_932 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_932 + ceil32(arg4.length) + 320])] = mem[_932 + ceil32(arg4.length) + 352 len floor32(mem[_932 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1586 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _973) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _973) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg3
                    mem[(32 * _973) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1586
                    mem[(32 * _973) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _973) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _973) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _973) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _973) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1586, Array(len=2, data=mem[(32 * _973) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _973) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _973) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _2132 = mem[(32 * _973) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _973) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _973) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _973) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _973) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _973) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _973) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _973) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _973) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _973) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _973) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _973) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_2132 + (32 * _973) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_2132 + (32 * _973) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_2132 + (32 * _973) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _973) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _973) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1586:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1586
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _973) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1586
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
                    _934 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]
                    _974 = mem[_934 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_934 + ceil32(arg4.length) + 320])] = mem[_934 + ceil32(arg4.length) + 352 len floor32(mem[_934 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1590 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _974) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _974) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg2
                    mem[(32 * _974) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1590
                    mem[(32 * _974) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _974) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _974) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _974) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _974) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1590, Array(len=2, data=mem[(32 * _974) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _974) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _974) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _2134 = mem[(32 * _974) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _974) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _974) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _974) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _974) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _974) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _974) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _974) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _974) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _974) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _974) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _974) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_2134 + (32 * _974) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_2134 + (32 * _974) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_2134 + (32 * _974) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _974) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _974) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1590:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1590
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _974) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1590
                else:
                    _936 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]
                    _975 = mem[_936 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_936 + ceil32(arg4.length) + 320])] = mem[_936 + ceil32(arg4.length) + 352 len floor32(mem[_936 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1594 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _975) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _975) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg2
                    mem[(32 * _975) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1594
                    mem[(32 * _975) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _975) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _975) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _975) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _975) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1594, Array(len=2, data=mem[(32 * _975) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _975) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _975) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _2136 = mem[(32 * _975) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _975) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _975) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _975) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _975) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _975) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _975) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _975) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _975) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _975) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _975) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _975) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_2136 + (32 * _975) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_2136 + (32 * _975) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_2136 + (32 * _975) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _975) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _975) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1594:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1594
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _975) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1594
            else:
                if not arg2:
                    _938 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]
                    _976 = mem[_938 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_938 + ceil32(arg4.length) + 320])] = mem[_938 + ceil32(arg4.length) + 352 len floor32(mem[_938 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1598 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _976) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _976) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg2
                    mem[(32 * _976) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1598
                    mem[(32 * _976) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _976) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _976) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _976) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _976) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1598, Array(len=2, data=mem[(32 * _976) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _976) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _976) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _2138 = mem[(32 * _976) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _976) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _976) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _976) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _976) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _976) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _976) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _976) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _976) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _976) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _976) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _976) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_2138 + (32 * _976) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_2138 + (32 * _976) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_2138 + (32 * _976) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _976) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _976) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1598:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1598
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _976) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1598
                else:
                    _940 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]
                    _977 = mem[_940 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_940 + ceil32(arg4.length) + 320])] = mem[_940 + ceil32(arg4.length) + 352 len floor32(mem[_940 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1602 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _977) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _977) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg2
                    mem[(32 * _977) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1602
                    mem[(32 * _977) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _977) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _977) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _977) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _977) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1602, Array(len=2, data=mem[(32 * _977) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _977) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _977) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _2140 = mem[(32 * _977) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _977) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _977) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _977) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _977) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _977) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _977) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _977) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _977) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _977) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _977) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _977) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_2140 + (32 * _977) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_2140 + (32 * _977) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_2140 + (32 * _977) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _977) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _977) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1602:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1602
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _977) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1602
        else:
            if not arg2:
                if not arg2:
                    _942 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]
                    _978 = mem[_942 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_942 + ceil32(arg4.length) + 320])] = mem[_942 + ceil32(arg4.length) + 352 len floor32(mem[_942 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1606 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _978) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _978) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg2
                    mem[(32 * _978) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1606
                    mem[(32 * _978) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _978) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _978) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _978) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _978) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1606, Array(len=2, data=mem[(32 * _978) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _978) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _978) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _2142 = mem[(32 * _978) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _978) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _978) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _978) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _978) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _978) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _978) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _978) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _978) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _978) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _978) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _978) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_2142 + (32 * _978) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_2142 + (32 * _978) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_2142 + (32 * _978) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _978) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _978) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1606:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1606
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _978) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1606
                else:
                    _944 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]
                    _979 = mem[_944 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_944 + ceil32(arg4.length) + 320])] = mem[_944 + ceil32(arg4.length) + 352 len floor32(mem[_944 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1610 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _979) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _979) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg2
                    mem[(32 * _979) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1610
                    mem[(32 * _979) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _979) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _979) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _979) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _979) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1610, Array(len=2, data=mem[(32 * _979) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _979) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _979) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _2144 = mem[(32 * _979) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _979) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _979) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _979) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _979) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _979) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _979) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _979) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _979) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _979) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _979) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _979) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_2144 + (32 * _979) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_2144 + (32 * _979) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_2144 + (32 * _979) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _979) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _979) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1610:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1610
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _979) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1610
            else:
                if not arg2:
                    _946 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]
                    _980 = mem[_946 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_946 + ceil32(arg4.length) + 320])] = mem[_946 + ceil32(arg4.length) + 352 len floor32(mem[_946 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1614 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _980) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _980) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg2
                    mem[(32 * _980) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1614
                    mem[(32 * _980) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _980) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _980) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _980) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _980) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1614, Array(len=2, data=mem[(32 * _980) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _980) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _980) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _2146 = mem[(32 * _980) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _980) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _980) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _980) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _980) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _980) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _980) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _980) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _980) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _980) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _980) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _980) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_2146 + (32 * _980) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_2146 + (32 * _980) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_2146 + (32 * _980) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _980) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _980) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1614:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1614
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _980) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1614
                else:
                    _948 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]
                    _981 = mem[_948 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_948 + ceil32(arg4.length) + 320])] = mem[_948 + ceil32(arg4.length) + 352 len floor32(mem[_948 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1618 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _981) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _981) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg2
                    mem[(32 * _981) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1618
                    mem[(32 * _981) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _981) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _981) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _981) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _981) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1618, Array(len=2, data=mem[(32 * _981) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _981) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _981) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _2148 = mem[(32 * _981) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _981) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _981) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _981) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _981) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _981) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _981) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _981) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _981) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _981) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _981) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _981) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_2148 + (32 * _981) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_2148 + (32 * _981) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_2148 + (32 * _981) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _981) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _981) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1618:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1618
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _981) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1618
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
                    _918 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]
                    _966 = mem[_918 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_918 + ceil32(arg4.length) + 320])] = mem[_918 + ceil32(arg4.length) + 352 len floor32(mem[_918 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1558 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg3
                    mem[(32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1558
                    mem[(32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1558, Array(len=2, data=mem[(32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _966) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _2118 = mem[(32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _966) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _966) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_2118 + (32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_2118 + (32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_2118 + (32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _966) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _966) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1558:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1558
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _966) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1558
                else:
                    _920 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]
                    _967 = mem[_920 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_920 + ceil32(arg4.length) + 320])] = mem[_920 + ceil32(arg4.length) + 352 len floor32(mem[_920 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1562 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg3
                    mem[(32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1562
                    mem[(32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1562, Array(len=2, data=mem[(32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _967) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _2120 = mem[(32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _967) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _967) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_2120 + (32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_2120 + (32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_2120 + (32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _967) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _967) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1562:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1562
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _967) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1562
            else:
                if not arg2:
                    _922 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]
                    _968 = mem[_922 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_922 + ceil32(arg4.length) + 320])] = mem[_922 + ceil32(arg4.length) + 352 len floor32(mem[_922 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1566 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg3
                    mem[(32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1566
                    mem[(32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1566, Array(len=2, data=mem[(32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _968) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _2122 = mem[(32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _968) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _968) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_2122 + (32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_2122 + (32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_2122 + (32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _968) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _968) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1566:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1566
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _968) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1566
                else:
                    _924 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]
                    _969 = mem[_924 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_924 + ceil32(arg4.length) + 320])] = mem[_924 + ceil32(arg4.length) + 352 len floor32(mem[_924 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1570 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg3
                    mem[(32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1570
                    mem[(32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1570, Array(len=2, data=mem[(32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _969) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _2124 = mem[(32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _969) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _969) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_2124 + (32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_2124 + (32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_2124 + (32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _969) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _969) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1570:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1570
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _969) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1570
        else:
            if not arg2:
                if not arg2:
                    _926 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]
                    _970 = mem[_926 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_926 + ceil32(arg4.length) + 320])] = mem[_926 + ceil32(arg4.length) + 352 len floor32(mem[_926 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1574 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg3
                    mem[(32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1574
                    mem[(32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1574, Array(len=2, data=mem[(32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _2126 = mem[(32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_2126 + (32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_2126 + (32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_2126 + (32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1574:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1574
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1574
                else:
                    _928 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]
                    _971 = mem[_928 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_928 + ceil32(arg4.length) + 320])] = mem[_928 + ceil32(arg4.length) + 352 len floor32(mem[_928 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1578 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg3
                    mem[(32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1578
                    mem[(32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1578, Array(len=2, data=mem[(32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _2128 = mem[(32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_2128 + (32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_2128 + (32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_2128 + (32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1578:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1578
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1578
            else:
                if not arg2:
                    _930 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]
                    _972 = mem[_930 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_930 + ceil32(arg4.length) + 320])] = mem[_930 + ceil32(arg4.length) + 352 len floor32(mem[_930 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1582 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _972) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _972) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg3
                    mem[(32 * _972) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1582
                    mem[(32 * _972) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _972) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _972) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _972) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _972) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1582, Array(len=2, data=mem[(32 * _972) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _972) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _972) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _2130 = mem[(32 * _972) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _972) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _972) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _972) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _972) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _972) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _972) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _972) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _972) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _972) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _972) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _972) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_2130 + (32 * _972) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_2130 + (32 * _972) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_2130 + (32 * _972) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _972) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _972) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1582:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1582
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _972) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1582
                else:
                    _932 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]
                    _973 = mem[_932 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_932 + ceil32(arg4.length) + 320])] = mem[_932 + ceil32(arg4.length) + 352 len floor32(mem[_932 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1586 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _973) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _973) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg3
                    mem[(32 * _973) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1586
                    mem[(32 * _973) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _973) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _973) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _973) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _973) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1586, Array(len=2, data=mem[(32 * _973) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _973) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _973) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _2132 = mem[(32 * _973) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _973) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _973) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _973) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _973) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _973) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _973) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _973) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _973) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _973) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _973) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _973) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_2132 + (32 * _973) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_2132 + (32 * _973) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_2132 + (32 * _973) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _973) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _973) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1586:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1586
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _973) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1586
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
                    _934 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]
                    _974 = mem[_934 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_934 + ceil32(arg4.length) + 320])] = mem[_934 + ceil32(arg4.length) + 352 len floor32(mem[_934 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1590 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _974) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _974) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg2
                    mem[(32 * _974) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1590
                    mem[(32 * _974) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _974) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _974) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _974) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _974) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1590, Array(len=2, data=mem[(32 * _974) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _974) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _974) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _2134 = mem[(32 * _974) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _974) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _974) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _974) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _974) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _974) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _974) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _974) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _974) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _974) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _974) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _974) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_2134 + (32 * _974) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_2134 + (32 * _974) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_2134 + (32 * _974) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _974) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _974) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1590:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1590
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _974) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1590
                else:
                    _936 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]
                    _975 = mem[_936 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_936 + ceil32(arg4.length) + 320])] = mem[_936 + ceil32(arg4.length) + 352 len floor32(mem[_936 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1594 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _975) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _975) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg2
                    mem[(32 * _975) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1594
                    mem[(32 * _975) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _975) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _975) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _975) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _975) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1594, Array(len=2, data=mem[(32 * _975) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _975) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _975) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _2136 = mem[(32 * _975) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _975) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _975) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _975) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _975) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _975) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _975) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _975) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _975) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _975) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _975) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _975) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_2136 + (32 * _975) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_2136 + (32 * _975) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_2136 + (32 * _975) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _975) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _975) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1594:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1594
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _975) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1594
            else:
                if not arg2:
                    _938 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]
                    _976 = mem[_938 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_938 + ceil32(arg4.length) + 320])] = mem[_938 + ceil32(arg4.length) + 352 len floor32(mem[_938 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1598 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _976) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _976) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg2
                    mem[(32 * _976) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1598
                    mem[(32 * _976) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _976) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _976) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _976) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _976) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1598, Array(len=2, data=mem[(32 * _976) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _976) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _976) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _2138 = mem[(32 * _976) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _976) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _976) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _976) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _976) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _976) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _976) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _976) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _976) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _976) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _976) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _976) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_2138 + (32 * _976) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_2138 + (32 * _976) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_2138 + (32 * _976) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _976) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _976) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1598:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1598
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _976) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1598
                else:
                    _940 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]
                    _977 = mem[_940 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_940 + ceil32(arg4.length) + 320])] = mem[_940 + ceil32(arg4.length) + 352 len floor32(mem[_940 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1602 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _977) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _977) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg2
                    mem[(32 * _977) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1602
                    mem[(32 * _977) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _977) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _977) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _977) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _977) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1602, Array(len=2, data=mem[(32 * _977) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _977) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _977) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _2140 = mem[(32 * _977) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _977) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _977) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _977) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _977) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _977) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _977) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _977) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _977) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _977) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _977) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _977) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_2140 + (32 * _977) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_2140 + (32 * _977) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_2140 + (32 * _977) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _977) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _977) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1602:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1602
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _977) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1602
        else:
            if not arg2:
                if not arg2:
                    _942 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]
                    _978 = mem[_942 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_942 + ceil32(arg4.length) + 320])] = mem[_942 + ceil32(arg4.length) + 352 len floor32(mem[_942 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1606 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _978) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _978) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg2
                    mem[(32 * _978) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1606
                    mem[(32 * _978) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _978) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _978) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _978) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _978) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1606, Array(len=2, data=mem[(32 * _978) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _978) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _978) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _2142 = mem[(32 * _978) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _978) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _978) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _978) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _978) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _978) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _978) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _978) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _978) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _978) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _978) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _978) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_2142 + (32 * _978) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_2142 + (32 * _978) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_2142 + (32 * _978) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _978) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _978) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1606:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1606
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _978) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1606
                else:
                    _944 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]
                    _979 = mem[_944 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_944 + ceil32(arg4.length) + 320])] = mem[_944 + ceil32(arg4.length) + 352 len floor32(mem[_944 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1610 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _979) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _979) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg2
                    mem[(32 * _979) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1610
                    mem[(32 * _979) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _979) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _979) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _979) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _979) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1610, Array(len=2, data=mem[(32 * _979) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _979) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _979) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _2144 = mem[(32 * _979) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _979) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _979) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _979) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _979) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _979) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _979) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _979) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _979) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _979) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _979) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _979) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_2144 + (32 * _979) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_2144 + (32 * _979) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_2144 + (32 * _979) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _979) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _979) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1610:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1610
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _979) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1610
            else:
                if not arg2:
                    _946 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]
                    _980 = mem[_946 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_946 + ceil32(arg4.length) + 320])] = mem[_946 + ceil32(arg4.length) + 352 len floor32(mem[_946 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1614 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _980) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _980) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg2
                    mem[(32 * _980) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1614
                    mem[(32 * _980) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _980) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _980) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _980) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _980) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1614, Array(len=2, data=mem[(32 * _980) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _980) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _980) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _2146 = mem[(32 * _980) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _980) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _980) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _980) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _980) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _980) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _980) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _980) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _980) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _980) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _980) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _980) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_2146 + (32 * _980) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_2146 + (32 * _980) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_2146 + (32 * _980) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _980) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _980) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1614:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1614
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _980) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1614
                else:
                    _948 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]
                    _981 = mem[_948 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_948 + ceil32(arg4.length) + 320])] = mem[_948 + ceil32(arg4.length) + 352 len floor32(mem[_948 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1618 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _981) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _981) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg2
                    mem[(32 * _981) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1618
                    mem[(32 * _981) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _981) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _981) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _981) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _981) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1618, Array(len=2, data=mem[(32 * _981) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _981) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _981) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _2148 = mem[(32 * _981) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _981) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _981) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _981) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _981) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _981) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _981) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _981) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _981) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _981) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _981) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _981) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_2148 + (32 * _981) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_2148 + (32 * _981) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_2148 + (32 * _981) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _981) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _981) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1618:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1618
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _981) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1618
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
                    _918 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]
                    _966 = mem[_918 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_918 + ceil32(arg4.length) + 320])] = mem[_918 + ceil32(arg4.length) + 352 len floor32(mem[_918 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1558 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg3
                    mem[(32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1558
                    mem[(32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1558, Array(len=2, data=mem[(32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _966) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _2118 = mem[(32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _966) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _966) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_2118 + (32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_2118 + (32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_2118 + (32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _966) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _966) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1558:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1558
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _966) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1558
                else:
                    _920 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]
                    _967 = mem[_920 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_920 + ceil32(arg4.length) + 320])] = mem[_920 + ceil32(arg4.length) + 352 len floor32(mem[_920 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1562 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg3
                    mem[(32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1562
                    mem[(32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1562, Array(len=2, data=mem[(32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _967) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _2120 = mem[(32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _967) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _967) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_2120 + (32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_2120 + (32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_2120 + (32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _967) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _967) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1562:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1562
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _967) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1562
            else:
                if not arg2:
                    _922 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]
                    _968 = mem[_922 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_922 + ceil32(arg4.length) + 320])] = mem[_922 + ceil32(arg4.length) + 352 len floor32(mem[_922 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1566 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg3
                    mem[(32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1566
                    mem[(32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1566, Array(len=2, data=mem[(32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _968) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _2122 = mem[(32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _968) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _968) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_2122 + (32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_2122 + (32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_2122 + (32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _968) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _968) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1566:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1566
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _968) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1566
                else:
                    _924 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]
                    _969 = mem[_924 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_924 + ceil32(arg4.length) + 320])] = mem[_924 + ceil32(arg4.length) + 352 len floor32(mem[_924 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1570 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg3
                    mem[(32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1570
                    mem[(32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1570, Array(len=2, data=mem[(32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _969) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _2124 = mem[(32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _969) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _969) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_2124 + (32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_2124 + (32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_2124 + (32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _969) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _969) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1570:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1570
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _969) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1570
        else:
            if not arg2:
                if not arg2:
                    _926 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]
                    _970 = mem[_926 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_926 + ceil32(arg4.length) + 320])] = mem[_926 + ceil32(arg4.length) + 352 len floor32(mem[_926 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1574 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg3
                    mem[(32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1574
                    mem[(32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1574, Array(len=2, data=mem[(32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _2126 = mem[(32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_2126 + (32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_2126 + (32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_2126 + (32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1574:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1574
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1574
                else:
                    _928 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]
                    _971 = mem[_928 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_928 + ceil32(arg4.length) + 320])] = mem[_928 + ceil32(arg4.length) + 352 len floor32(mem[_928 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1578 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg3
                    mem[(32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1578
                    mem[(32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1578, Array(len=2, data=mem[(32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _2128 = mem[(32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_2128 + (32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_2128 + (32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_2128 + (32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1578:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1578
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1578
            else:
                if not arg2:
                    _930 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]
                    _972 = mem[_930 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_930 + ceil32(arg4.length) + 320])] = mem[_930 + ceil32(arg4.length) + 352 len floor32(mem[_930 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1582 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _972) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _972) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg3
                    mem[(32 * _972) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1582
                    mem[(32 * _972) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _972) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _972) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _972) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _972) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1582, Array(len=2, data=mem[(32 * _972) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _972) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _972) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _2130 = mem[(32 * _972) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _972) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _972) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _972) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _972) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _972) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _972) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _972) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _972) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _972) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _972) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _972) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_2130 + (32 * _972) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_2130 + (32 * _972) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_2130 + (32 * _972) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _972) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _972) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1582:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1582
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _972) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1582
                else:
                    _932 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]
                    _973 = mem[_932 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_932 + ceil32(arg4.length) + 320])] = mem[_932 + ceil32(arg4.length) + 352 len floor32(mem[_932 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1586 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _973) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _973) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg3
                    mem[(32 * _973) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1586
                    mem[(32 * _973) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _973) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _973) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _973) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _973) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1586, Array(len=2, data=mem[(32 * _973) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _973) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _973) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _2132 = mem[(32 * _973) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _973) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _973) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _973) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _973) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _973) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _973) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _973) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _973) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _973) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _973) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _973) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_2132 + (32 * _973) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_2132 + (32 * _973) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_2132 + (32 * _973) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _973) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _973) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1586:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1586
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _973) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1586
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
                    _934 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]
                    _974 = mem[_934 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_934 + ceil32(arg4.length) + 320])] = mem[_934 + ceil32(arg4.length) + 352 len floor32(mem[_934 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1590 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _974) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _974) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg2
                    mem[(32 * _974) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1590
                    mem[(32 * _974) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _974) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _974) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _974) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _974) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1590, Array(len=2, data=mem[(32 * _974) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _974) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _974) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _2134 = mem[(32 * _974) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _974) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _974) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _974) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _974) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _974) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _974) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _974) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _974) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _974) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _974) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _974) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_2134 + (32 * _974) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_2134 + (32 * _974) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_2134 + (32 * _974) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _974) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _974) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1590:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1590
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _974) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1590
                else:
                    _936 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]
                    _975 = mem[_936 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_936 + ceil32(arg4.length) + 320])] = mem[_936 + ceil32(arg4.length) + 352 len floor32(mem[_936 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1594 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _975) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _975) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg2
                    mem[(32 * _975) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1594
                    mem[(32 * _975) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _975) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _975) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _975) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _975) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1594, Array(len=2, data=mem[(32 * _975) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _975) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _975) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _2136 = mem[(32 * _975) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _975) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _975) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _975) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _975) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _975) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _975) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _975) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _975) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _975) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _975) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _975) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_2136 + (32 * _975) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_2136 + (32 * _975) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_2136 + (32 * _975) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _975) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _975) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1594:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1594
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _975) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1594
            else:
                if not arg2:
                    _938 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]
                    _976 = mem[_938 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_938 + ceil32(arg4.length) + 320])] = mem[_938 + ceil32(arg4.length) + 352 len floor32(mem[_938 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1598 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _976) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _976) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg2
                    mem[(32 * _976) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1598
                    mem[(32 * _976) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _976) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _976) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _976) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _976) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1598, Array(len=2, data=mem[(32 * _976) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _976) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _976) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _2138 = mem[(32 * _976) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _976) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _976) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _976) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _976) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _976) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _976) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _976) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _976) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _976) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _976) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _976) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_2138 + (32 * _976) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_2138 + (32 * _976) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_2138 + (32 * _976) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _976) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _976) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1598:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1598
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _976) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1598
                else:
                    _940 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]
                    _977 = mem[_940 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_940 + ceil32(arg4.length) + 320])] = mem[_940 + ceil32(arg4.length) + 352 len floor32(mem[_940 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1602 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _977) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _977) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg2
                    mem[(32 * _977) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1602
                    mem[(32 * _977) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _977) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _977) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _977) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _977) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1602, Array(len=2, data=mem[(32 * _977) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _977) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _977) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _2140 = mem[(32 * _977) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _977) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _977) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _977) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _977) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _977) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _977) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _977) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _977) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _977) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _977) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _977) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_2140 + (32 * _977) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_2140 + (32 * _977) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_2140 + (32 * _977) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _977) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _977) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1602:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1602
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _977) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1602
        else:
            if not arg2:
                if not arg2:
                    _942 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]
                    _978 = mem[_942 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_942 + ceil32(arg4.length) + 320])] = mem[_942 + ceil32(arg4.length) + 352 len floor32(mem[_942 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1606 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _978) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _978) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg2
                    mem[(32 * _978) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1606
                    mem[(32 * _978) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _978) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _978) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _978) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _978) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1606, Array(len=2, data=mem[(32 * _978) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _978) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _978) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _2142 = mem[(32 * _978) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _978) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _978) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _978) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _978) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _978) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _978) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _978) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _978) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _978) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _978) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _978) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_2142 + (32 * _978) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_2142 + (32 * _978) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_2142 + (32 * _978) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _978) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _978) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1606:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1606
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _978) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1606
                else:
                    _944 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]
                    _979 = mem[_944 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_944 + ceil32(arg4.length) + 320])] = mem[_944 + ceil32(arg4.length) + 352 len floor32(mem[_944 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1610 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _979) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _979) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg2
                    mem[(32 * _979) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1610
                    mem[(32 * _979) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _979) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _979) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _979) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _979) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1610, Array(len=2, data=mem[(32 * _979) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _979) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _979) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _2144 = mem[(32 * _979) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _979) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _979) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _979) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _979) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _979) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _979) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _979) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _979) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _979) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _979) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _979) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_2144 + (32 * _979) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_2144 + (32 * _979) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_2144 + (32 * _979) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _979) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _979) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1610:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1610
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _979) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1610
            else:
                if not arg2:
                    _946 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]
                    _980 = mem[_946 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_946 + ceil32(arg4.length) + 320])] = mem[_946 + ceil32(arg4.length) + 352 len floor32(mem[_946 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1614 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _980) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _980) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg2
                    mem[(32 * _980) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1614
                    mem[(32 * _980) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _980) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _980) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _980) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _980) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1614, Array(len=2, data=mem[(32 * _980) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _980) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _980) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _2146 = mem[(32 * _980) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _980) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _980) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _980) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _980) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _980) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _980) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _980) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _980) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _980) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _980) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _980) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_2146 + (32 * _980) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_2146 + (32 * _980) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_2146 + (32 * _980) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _980) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _980) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1614:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1614
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _980) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1614
                else:
                    _948 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]
                    _981 = mem[_948 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_948 + ceil32(arg4.length) + 320])] = mem[_948 + ceil32(arg4.length) + 352 len floor32(mem[_948 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1618 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _981) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _981) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg2
                    mem[(32 * _981) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1618
                    mem[(32 * _981) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _981) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _981) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _981) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _981) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1618, Array(len=2, data=mem[(32 * _981) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _981) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _981) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _2148 = mem[(32 * _981) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _981) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _981) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _981) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _981) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _981) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _981) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _981) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _981) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _981) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _981) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _981) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_2148 + (32 * _981) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_2148 + (32 * _981) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_2148 + (32 * _981) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _981) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _981) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1618:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1618
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _981) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1618
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
                    _918 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]
                    _966 = mem[_918 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_918 + ceil32(arg4.length) + 320])] = mem[_918 + ceil32(arg4.length) + 352 len floor32(mem[_918 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1558 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg3
                    mem[(32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1558
                    mem[(32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1558, Array(len=2, data=mem[(32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _966) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _2118 = mem[(32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _966) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _966) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_2118 + (32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_2118 + (32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_2118 + (32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _966) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _966) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1558:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1558
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _966) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1558
                else:
                    _920 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]
                    _967 = mem[_920 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_920 + ceil32(arg4.length) + 320])] = mem[_920 + ceil32(arg4.length) + 352 len floor32(mem[_920 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1562 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg3
                    mem[(32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1562
                    mem[(32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1562, Array(len=2, data=mem[(32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _967) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _2120 = mem[(32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _967) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _967) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_2120 + (32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_2120 + (32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_2120 + (32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _967) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _967) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1562:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1562
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _967) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1562
            else:
                if not arg2:
                    _922 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]
                    _968 = mem[_922 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_922 + ceil32(arg4.length) + 320])] = mem[_922 + ceil32(arg4.length) + 352 len floor32(mem[_922 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1566 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg3
                    mem[(32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1566
                    mem[(32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1566, Array(len=2, data=mem[(32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _968) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _2122 = mem[(32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _968) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _968) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_2122 + (32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_2122 + (32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_2122 + (32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _968) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _968) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1566:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1566
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _968) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1566
                else:
                    _924 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]
                    _969 = mem[_924 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_924 + ceil32(arg4.length) + 320])] = mem[_924 + ceil32(arg4.length) + 352 len floor32(mem[_924 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1570 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg3
                    mem[(32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1570
                    mem[(32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1570, Array(len=2, data=mem[(32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _969) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _2124 = mem[(32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _969) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _969) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_2124 + (32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_2124 + (32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_2124 + (32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _969) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _969) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1570:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1570
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _969) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1570
        else:
            if not arg2:
                if not arg2:
                    _926 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]
                    _970 = mem[_926 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_926 + ceil32(arg4.length) + 320])] = mem[_926 + ceil32(arg4.length) + 352 len floor32(mem[_926 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1574 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg3
                    mem[(32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1574
                    mem[(32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1574, Array(len=2, data=mem[(32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _2126 = mem[(32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_2126 + (32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_2126 + (32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_2126 + (32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1574:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1574
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1574
                else:
                    _928 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]
                    _971 = mem[_928 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_928 + ceil32(arg4.length) + 320])] = mem[_928 + ceil32(arg4.length) + 352 len floor32(mem[_928 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1578 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg3
                    mem[(32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1578
                    mem[(32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1578, Array(len=2, data=mem[(32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _2128 = mem[(32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_2128 + (32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_2128 + (32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_2128 + (32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1578:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1578
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1578
            else:
                if not arg2:
                    _930 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]
                    _972 = mem[_930 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_930 + ceil32(arg4.length) + 320])] = mem[_930 + ceil32(arg4.length) + 352 len floor32(mem[_930 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1582 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _972) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _972) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg3
                    mem[(32 * _972) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1582
                    mem[(32 * _972) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _972) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _972) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _972) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _972) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1582, Array(len=2, data=mem[(32 * _972) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _972) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _972) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _2130 = mem[(32 * _972) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _972) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _972) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _972) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _972) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _972) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _972) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _972) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _972) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _972) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _972) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _972) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_2130 + (32 * _972) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_2130 + (32 * _972) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_2130 + (32 * _972) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _972) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _972) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1582:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1582
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _972) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1582
                else:
                    _932 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]
                    _973 = mem[_932 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_932 + ceil32(arg4.length) + 320])] = mem[_932 + ceil32(arg4.length) + 352 len floor32(mem[_932 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1586 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _973) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _973) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg3
                    mem[(32 * _973) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1586
                    mem[(32 * _973) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _973) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _973) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _973) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _973) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1586, Array(len=2, data=mem[(32 * _973) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _973) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _973) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _2132 = mem[(32 * _973) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _973) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _973) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _973) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _973) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _973) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _973) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _973) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _973) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _973) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _973) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _973) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_2132 + (32 * _973) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_2132 + (32 * _973) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_2132 + (32 * _973) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _973) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _973) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1586:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1586
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _973) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1586
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
                    _934 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]
                    _974 = mem[_934 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_934 + ceil32(arg4.length) + 320])] = mem[_934 + ceil32(arg4.length) + 352 len floor32(mem[_934 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1590 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _974) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _974) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg2
                    mem[(32 * _974) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1590
                    mem[(32 * _974) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _974) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _974) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _974) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _974) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1590, Array(len=2, data=mem[(32 * _974) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _974) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _974) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _2134 = mem[(32 * _974) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _974) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _974) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _974) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _974) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _974) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _974) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _974) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _974) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _974) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _974) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _974) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_2134 + (32 * _974) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_2134 + (32 * _974) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_2134 + (32 * _974) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _974) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _974) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1590:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1590
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _974) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1590
                else:
                    _936 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]
                    _975 = mem[_936 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_936 + ceil32(arg4.length) + 320])] = mem[_936 + ceil32(arg4.length) + 352 len floor32(mem[_936 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1594 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _975) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _975) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg2
                    mem[(32 * _975) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1594
                    mem[(32 * _975) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _975) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _975) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _975) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _975) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1594, Array(len=2, data=mem[(32 * _975) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _975) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _975) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _2136 = mem[(32 * _975) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _975) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _975) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _975) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _975) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _975) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _975) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _975) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _975) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _975) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _975) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _975) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_2136 + (32 * _975) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_2136 + (32 * _975) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_2136 + (32 * _975) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _975) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _975) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1594:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1594
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _975) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1594
            else:
                if not arg2:
                    _938 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]
                    _976 = mem[_938 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_938 + ceil32(arg4.length) + 320])] = mem[_938 + ceil32(arg4.length) + 352 len floor32(mem[_938 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1598 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _976) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _976) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg2
                    mem[(32 * _976) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1598
                    mem[(32 * _976) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _976) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _976) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _976) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _976) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1598, Array(len=2, data=mem[(32 * _976) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _976) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _976) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _2138 = mem[(32 * _976) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _976) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _976) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _976) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _976) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _976) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _976) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _976) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _976) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _976) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _976) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _976) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_2138 + (32 * _976) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_2138 + (32 * _976) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_2138 + (32 * _976) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _976) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _976) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1598:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1598
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _976) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1598
                else:
                    _940 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]
                    _977 = mem[_940 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_940 + ceil32(arg4.length) + 320])] = mem[_940 + ceil32(arg4.length) + 352 len floor32(mem[_940 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1602 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _977) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _977) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg2
                    mem[(32 * _977) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1602
                    mem[(32 * _977) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _977) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _977) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _977) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _977) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1602, Array(len=2, data=mem[(32 * _977) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _977) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _977) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _2140 = mem[(32 * _977) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _977) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _977) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _977) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _977) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _977) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _977) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _977) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _977) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _977) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _977) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _977) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_2140 + (32 * _977) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_2140 + (32 * _977) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_2140 + (32 * _977) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _977) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _977) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1602:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1602
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _977) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1602
        else:
            if not arg2:
                if not arg2:
                    _942 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]
                    _978 = mem[_942 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_942 + ceil32(arg4.length) + 320])] = mem[_942 + ceil32(arg4.length) + 352 len floor32(mem[_942 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1606 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _978) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _978) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg2
                    mem[(32 * _978) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1606
                    mem[(32 * _978) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _978) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _978) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _978) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _978) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1606, Array(len=2, data=mem[(32 * _978) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _978) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _978) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _2142 = mem[(32 * _978) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _978) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _978) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _978) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _978) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _978) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _978) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _978) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _978) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _978) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _978) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _978) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_2142 + (32 * _978) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_2142 + (32 * _978) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_2142 + (32 * _978) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _978) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _978) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1606:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1606
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _978) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1606
                else:
                    _944 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]
                    _979 = mem[_944 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_944 + ceil32(arg4.length) + 320])] = mem[_944 + ceil32(arg4.length) + 352 len floor32(mem[_944 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1610 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _979) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _979) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg2
                    mem[(32 * _979) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1610
                    mem[(32 * _979) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _979) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _979) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _979) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _979) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1610, Array(len=2, data=mem[(32 * _979) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _979) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _979) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _2144 = mem[(32 * _979) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _979) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _979) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _979) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _979) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _979) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _979) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _979) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _979) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _979) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _979) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _979) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_2144 + (32 * _979) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_2144 + (32 * _979) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_2144 + (32 * _979) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _979) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _979) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1610:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1610
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _979) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1610
            else:
                if not arg2:
                    _946 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]
                    _980 = mem[_946 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_946 + ceil32(arg4.length) + 320])] = mem[_946 + ceil32(arg4.length) + 352 len floor32(mem[_946 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1614 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _980) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _980) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg2
                    mem[(32 * _980) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1614
                    mem[(32 * _980) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _980) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _980) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _980) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _980) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1614, Array(len=2, data=mem[(32 * _980) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _980) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _980) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _2146 = mem[(32 * _980) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _980) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _980) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _980) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _980) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _980) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _980) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _980) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _980) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _980) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _980) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _980) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_2146 + (32 * _980) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_2146 + (32 * _980) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_2146 + (32 * _980) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _980) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _980) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1614:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1614
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _980) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1614
                else:
                    _948 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]
                    _981 = mem[_948 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_948 + ceil32(arg4.length) + 320])] = mem[_948 + ceil32(arg4.length) + 352 len floor32(mem[_948 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1618 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _981) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _981) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg2
                    mem[(32 * _981) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1618
                    mem[(32 * _981) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _981) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _981) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _981) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _981) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1618, Array(len=2, data=mem[(32 * _981) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _981) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _981) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _2148 = mem[(32 * _981) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _981) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _981) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _981) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _981) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _981) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _981) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _981) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _981) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _981) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _981) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _981) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_2148 + (32 * _981) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_2148 + (32 * _981) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_2148 + (32 * _981) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _981) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _981) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1618:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1618
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _981) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1618
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function pancakeCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
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
                    _918 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]
                    _966 = mem[_918 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_918 + ceil32(arg4.length) + 320])] = mem[_918 + ceil32(arg4.length) + 352 len floor32(mem[_918 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1558 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg3
                    mem[(32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1558
                    mem[(32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1558, Array(len=2, data=mem[(32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _966) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _2118 = mem[(32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _966) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _966) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_2118 + (32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_2118 + (32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_2118 + (32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _966) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _966) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1558:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1558
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _966) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1558
                else:
                    _920 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]
                    _967 = mem[_920 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_920 + ceil32(arg4.length) + 320])] = mem[_920 + ceil32(arg4.length) + 352 len floor32(mem[_920 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1562 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg3
                    mem[(32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1562
                    mem[(32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1562, Array(len=2, data=mem[(32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _967) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _2120 = mem[(32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _967) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _967) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_2120 + (32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_2120 + (32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_2120 + (32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _967) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _967) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1562:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1562
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _967) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1562
            else:
                if not arg2:
                    _922 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]
                    _968 = mem[_922 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_922 + ceil32(arg4.length) + 320])] = mem[_922 + ceil32(arg4.length) + 352 len floor32(mem[_922 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1566 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg3
                    mem[(32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1566
                    mem[(32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1566, Array(len=2, data=mem[(32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _968) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _2122 = mem[(32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _968) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _968) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_2122 + (32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_2122 + (32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_2122 + (32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _968) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _968) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1566:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1566
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _968) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1566
                else:
                    _924 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]
                    _969 = mem[_924 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_924 + ceil32(arg4.length) + 320])] = mem[_924 + ceil32(arg4.length) + 352 len floor32(mem[_924 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1570 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg3
                    mem[(32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1570
                    mem[(32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1570, Array(len=2, data=mem[(32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _969) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _2124 = mem[(32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _969) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _969) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_2124 + (32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_2124 + (32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_2124 + (32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _969) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _969) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1570:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1570
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _969) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1570
        else:
            if not arg2:
                if not arg2:
                    _926 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]
                    _970 = mem[_926 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_926 + ceil32(arg4.length) + 320])] = mem[_926 + ceil32(arg4.length) + 352 len floor32(mem[_926 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1574 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg3
                    mem[(32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1574
                    mem[(32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1574, Array(len=2, data=mem[(32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _2126 = mem[(32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_2126 + (32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_2126 + (32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_2126 + (32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1574:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1574
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1574
                else:
                    _928 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]
                    _971 = mem[_928 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_928 + ceil32(arg4.length) + 320])] = mem[_928 + ceil32(arg4.length) + 352 len floor32(mem[_928 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1578 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg3
                    mem[(32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1578
                    mem[(32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1578, Array(len=2, data=mem[(32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _2128 = mem[(32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_2128 + (32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_2128 + (32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_2128 + (32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1578:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1578
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1578
            else:
                if not arg2:
                    _930 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]
                    _972 = mem[_930 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_930 + ceil32(arg4.length) + 320])] = mem[_930 + ceil32(arg4.length) + 352 len floor32(mem[_930 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1582 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _972) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _972) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg3
                    mem[(32 * _972) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1582
                    mem[(32 * _972) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _972) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _972) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _972) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _972) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1582, Array(len=2, data=mem[(32 * _972) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _972) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _972) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _2130 = mem[(32 * _972) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _972) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _972) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _972) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _972) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _972) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _972) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _972) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _972) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _972) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _972) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _972) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_2130 + (32 * _972) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_2130 + (32 * _972) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_2130 + (32 * _972) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _972) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _972) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1582:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1582
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _972) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1582
                else:
                    _932 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]
                    _973 = mem[_932 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_932 + ceil32(arg4.length) + 320])] = mem[_932 + ceil32(arg4.length) + 352 len floor32(mem[_932 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1586 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _973) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _973) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg3
                    mem[(32 * _973) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1586
                    mem[(32 * _973) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _973) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _973) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _973) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _973) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1586, Array(len=2, data=mem[(32 * _973) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _973) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _973) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _2132 = mem[(32 * _973) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _973) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _973) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _973) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _973) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _973) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _973) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _973) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _973) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _973) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _973) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _973) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_2132 + (32 * _973) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_2132 + (32 * _973) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_2132 + (32 * _973) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _973) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _973) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1586:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1586
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _973) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1586
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
                    _934 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]
                    _974 = mem[_934 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_934 + ceil32(arg4.length) + 320])] = mem[_934 + ceil32(arg4.length) + 352 len floor32(mem[_934 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1590 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _974) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _974) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg2
                    mem[(32 * _974) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1590
                    mem[(32 * _974) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _974) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _974) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _974) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _974) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1590, Array(len=2, data=mem[(32 * _974) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _974) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _974) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _2134 = mem[(32 * _974) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _974) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _974) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _974) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _974) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _974) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _974) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _974) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _974) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _974) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _974) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _974) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_2134 + (32 * _974) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_2134 + (32 * _974) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_2134 + (32 * _974) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _974) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _974) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1590:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1590
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _974) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1590
                else:
                    _936 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]
                    _975 = mem[_936 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_936 + ceil32(arg4.length) + 320])] = mem[_936 + ceil32(arg4.length) + 352 len floor32(mem[_936 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1594 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _975) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _975) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg2
                    mem[(32 * _975) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1594
                    mem[(32 * _975) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _975) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _975) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _975) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _975) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1594, Array(len=2, data=mem[(32 * _975) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _975) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _975) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _2136 = mem[(32 * _975) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _975) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _975) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _975) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _975) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _975) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _975) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _975) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _975) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _975) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _975) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _975) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_2136 + (32 * _975) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_2136 + (32 * _975) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_2136 + (32 * _975) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _975) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _975) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1594:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1594
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _975) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1594
            else:
                if not arg2:
                    _938 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]
                    _976 = mem[_938 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_938 + ceil32(arg4.length) + 320])] = mem[_938 + ceil32(arg4.length) + 352 len floor32(mem[_938 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1598 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _976) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _976) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg2
                    mem[(32 * _976) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1598
                    mem[(32 * _976) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _976) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _976) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _976) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _976) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1598, Array(len=2, data=mem[(32 * _976) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _976) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _976) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _2138 = mem[(32 * _976) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _976) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _976) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _976) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _976) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _976) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _976) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _976) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _976) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _976) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _976) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _976) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_2138 + (32 * _976) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_2138 + (32 * _976) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_2138 + (32 * _976) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _976) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _976) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1598:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1598
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _976) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1598
                else:
                    _940 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]
                    _977 = mem[_940 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_940 + ceil32(arg4.length) + 320])] = mem[_940 + ceil32(arg4.length) + 352 len floor32(mem[_940 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1602 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _977) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _977) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg2
                    mem[(32 * _977) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1602
                    mem[(32 * _977) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _977) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _977) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _977) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _977) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1602, Array(len=2, data=mem[(32 * _977) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _977) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _977) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _2140 = mem[(32 * _977) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _977) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _977) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _977) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _977) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _977) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _977) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _977) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _977) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _977) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _977) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _977) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_2140 + (32 * _977) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_2140 + (32 * _977) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_2140 + (32 * _977) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _977) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _977) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1602:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1602
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _977) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1602
        else:
            if not arg2:
                if not arg2:
                    _942 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]
                    _978 = mem[_942 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_942 + ceil32(arg4.length) + 320])] = mem[_942 + ceil32(arg4.length) + 352 len floor32(mem[_942 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1606 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _978) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _978) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg2
                    mem[(32 * _978) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1606
                    mem[(32 * _978) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _978) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _978) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _978) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _978) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1606, Array(len=2, data=mem[(32 * _978) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _978) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _978) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _2142 = mem[(32 * _978) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _978) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _978) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _978) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _978) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _978) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _978) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _978) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _978) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _978) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _978) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _978) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_2142 + (32 * _978) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_2142 + (32 * _978) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_2142 + (32 * _978) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _978) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _978) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1606:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1606
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _978) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1606
                else:
                    _944 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]
                    _979 = mem[_944 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_944 + ceil32(arg4.length) + 320])] = mem[_944 + ceil32(arg4.length) + 352 len floor32(mem[_944 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1610 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _979) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _979) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg2
                    mem[(32 * _979) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1610
                    mem[(32 * _979) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _979) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _979) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _979) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _979) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1610, Array(len=2, data=mem[(32 * _979) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _979) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _979) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _2144 = mem[(32 * _979) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _979) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _979) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _979) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _979) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _979) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _979) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _979) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _979) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _979) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _979) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _979) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_2144 + (32 * _979) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_2144 + (32 * _979) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_2144 + (32 * _979) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _979) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _979) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1610:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1610
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _979) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1610
            else:
                if not arg2:
                    _946 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]
                    _980 = mem[_946 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_946 + ceil32(arg4.length) + 320])] = mem[_946 + ceil32(arg4.length) + 352 len floor32(mem[_946 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1614 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _980) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _980) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg2
                    mem[(32 * _980) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1614
                    mem[(32 * _980) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _980) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _980) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _980) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _980) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1614, Array(len=2, data=mem[(32 * _980) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _980) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _980) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _2146 = mem[(32 * _980) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _980) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _980) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _980) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _980) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _980) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _980) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _980) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _980) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _980) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _980) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _980) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_2146 + (32 * _980) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_2146 + (32 * _980) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_2146 + (32 * _980) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _980) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _980) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1614:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1614
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _980) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1614
                else:
                    _948 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]
                    _981 = mem[_948 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_948 + ceil32(arg4.length) + 320])] = mem[_948 + ceil32(arg4.length) + 352 len floor32(mem[_948 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1618 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _981) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _981) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg2
                    mem[(32 * _981) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1618
                    mem[(32 * _981) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _981) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _981) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _981) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _981) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1618, Array(len=2, data=mem[(32 * _981) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _981) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _981) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _2148 = mem[(32 * _981) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _981) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _981) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _981) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _981) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _981) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _981) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _981) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _981) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _981) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _981) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _981) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_2148 + (32 * _981) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_2148 + (32 * _981) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_2148 + (32 * _981) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _981) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _981) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1618:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1618
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _981) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1618
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
                    _918 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]
                    _966 = mem[_918 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_918 + ceil32(arg4.length) + 320])] = mem[_918 + ceil32(arg4.length) + 352 len floor32(mem[_918 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1558 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg3
                    mem[(32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1558
                    mem[(32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1558, Array(len=2, data=mem[(32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _966) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _2118 = mem[(32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _966) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _966) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_2118 + (32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_2118 + (32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_2118 + (32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _966) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _966) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1558:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1558
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _966) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1558
                else:
                    _920 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]
                    _967 = mem[_920 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_920 + ceil32(arg4.length) + 320])] = mem[_920 + ceil32(arg4.length) + 352 len floor32(mem[_920 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1562 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg3
                    mem[(32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1562
                    mem[(32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1562, Array(len=2, data=mem[(32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _967) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _2120 = mem[(32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _967) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _967) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_2120 + (32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_2120 + (32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_2120 + (32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _967) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _967) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1562:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1562
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _967) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1562
            else:
                if not arg2:
                    _922 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]
                    _968 = mem[_922 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_922 + ceil32(arg4.length) + 320])] = mem[_922 + ceil32(arg4.length) + 352 len floor32(mem[_922 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1566 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg3
                    mem[(32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1566
                    mem[(32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1566, Array(len=2, data=mem[(32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _968) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _2122 = mem[(32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _968) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _968) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_2122 + (32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_2122 + (32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_2122 + (32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _968) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _968) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1566:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1566
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _968) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1566
                else:
                    _924 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]
                    _969 = mem[_924 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_924 + ceil32(arg4.length) + 320])] = mem[_924 + ceil32(arg4.length) + 352 len floor32(mem[_924 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1570 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg3
                    mem[(32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1570
                    mem[(32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1570, Array(len=2, data=mem[(32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _969) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _2124 = mem[(32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _969) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _969) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_2124 + (32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_2124 + (32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_2124 + (32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _969) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _969) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1570:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1570
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _969) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1570
        else:
            if not arg2:
                if not arg2:
                    _926 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]
                    _970 = mem[_926 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_926 + ceil32(arg4.length) + 320])] = mem[_926 + ceil32(arg4.length) + 352 len floor32(mem[_926 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1574 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg3
                    mem[(32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1574
                    mem[(32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1574, Array(len=2, data=mem[(32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _2126 = mem[(32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_2126 + (32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_2126 + (32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_2126 + (32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1574:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1574
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1574
                else:
                    _928 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]
                    _971 = mem[_928 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_928 + ceil32(arg4.length) + 320])] = mem[_928 + ceil32(arg4.length) + 352 len floor32(mem[_928 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1578 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg3
                    mem[(32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1578
                    mem[(32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1578, Array(len=2, data=mem[(32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _2128 = mem[(32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_2128 + (32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_2128 + (32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_2128 + (32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1578:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1578
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1578
            else:
                if not arg2:
                    _930 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]
                    _972 = mem[_930 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_930 + ceil32(arg4.length) + 320])] = mem[_930 + ceil32(arg4.length) + 352 len floor32(mem[_930 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1582 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _972) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _972) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg3
                    mem[(32 * _972) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1582
                    mem[(32 * _972) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _972) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _972) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _972) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _972) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1582, Array(len=2, data=mem[(32 * _972) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _972) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _972) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _2130 = mem[(32 * _972) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _972) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _972) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _972) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _972) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _972) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _972) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _972) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _972) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _972) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _972) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _972) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_2130 + (32 * _972) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_2130 + (32 * _972) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_2130 + (32 * _972) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _972) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _972) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1582:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1582
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _972) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1582
                else:
                    _932 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]
                    _973 = mem[_932 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_932 + ceil32(arg4.length) + 320])] = mem[_932 + ceil32(arg4.length) + 352 len floor32(mem[_932 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1586 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _973) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _973) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg3
                    mem[(32 * _973) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1586
                    mem[(32 * _973) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _973) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _973) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _973) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _973) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1586, Array(len=2, data=mem[(32 * _973) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _973) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _973) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _2132 = mem[(32 * _973) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _973) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _973) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _973) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _973) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _973) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _973) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _973) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _973) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _973) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _973) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _973) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_2132 + (32 * _973) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_2132 + (32 * _973) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_2132 + (32 * _973) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _973) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _973) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1586:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1586
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _973) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1586
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
                    _934 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]
                    _974 = mem[_934 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_934 + ceil32(arg4.length) + 320])] = mem[_934 + ceil32(arg4.length) + 352 len floor32(mem[_934 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1590 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _974) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _974) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg2
                    mem[(32 * _974) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1590
                    mem[(32 * _974) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _974) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _974) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _974) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _974) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1590, Array(len=2, data=mem[(32 * _974) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _974) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _974) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _2134 = mem[(32 * _974) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _974) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _974) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _974) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _974) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _974) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _974) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _974) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _974) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _974) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _974) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _974) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_2134 + (32 * _974) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_2134 + (32 * _974) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_2134 + (32 * _974) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _974) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _974) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1590:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1590
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _974) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1590
                else:
                    _936 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]
                    _975 = mem[_936 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_936 + ceil32(arg4.length) + 320])] = mem[_936 + ceil32(arg4.length) + 352 len floor32(mem[_936 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1594 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _975) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _975) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg2
                    mem[(32 * _975) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1594
                    mem[(32 * _975) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _975) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _975) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _975) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _975) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1594, Array(len=2, data=mem[(32 * _975) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _975) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _975) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _2136 = mem[(32 * _975) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _975) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _975) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _975) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _975) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _975) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _975) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _975) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _975) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _975) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _975) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _975) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_2136 + (32 * _975) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_2136 + (32 * _975) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_2136 + (32 * _975) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _975) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _975) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1594:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1594
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _975) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1594
            else:
                if not arg2:
                    _938 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]
                    _976 = mem[_938 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_938 + ceil32(arg4.length) + 320])] = mem[_938 + ceil32(arg4.length) + 352 len floor32(mem[_938 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1598 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _976) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _976) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg2
                    mem[(32 * _976) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1598
                    mem[(32 * _976) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _976) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _976) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _976) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _976) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1598, Array(len=2, data=mem[(32 * _976) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _976) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _976) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _2138 = mem[(32 * _976) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _976) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _976) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _976) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _976) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _976) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _976) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _976) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _976) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _976) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _976) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _976) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_2138 + (32 * _976) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_2138 + (32 * _976) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_2138 + (32 * _976) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _976) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _976) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1598:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1598
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _976) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1598
                else:
                    _940 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]
                    _977 = mem[_940 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_940 + ceil32(arg4.length) + 320])] = mem[_940 + ceil32(arg4.length) + 352 len floor32(mem[_940 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1602 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _977) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _977) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg2
                    mem[(32 * _977) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1602
                    mem[(32 * _977) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _977) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _977) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _977) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _977) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1602, Array(len=2, data=mem[(32 * _977) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _977) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _977) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _2140 = mem[(32 * _977) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _977) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _977) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _977) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _977) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _977) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _977) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _977) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _977) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _977) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _977) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _977) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_2140 + (32 * _977) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_2140 + (32 * _977) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_2140 + (32 * _977) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _977) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _977) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1602:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1602
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _977) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1602
        else:
            if not arg2:
                if not arg2:
                    _942 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]
                    _978 = mem[_942 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_942 + ceil32(arg4.length) + 320])] = mem[_942 + ceil32(arg4.length) + 352 len floor32(mem[_942 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1606 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _978) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _978) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg2
                    mem[(32 * _978) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1606
                    mem[(32 * _978) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _978) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _978) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _978) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _978) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1606, Array(len=2, data=mem[(32 * _978) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _978) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _978) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _2142 = mem[(32 * _978) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _978) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _978) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _978) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _978) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _978) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _978) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _978) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _978) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _978) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _978) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _978) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_2142 + (32 * _978) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_2142 + (32 * _978) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_2142 + (32 * _978) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _978) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _978) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1606:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1606
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _978) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1606
                else:
                    _944 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]
                    _979 = mem[_944 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_944 + ceil32(arg4.length) + 320])] = mem[_944 + ceil32(arg4.length) + 352 len floor32(mem[_944 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1610 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _979) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _979) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg2
                    mem[(32 * _979) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1610
                    mem[(32 * _979) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _979) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _979) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _979) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _979) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1610, Array(len=2, data=mem[(32 * _979) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _979) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _979) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _2144 = mem[(32 * _979) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _979) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _979) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _979) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _979) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _979) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _979) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _979) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _979) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _979) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _979) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _979) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_2144 + (32 * _979) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_2144 + (32 * _979) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_2144 + (32 * _979) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _979) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _979) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1610:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1610
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _979) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1610
            else:
                if not arg2:
                    _946 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]
                    _980 = mem[_946 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_946 + ceil32(arg4.length) + 320])] = mem[_946 + ceil32(arg4.length) + 352 len floor32(mem[_946 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1614 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _980) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _980) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg2
                    mem[(32 * _980) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1614
                    mem[(32 * _980) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _980) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _980) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _980) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _980) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1614, Array(len=2, data=mem[(32 * _980) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _980) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _980) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _2146 = mem[(32 * _980) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _980) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _980) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _980) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _980) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _980) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _980) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _980) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _980) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _980) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _980) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _980) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_2146 + (32 * _980) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_2146 + (32 * _980) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_2146 + (32 * _980) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _980) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _980) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1614:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1614
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _980) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1614
                else:
                    _948 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]
                    _981 = mem[_948 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_948 + ceil32(arg4.length) + 320])] = mem[_948 + ceil32(arg4.length) + 352 len floor32(mem[_948 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1618 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _981) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _981) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg2
                    mem[(32 * _981) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = _1618
                    mem[(32 * _981) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _981) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = block.timestamp + 60
                    mem[(32 * _981) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 160
                    mem[(32 * _981) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 2
                    mem[(32 * _981) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(mem[172 len 20])
                    call mem[172 len 20].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1618, Array(len=2, data=mem[(32 * _981) + ceil32(arg4.length) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _981) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _981) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _2148 = mem[(32 * _981) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _981) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _981) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _981) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _981) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _981) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _981) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _981) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _981) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _981) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _981) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _981) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_2148 + (32 * _981) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_2148 + (32 * _981) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_2148 + (32 * _981) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _981) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    if mem[(32 * _981) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1618:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1618
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _981) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1618
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}



}
