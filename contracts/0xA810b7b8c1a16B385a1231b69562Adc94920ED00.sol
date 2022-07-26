contract main {




// =====================  Runtime code  =====================


#
#  - swapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
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

function elkCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
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
    mem[96] = 2
    mem[192] = 2
    mem[160] = address(ext_call.return_data[0])
    mem[224] = address(ext_call.return_data[0])
    mem[128] = address(ext_call.return_data[0])
    mem[256] = address(ext_call.return_data[0])
    require arg4.length >= 64
    if not address(cd[(arg4 + 36)]):
        revert with 0, 'e12'
    if not address(cd[(arg4 + 68)]):
        revert with 0, 'e12'
    require ext_code.size(address(ext_call.return_data[0]))
    if not arg2:
        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(cd[(arg4 + 68)]), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[288] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
        mem[292] = arg3
        mem[324] = 64
        mem[356] = 2
        mem[388 len 0] = None
        require ext_code.size(address(cd[(arg4 + 36)]))
        staticcall address(cd[(arg4 + 36)]).getAmountsIn(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg3, Array(len=2, data=mem[388 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[288 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 288
        require return_data.size >= 32
        if not arg2:
            if not arg2:
                if not arg2:
                    _765 = mem[288 len 4], Mask(224, 32, arg3) >> 32
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                    _813 = mem[_765 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_765 + 288])] = mem[_765 + 320 len floor32(mem[_765 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1277 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _813) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _813) + ceil32(return_data.size) + 324] = arg3
                    mem[(32 * _813) + ceil32(return_data.size) + 356] = _1277
                    mem[(32 * _813) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _813) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _813) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _813) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _813) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1277, Array(len=2, data=mem[(32 * _813) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _813) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _813) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1709 = mem[(32 * _813) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _813) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _813) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _813) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _813) + ceil32(return_data.size) + 320] <= 4294967296 and mem[(32 * _813) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _813) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _813) + ceil32(return_data.size) + 320]) + 32 <= return_data.size
                    mem[(32 * _813) + (2 * ceil32(return_data.size)) + 320] = mem[mem[(32 * _813) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _813) + ceil32(return_data.size) + 320]
                    mem[(32 * _813) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_1709 + (32 * _813) + ceil32(return_data.size) + 320])] = mem[_1709 + (32 * _813) + ceil32(return_data.size) + 352 len floor32(mem[_1709 + (32 * _813) + ceil32(return_data.size) + 320])]
                    require 1 < mem[(32 * _813) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _813) + (2 * ceil32(return_data.size)) + 384] <= _1277:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _813) + (2 * ceil32(return_data.size)) + 384] - _1277
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1277
                else:
                    _767 = mem[288 len 4], Mask(224, 32, arg3) >> 32
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                    _814 = mem[_767 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_767 + 288])] = mem[_767 + 320 len floor32(mem[_767 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1281 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _814) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _814) + ceil32(return_data.size) + 324] = arg3
                    mem[(32 * _814) + ceil32(return_data.size) + 356] = _1281
                    mem[(32 * _814) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _814) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _814) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _814) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _814) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1281, Array(len=2, data=mem[(32 * _814) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _814) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _814) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1711 = mem[(32 * _814) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _814) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _814) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _814) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _814) + ceil32(return_data.size) + 320] <= 4294967296 and mem[(32 * _814) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _814) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _814) + ceil32(return_data.size) + 320]) + 32 <= return_data.size
                    mem[(32 * _814) + (2 * ceil32(return_data.size)) + 320] = mem[mem[(32 * _814) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _814) + ceil32(return_data.size) + 320]
                    mem[(32 * _814) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_1711 + (32 * _814) + ceil32(return_data.size) + 320])] = mem[_1711 + (32 * _814) + ceil32(return_data.size) + 352 len floor32(mem[_1711 + (32 * _814) + ceil32(return_data.size) + 320])]
                    require 1 < mem[(32 * _814) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _814) + (2 * ceil32(return_data.size)) + 384] <= _1281:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _814) + (2 * ceil32(return_data.size)) + 384] - _1281
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1281
            else:
                if not arg2:
                    _769 = mem[288 len 4], Mask(224, 32, arg3) >> 32
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                    _815 = mem[_769 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_769 + 288])] = mem[_769 + 320 len floor32(mem[_769 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1285 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _815) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _815) + ceil32(return_data.size) + 324] = arg3
                    mem[(32 * _815) + ceil32(return_data.size) + 356] = _1285
                    mem[(32 * _815) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _815) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _815) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _815) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _815) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1285, Array(len=2, data=mem[(32 * _815) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _815) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _815) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1713 = mem[(32 * _815) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _815) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _815) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _815) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _815) + ceil32(return_data.size) + 320] <= 4294967296 and mem[(32 * _815) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _815) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _815) + ceil32(return_data.size) + 320]) + 32 <= return_data.size
                    mem[(32 * _815) + (2 * ceil32(return_data.size)) + 320] = mem[mem[(32 * _815) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _815) + ceil32(return_data.size) + 320]
                    mem[(32 * _815) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_1713 + (32 * _815) + ceil32(return_data.size) + 320])] = mem[_1713 + (32 * _815) + ceil32(return_data.size) + 352 len floor32(mem[_1713 + (32 * _815) + ceil32(return_data.size) + 320])]
                    require 1 < mem[(32 * _815) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _815) + (2 * ceil32(return_data.size)) + 384] <= _1285:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _815) + (2 * ceil32(return_data.size)) + 384] - _1285
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1285
                else:
                    _771 = mem[288 len 4], Mask(224, 32, arg3) >> 32
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                    _816 = mem[_771 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_771 + 288])] = mem[_771 + 320 len floor32(mem[_771 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1289 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _816) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _816) + ceil32(return_data.size) + 324] = arg3
                    mem[(32 * _816) + ceil32(return_data.size) + 356] = _1289
                    mem[(32 * _816) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _816) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _816) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _816) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _816) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1289, Array(len=2, data=mem[(32 * _816) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _816) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _816) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1715 = mem[(32 * _816) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _816) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _816) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _816) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _816) + ceil32(return_data.size) + 320] <= 4294967296 and mem[(32 * _816) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _816) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _816) + ceil32(return_data.size) + 320]) + 32 <= return_data.size
                    mem[(32 * _816) + (2 * ceil32(return_data.size)) + 320] = mem[mem[(32 * _816) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _816) + ceil32(return_data.size) + 320]
                    mem[(32 * _816) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_1715 + (32 * _816) + ceil32(return_data.size) + 320])] = mem[_1715 + (32 * _816) + ceil32(return_data.size) + 352 len floor32(mem[_1715 + (32 * _816) + ceil32(return_data.size) + 320])]
                    require 1 < mem[(32 * _816) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _816) + (2 * ceil32(return_data.size)) + 384] <= _1289:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _816) + (2 * ceil32(return_data.size)) + 384] - _1289
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1289
        else:
            if not arg2:
                if not arg2:
                    _773 = mem[288 len 4], Mask(224, 32, arg3) >> 32
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                    _817 = mem[_773 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_773 + 288])] = mem[_773 + 320 len floor32(mem[_773 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1293 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _817) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _817) + ceil32(return_data.size) + 324] = arg3
                    mem[(32 * _817) + ceil32(return_data.size) + 356] = _1293
                    mem[(32 * _817) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _817) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _817) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _817) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _817) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1293, Array(len=2, data=mem[(32 * _817) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _817) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _817) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1717 = mem[(32 * _817) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _817) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _817) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _817) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _817) + ceil32(return_data.size) + 320] <= 4294967296 and mem[(32 * _817) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _817) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _817) + ceil32(return_data.size) + 320]) + 32 <= return_data.size
                    mem[(32 * _817) + (2 * ceil32(return_data.size)) + 320] = mem[mem[(32 * _817) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _817) + ceil32(return_data.size) + 320]
                    mem[(32 * _817) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_1717 + (32 * _817) + ceil32(return_data.size) + 320])] = mem[_1717 + (32 * _817) + ceil32(return_data.size) + 352 len floor32(mem[_1717 + (32 * _817) + ceil32(return_data.size) + 320])]
                    require 1 < mem[(32 * _817) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _817) + (2 * ceil32(return_data.size)) + 384] <= _1293:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _817) + (2 * ceil32(return_data.size)) + 384] - _1293
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1293
                else:
                    _775 = mem[288 len 4], Mask(224, 32, arg3) >> 32
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                    _818 = mem[_775 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_775 + 288])] = mem[_775 + 320 len floor32(mem[_775 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1297 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _818) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _818) + ceil32(return_data.size) + 324] = arg3
                    mem[(32 * _818) + ceil32(return_data.size) + 356] = _1297
                    mem[(32 * _818) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _818) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _818) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _818) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _818) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1297, Array(len=2, data=mem[(32 * _818) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _818) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _818) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1719 = mem[(32 * _818) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _818) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _818) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _818) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _818) + ceil32(return_data.size) + 320] <= 4294967296 and mem[(32 * _818) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _818) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _818) + ceil32(return_data.size) + 320]) + 32 <= return_data.size
                    mem[(32 * _818) + (2 * ceil32(return_data.size)) + 320] = mem[mem[(32 * _818) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _818) + ceil32(return_data.size) + 320]
                    mem[(32 * _818) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_1719 + (32 * _818) + ceil32(return_data.size) + 320])] = mem[_1719 + (32 * _818) + ceil32(return_data.size) + 352 len floor32(mem[_1719 + (32 * _818) + ceil32(return_data.size) + 320])]
                    require 1 < mem[(32 * _818) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _818) + (2 * ceil32(return_data.size)) + 384] <= _1297:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _818) + (2 * ceil32(return_data.size)) + 384] - _1297
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1297
            else:
                if not arg2:
                    _777 = mem[288 len 4], Mask(224, 32, arg3) >> 32
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                    _819 = mem[_777 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_777 + 288])] = mem[_777 + 320 len floor32(mem[_777 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1301 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _819) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _819) + ceil32(return_data.size) + 324] = arg3
                    mem[(32 * _819) + ceil32(return_data.size) + 356] = _1301
                    mem[(32 * _819) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _819) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _819) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _819) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _819) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1301, Array(len=2, data=mem[(32 * _819) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _819) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _819) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1721 = mem[(32 * _819) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _819) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _819) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _819) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _819) + ceil32(return_data.size) + 320] <= 4294967296 and mem[(32 * _819) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _819) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _819) + ceil32(return_data.size) + 320]) + 32 <= return_data.size
                    mem[(32 * _819) + (2 * ceil32(return_data.size)) + 320] = mem[mem[(32 * _819) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _819) + ceil32(return_data.size) + 320]
                    mem[(32 * _819) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_1721 + (32 * _819) + ceil32(return_data.size) + 320])] = mem[_1721 + (32 * _819) + ceil32(return_data.size) + 352 len floor32(mem[_1721 + (32 * _819) + ceil32(return_data.size) + 320])]
                    require 1 < mem[(32 * _819) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _819) + (2 * ceil32(return_data.size)) + 384] <= _1301:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _819) + (2 * ceil32(return_data.size)) + 384] - _1301
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1301
                else:
                    _779 = mem[288 len 4], Mask(224, 32, arg3) >> 32
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                    _820 = mem[_779 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_779 + 288])] = mem[_779 + 320 len floor32(mem[_779 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1305 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _820) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _820) + ceil32(return_data.size) + 324] = arg3
                    mem[(32 * _820) + ceil32(return_data.size) + 356] = _1305
                    mem[(32 * _820) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _820) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _820) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _820) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _820) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1305, Array(len=2, data=mem[(32 * _820) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _820) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _820) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1723 = mem[(32 * _820) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _820) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _820) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _820) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _820) + ceil32(return_data.size) + 320] <= 4294967296 and mem[(32 * _820) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _820) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _820) + ceil32(return_data.size) + 320]) + 32 <= return_data.size
                    mem[(32 * _820) + (2 * ceil32(return_data.size)) + 320] = mem[mem[(32 * _820) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _820) + ceil32(return_data.size) + 320]
                    mem[(32 * _820) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_1723 + (32 * _820) + ceil32(return_data.size) + 320])] = mem[_1723 + (32 * _820) + ceil32(return_data.size) + 352 len floor32(mem[_1723 + (32 * _820) + ceil32(return_data.size) + 320])]
                    require 1 < mem[(32 * _820) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _820) + (2 * ceil32(return_data.size)) + 384] <= _1305:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _820) + (2 * ceil32(return_data.size)) + 384] - _1305
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1305
    else:
        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(cd[(arg4 + 68)]), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[288] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
        mem[292] = arg2
        mem[324] = 64
        mem[356] = 2
        mem[388 len 0] = None
        require ext_code.size(address(cd[(arg4 + 36)]))
        staticcall address(cd[(arg4 + 36)]).getAmountsIn(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg2, Array(len=2, data=mem[388 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[288 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 288
        require return_data.size >= 32
        if not arg2:
            if not arg2:
                if not arg2:
                    _781 = mem[288 len 4], Mask(224, 32, arg2) >> 32
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                    _821 = mem[_781 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_781 + 288])] = mem[_781 + 320 len floor32(mem[_781 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1309 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _821) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _821) + ceil32(return_data.size) + 324] = arg2
                    mem[(32 * _821) + ceil32(return_data.size) + 356] = _1309
                    mem[(32 * _821) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _821) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _821) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _821) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _821) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1309, Array(len=2, data=mem[(32 * _821) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _821) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _821) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1725 = mem[(32 * _821) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _821) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _821) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _821) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _821) + ceil32(return_data.size) + 320] <= 4294967296 and mem[(32 * _821) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _821) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _821) + ceil32(return_data.size) + 320]) + 32 <= return_data.size
                    mem[(32 * _821) + (2 * ceil32(return_data.size)) + 320] = mem[mem[(32 * _821) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _821) + ceil32(return_data.size) + 320]
                    mem[(32 * _821) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_1725 + (32 * _821) + ceil32(return_data.size) + 320])] = mem[_1725 + (32 * _821) + ceil32(return_data.size) + 352 len floor32(mem[_1725 + (32 * _821) + ceil32(return_data.size) + 320])]
                    require 1 < mem[(32 * _821) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _821) + (2 * ceil32(return_data.size)) + 384] <= _1309:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _821) + (2 * ceil32(return_data.size)) + 384] - _1309
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1309
                else:
                    _783 = mem[288 len 4], Mask(224, 32, arg2) >> 32
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                    _822 = mem[_783 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_783 + 288])] = mem[_783 + 320 len floor32(mem[_783 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1313 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _822) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _822) + ceil32(return_data.size) + 324] = arg2
                    mem[(32 * _822) + ceil32(return_data.size) + 356] = _1313
                    mem[(32 * _822) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _822) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _822) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _822) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _822) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1313, Array(len=2, data=mem[(32 * _822) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _822) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _822) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1727 = mem[(32 * _822) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _822) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _822) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _822) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _822) + ceil32(return_data.size) + 320] <= 4294967296 and mem[(32 * _822) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _822) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _822) + ceil32(return_data.size) + 320]) + 32 <= return_data.size
                    mem[(32 * _822) + (2 * ceil32(return_data.size)) + 320] = mem[mem[(32 * _822) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _822) + ceil32(return_data.size) + 320]
                    mem[(32 * _822) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_1727 + (32 * _822) + ceil32(return_data.size) + 320])] = mem[_1727 + (32 * _822) + ceil32(return_data.size) + 352 len floor32(mem[_1727 + (32 * _822) + ceil32(return_data.size) + 320])]
                    require 1 < mem[(32 * _822) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _822) + (2 * ceil32(return_data.size)) + 384] <= _1313:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _822) + (2 * ceil32(return_data.size)) + 384] - _1313
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1313
            else:
                if not arg2:
                    _785 = mem[288 len 4], Mask(224, 32, arg2) >> 32
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                    _823 = mem[_785 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_785 + 288])] = mem[_785 + 320 len floor32(mem[_785 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1317 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _823) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _823) + ceil32(return_data.size) + 324] = arg2
                    mem[(32 * _823) + ceil32(return_data.size) + 356] = _1317
                    mem[(32 * _823) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _823) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _823) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _823) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _823) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1317, Array(len=2, data=mem[(32 * _823) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _823) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _823) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1729 = mem[(32 * _823) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _823) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _823) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _823) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _823) + ceil32(return_data.size) + 320] <= 4294967296 and mem[(32 * _823) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _823) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _823) + ceil32(return_data.size) + 320]) + 32 <= return_data.size
                    mem[(32 * _823) + (2 * ceil32(return_data.size)) + 320] = mem[mem[(32 * _823) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _823) + ceil32(return_data.size) + 320]
                    mem[(32 * _823) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_1729 + (32 * _823) + ceil32(return_data.size) + 320])] = mem[_1729 + (32 * _823) + ceil32(return_data.size) + 352 len floor32(mem[_1729 + (32 * _823) + ceil32(return_data.size) + 320])]
                    require 1 < mem[(32 * _823) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _823) + (2 * ceil32(return_data.size)) + 384] <= _1317:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _823) + (2 * ceil32(return_data.size)) + 384] - _1317
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1317
                else:
                    _787 = mem[288 len 4], Mask(224, 32, arg2) >> 32
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                    _824 = mem[_787 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_787 + 288])] = mem[_787 + 320 len floor32(mem[_787 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1321 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _824) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _824) + ceil32(return_data.size) + 324] = arg2
                    mem[(32 * _824) + ceil32(return_data.size) + 356] = _1321
                    mem[(32 * _824) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _824) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _824) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _824) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _824) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1321, Array(len=2, data=mem[(32 * _824) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _824) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _824) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1731 = mem[(32 * _824) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _824) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _824) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _824) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _824) + ceil32(return_data.size) + 320] <= 4294967296 and mem[(32 * _824) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _824) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _824) + ceil32(return_data.size) + 320]) + 32 <= return_data.size
                    mem[(32 * _824) + (2 * ceil32(return_data.size)) + 320] = mem[mem[(32 * _824) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _824) + ceil32(return_data.size) + 320]
                    mem[(32 * _824) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_1731 + (32 * _824) + ceil32(return_data.size) + 320])] = mem[_1731 + (32 * _824) + ceil32(return_data.size) + 352 len floor32(mem[_1731 + (32 * _824) + ceil32(return_data.size) + 320])]
                    require 1 < mem[(32 * _824) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _824) + (2 * ceil32(return_data.size)) + 384] <= _1321:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _824) + (2 * ceil32(return_data.size)) + 384] - _1321
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1321
        else:
            if not arg2:
                if not arg2:
                    _789 = mem[288 len 4], Mask(224, 32, arg2) >> 32
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                    _825 = mem[_789 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_789 + 288])] = mem[_789 + 320 len floor32(mem[_789 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1325 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _825) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _825) + ceil32(return_data.size) + 324] = arg2
                    mem[(32 * _825) + ceil32(return_data.size) + 356] = _1325
                    mem[(32 * _825) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _825) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _825) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _825) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _825) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1325, Array(len=2, data=mem[(32 * _825) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _825) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _825) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1733 = mem[(32 * _825) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _825) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _825) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _825) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _825) + ceil32(return_data.size) + 320] <= 4294967296 and mem[(32 * _825) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _825) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _825) + ceil32(return_data.size) + 320]) + 32 <= return_data.size
                    mem[(32 * _825) + (2 * ceil32(return_data.size)) + 320] = mem[mem[(32 * _825) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _825) + ceil32(return_data.size) + 320]
                    mem[(32 * _825) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_1733 + (32 * _825) + ceil32(return_data.size) + 320])] = mem[_1733 + (32 * _825) + ceil32(return_data.size) + 352 len floor32(mem[_1733 + (32 * _825) + ceil32(return_data.size) + 320])]
                    require 1 < mem[(32 * _825) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _825) + (2 * ceil32(return_data.size)) + 384] <= _1325:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _825) + (2 * ceil32(return_data.size)) + 384] - _1325
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1325
                else:
                    _791 = mem[288 len 4], Mask(224, 32, arg2) >> 32
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                    _826 = mem[_791 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_791 + 288])] = mem[_791 + 320 len floor32(mem[_791 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1329 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _826) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _826) + ceil32(return_data.size) + 324] = arg2
                    mem[(32 * _826) + ceil32(return_data.size) + 356] = _1329
                    mem[(32 * _826) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _826) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _826) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _826) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _826) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1329, Array(len=2, data=mem[(32 * _826) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _826) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _826) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1735 = mem[(32 * _826) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _826) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _826) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _826) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _826) + ceil32(return_data.size) + 320] <= 4294967296 and mem[(32 * _826) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _826) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _826) + ceil32(return_data.size) + 320]) + 32 <= return_data.size
                    mem[(32 * _826) + (2 * ceil32(return_data.size)) + 320] = mem[mem[(32 * _826) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _826) + ceil32(return_data.size) + 320]
                    mem[(32 * _826) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_1735 + (32 * _826) + ceil32(return_data.size) + 320])] = mem[_1735 + (32 * _826) + ceil32(return_data.size) + 352 len floor32(mem[_1735 + (32 * _826) + ceil32(return_data.size) + 320])]
                    require 1 < mem[(32 * _826) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _826) + (2 * ceil32(return_data.size)) + 384] <= _1329:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _826) + (2 * ceil32(return_data.size)) + 384] - _1329
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1329
            else:
                if not arg2:
                    _793 = mem[288 len 4], Mask(224, 32, arg2) >> 32
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                    _827 = mem[_793 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_793 + 288])] = mem[_793 + 320 len floor32(mem[_793 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1333 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _827) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _827) + ceil32(return_data.size) + 324] = arg2
                    mem[(32 * _827) + ceil32(return_data.size) + 356] = _1333
                    mem[(32 * _827) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _827) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _827) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _827) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _827) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1333, Array(len=2, data=mem[(32 * _827) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _827) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _827) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1737 = mem[(32 * _827) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _827) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _827) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _827) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _827) + ceil32(return_data.size) + 320] <= 4294967296 and mem[(32 * _827) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _827) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _827) + ceil32(return_data.size) + 320]) + 32 <= return_data.size
                    mem[(32 * _827) + (2 * ceil32(return_data.size)) + 320] = mem[mem[(32 * _827) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _827) + ceil32(return_data.size) + 320]
                    mem[(32 * _827) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_1737 + (32 * _827) + ceil32(return_data.size) + 320])] = mem[_1737 + (32 * _827) + ceil32(return_data.size) + 352 len floor32(mem[_1737 + (32 * _827) + ceil32(return_data.size) + 320])]
                    require 1 < mem[(32 * _827) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _827) + (2 * ceil32(return_data.size)) + 384] <= _1333:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _827) + (2 * ceil32(return_data.size)) + 384] - _1333
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1333
                else:
                    _795 = mem[288 len 4], Mask(224, 32, arg2) >> 32
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                    _828 = mem[_795 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_795 + 288])] = mem[_795 + 320 len floor32(mem[_795 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1337 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _828) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _828) + ceil32(return_data.size) + 324] = arg2
                    mem[(32 * _828) + ceil32(return_data.size) + 356] = _1337
                    mem[(32 * _828) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _828) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _828) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _828) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _828) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1337, Array(len=2, data=mem[(32 * _828) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _828) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _828) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1739 = mem[(32 * _828) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _828) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _828) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _828) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _828) + ceil32(return_data.size) + 320] <= 4294967296 and mem[(32 * _828) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _828) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _828) + ceil32(return_data.size) + 320]) + 32 <= return_data.size
                    mem[(32 * _828) + (2 * ceil32(return_data.size)) + 320] = mem[mem[(32 * _828) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _828) + ceil32(return_data.size) + 320]
                    mem[(32 * _828) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_1739 + (32 * _828) + ceil32(return_data.size) + 320])] = mem[_1739 + (32 * _828) + ceil32(return_data.size) + 352 len floor32(mem[_1739 + (32 * _828) + ceil32(return_data.size) + 320])]
                    require 1 < mem[(32 * _828) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _828) + (2 * ceil32(return_data.size)) + 384] <= _1337:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _828) + (2 * ceil32(return_data.size)) + 384] - _1337
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1337
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function cafeCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
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
    mem[96] = 2
    mem[192] = 2
    mem[160] = address(ext_call.return_data[0])
    mem[224] = address(ext_call.return_data[0])
    mem[128] = address(ext_call.return_data[0])
    mem[256] = address(ext_call.return_data[0])
    require arg4.length >= 64
    if not address(cd[(arg4 + 36)]):
        revert with 0, 'e12'
    if not address(cd[(arg4 + 68)]):
        revert with 0, 'e12'
    require ext_code.size(address(ext_call.return_data[0]))
    if not arg2:
        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(cd[(arg4 + 68)]), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[288] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
        mem[292] = arg3
        mem[324] = 64
        mem[356] = 2
        mem[388 len 0] = None
        require ext_code.size(address(cd[(arg4 + 36)]))
        staticcall address(cd[(arg4 + 36)]).getAmountsIn(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg3, Array(len=2, data=mem[388 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[288 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 288
        require return_data.size >= 32
        if not arg2:
            if not arg2:
                if not arg2:
                    _765 = mem[288 len 4], Mask(224, 32, arg3) >> 32
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                    _813 = mem[_765 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_765 + 288])] = mem[_765 + 320 len floor32(mem[_765 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1277 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _813) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _813) + ceil32(return_data.size) + 324] = arg3
                    mem[(32 * _813) + ceil32(return_data.size) + 356] = _1277
                    mem[(32 * _813) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _813) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _813) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _813) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _813) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1277, Array(len=2, data=mem[(32 * _813) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _813) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _813) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1709 = mem[(32 * _813) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _813) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _813) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _813) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _813) + ceil32(return_data.size) + 320] <= 4294967296 and mem[(32 * _813) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _813) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _813) + ceil32(return_data.size) + 320]) + 32 <= return_data.size
                    mem[(32 * _813) + (2 * ceil32(return_data.size)) + 320] = mem[mem[(32 * _813) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _813) + ceil32(return_data.size) + 320]
                    mem[(32 * _813) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_1709 + (32 * _813) + ceil32(return_data.size) + 320])] = mem[_1709 + (32 * _813) + ceil32(return_data.size) + 352 len floor32(mem[_1709 + (32 * _813) + ceil32(return_data.size) + 320])]
                    require 1 < mem[(32 * _813) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _813) + (2 * ceil32(return_data.size)) + 384] <= _1277:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _813) + (2 * ceil32(return_data.size)) + 384] - _1277
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1277
                else:
                    _767 = mem[288 len 4], Mask(224, 32, arg3) >> 32
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                    _814 = mem[_767 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_767 + 288])] = mem[_767 + 320 len floor32(mem[_767 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1281 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _814) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _814) + ceil32(return_data.size) + 324] = arg3
                    mem[(32 * _814) + ceil32(return_data.size) + 356] = _1281
                    mem[(32 * _814) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _814) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _814) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _814) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _814) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1281, Array(len=2, data=mem[(32 * _814) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _814) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _814) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1711 = mem[(32 * _814) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _814) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _814) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _814) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _814) + ceil32(return_data.size) + 320] <= 4294967296 and mem[(32 * _814) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _814) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _814) + ceil32(return_data.size) + 320]) + 32 <= return_data.size
                    mem[(32 * _814) + (2 * ceil32(return_data.size)) + 320] = mem[mem[(32 * _814) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _814) + ceil32(return_data.size) + 320]
                    mem[(32 * _814) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_1711 + (32 * _814) + ceil32(return_data.size) + 320])] = mem[_1711 + (32 * _814) + ceil32(return_data.size) + 352 len floor32(mem[_1711 + (32 * _814) + ceil32(return_data.size) + 320])]
                    require 1 < mem[(32 * _814) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _814) + (2 * ceil32(return_data.size)) + 384] <= _1281:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _814) + (2 * ceil32(return_data.size)) + 384] - _1281
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1281
            else:
                if not arg2:
                    _769 = mem[288 len 4], Mask(224, 32, arg3) >> 32
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                    _815 = mem[_769 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_769 + 288])] = mem[_769 + 320 len floor32(mem[_769 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1285 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _815) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _815) + ceil32(return_data.size) + 324] = arg3
                    mem[(32 * _815) + ceil32(return_data.size) + 356] = _1285
                    mem[(32 * _815) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _815) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _815) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _815) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _815) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1285, Array(len=2, data=mem[(32 * _815) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _815) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _815) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1713 = mem[(32 * _815) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _815) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _815) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _815) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _815) + ceil32(return_data.size) + 320] <= 4294967296 and mem[(32 * _815) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _815) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _815) + ceil32(return_data.size) + 320]) + 32 <= return_data.size
                    mem[(32 * _815) + (2 * ceil32(return_data.size)) + 320] = mem[mem[(32 * _815) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _815) + ceil32(return_data.size) + 320]
                    mem[(32 * _815) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_1713 + (32 * _815) + ceil32(return_data.size) + 320])] = mem[_1713 + (32 * _815) + ceil32(return_data.size) + 352 len floor32(mem[_1713 + (32 * _815) + ceil32(return_data.size) + 320])]
                    require 1 < mem[(32 * _815) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _815) + (2 * ceil32(return_data.size)) + 384] <= _1285:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _815) + (2 * ceil32(return_data.size)) + 384] - _1285
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1285
                else:
                    _771 = mem[288 len 4], Mask(224, 32, arg3) >> 32
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                    _816 = mem[_771 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_771 + 288])] = mem[_771 + 320 len floor32(mem[_771 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1289 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _816) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _816) + ceil32(return_data.size) + 324] = arg3
                    mem[(32 * _816) + ceil32(return_data.size) + 356] = _1289
                    mem[(32 * _816) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _816) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _816) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _816) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _816) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1289, Array(len=2, data=mem[(32 * _816) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _816) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _816) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1715 = mem[(32 * _816) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _816) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _816) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _816) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _816) + ceil32(return_data.size) + 320] <= 4294967296 and mem[(32 * _816) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _816) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _816) + ceil32(return_data.size) + 320]) + 32 <= return_data.size
                    mem[(32 * _816) + (2 * ceil32(return_data.size)) + 320] = mem[mem[(32 * _816) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _816) + ceil32(return_data.size) + 320]
                    mem[(32 * _816) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_1715 + (32 * _816) + ceil32(return_data.size) + 320])] = mem[_1715 + (32 * _816) + ceil32(return_data.size) + 352 len floor32(mem[_1715 + (32 * _816) + ceil32(return_data.size) + 320])]
                    require 1 < mem[(32 * _816) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _816) + (2 * ceil32(return_data.size)) + 384] <= _1289:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _816) + (2 * ceil32(return_data.size)) + 384] - _1289
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1289
        else:
            if not arg2:
                if not arg2:
                    _773 = mem[288 len 4], Mask(224, 32, arg3) >> 32
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                    _817 = mem[_773 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_773 + 288])] = mem[_773 + 320 len floor32(mem[_773 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1293 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _817) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _817) + ceil32(return_data.size) + 324] = arg3
                    mem[(32 * _817) + ceil32(return_data.size) + 356] = _1293
                    mem[(32 * _817) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _817) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _817) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _817) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _817) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1293, Array(len=2, data=mem[(32 * _817) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _817) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _817) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1717 = mem[(32 * _817) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _817) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _817) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _817) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _817) + ceil32(return_data.size) + 320] <= 4294967296 and mem[(32 * _817) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _817) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _817) + ceil32(return_data.size) + 320]) + 32 <= return_data.size
                    mem[(32 * _817) + (2 * ceil32(return_data.size)) + 320] = mem[mem[(32 * _817) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _817) + ceil32(return_data.size) + 320]
                    mem[(32 * _817) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_1717 + (32 * _817) + ceil32(return_data.size) + 320])] = mem[_1717 + (32 * _817) + ceil32(return_data.size) + 352 len floor32(mem[_1717 + (32 * _817) + ceil32(return_data.size) + 320])]
                    require 1 < mem[(32 * _817) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _817) + (2 * ceil32(return_data.size)) + 384] <= _1293:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _817) + (2 * ceil32(return_data.size)) + 384] - _1293
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1293
                else:
                    _775 = mem[288 len 4], Mask(224, 32, arg3) >> 32
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                    _818 = mem[_775 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_775 + 288])] = mem[_775 + 320 len floor32(mem[_775 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1297 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _818) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _818) + ceil32(return_data.size) + 324] = arg3
                    mem[(32 * _818) + ceil32(return_data.size) + 356] = _1297
                    mem[(32 * _818) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _818) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _818) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _818) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _818) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1297, Array(len=2, data=mem[(32 * _818) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _818) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _818) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1719 = mem[(32 * _818) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _818) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _818) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _818) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _818) + ceil32(return_data.size) + 320] <= 4294967296 and mem[(32 * _818) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _818) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _818) + ceil32(return_data.size) + 320]) + 32 <= return_data.size
                    mem[(32 * _818) + (2 * ceil32(return_data.size)) + 320] = mem[mem[(32 * _818) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _818) + ceil32(return_data.size) + 320]
                    mem[(32 * _818) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_1719 + (32 * _818) + ceil32(return_data.size) + 320])] = mem[_1719 + (32 * _818) + ceil32(return_data.size) + 352 len floor32(mem[_1719 + (32 * _818) + ceil32(return_data.size) + 320])]
                    require 1 < mem[(32 * _818) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _818) + (2 * ceil32(return_data.size)) + 384] <= _1297:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _818) + (2 * ceil32(return_data.size)) + 384] - _1297
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1297
            else:
                if not arg2:
                    _777 = mem[288 len 4], Mask(224, 32, arg3) >> 32
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                    _819 = mem[_777 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_777 + 288])] = mem[_777 + 320 len floor32(mem[_777 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1301 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _819) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _819) + ceil32(return_data.size) + 324] = arg3
                    mem[(32 * _819) + ceil32(return_data.size) + 356] = _1301
                    mem[(32 * _819) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _819) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _819) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _819) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _819) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1301, Array(len=2, data=mem[(32 * _819) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _819) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _819) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1721 = mem[(32 * _819) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _819) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _819) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _819) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _819) + ceil32(return_data.size) + 320] <= 4294967296 and mem[(32 * _819) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _819) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _819) + ceil32(return_data.size) + 320]) + 32 <= return_data.size
                    mem[(32 * _819) + (2 * ceil32(return_data.size)) + 320] = mem[mem[(32 * _819) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _819) + ceil32(return_data.size) + 320]
                    mem[(32 * _819) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_1721 + (32 * _819) + ceil32(return_data.size) + 320])] = mem[_1721 + (32 * _819) + ceil32(return_data.size) + 352 len floor32(mem[_1721 + (32 * _819) + ceil32(return_data.size) + 320])]
                    require 1 < mem[(32 * _819) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _819) + (2 * ceil32(return_data.size)) + 384] <= _1301:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _819) + (2 * ceil32(return_data.size)) + 384] - _1301
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1301
                else:
                    _779 = mem[288 len 4], Mask(224, 32, arg3) >> 32
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                    _820 = mem[_779 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_779 + 288])] = mem[_779 + 320 len floor32(mem[_779 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1305 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _820) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _820) + ceil32(return_data.size) + 324] = arg3
                    mem[(32 * _820) + ceil32(return_data.size) + 356] = _1305
                    mem[(32 * _820) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _820) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _820) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _820) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _820) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1305, Array(len=2, data=mem[(32 * _820) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _820) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _820) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1723 = mem[(32 * _820) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _820) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _820) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _820) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _820) + ceil32(return_data.size) + 320] <= 4294967296 and mem[(32 * _820) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _820) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _820) + ceil32(return_data.size) + 320]) + 32 <= return_data.size
                    mem[(32 * _820) + (2 * ceil32(return_data.size)) + 320] = mem[mem[(32 * _820) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _820) + ceil32(return_data.size) + 320]
                    mem[(32 * _820) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_1723 + (32 * _820) + ceil32(return_data.size) + 320])] = mem[_1723 + (32 * _820) + ceil32(return_data.size) + 352 len floor32(mem[_1723 + (32 * _820) + ceil32(return_data.size) + 320])]
                    require 1 < mem[(32 * _820) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _820) + (2 * ceil32(return_data.size)) + 384] <= _1305:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _820) + (2 * ceil32(return_data.size)) + 384] - _1305
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1305
    else:
        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(cd[(arg4 + 68)]), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[288] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
        mem[292] = arg2
        mem[324] = 64
        mem[356] = 2
        mem[388 len 0] = None
        require ext_code.size(address(cd[(arg4 + 36)]))
        staticcall address(cd[(arg4 + 36)]).getAmountsIn(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg2, Array(len=2, data=mem[388 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[288 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 288
        require return_data.size >= 32
        if not arg2:
            if not arg2:
                if not arg2:
                    _781 = mem[288 len 4], Mask(224, 32, arg2) >> 32
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                    _821 = mem[_781 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_781 + 288])] = mem[_781 + 320 len floor32(mem[_781 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1309 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _821) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _821) + ceil32(return_data.size) + 324] = arg2
                    mem[(32 * _821) + ceil32(return_data.size) + 356] = _1309
                    mem[(32 * _821) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _821) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _821) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _821) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _821) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1309, Array(len=2, data=mem[(32 * _821) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _821) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _821) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1725 = mem[(32 * _821) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _821) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _821) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _821) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _821) + ceil32(return_data.size) + 320] <= 4294967296 and mem[(32 * _821) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _821) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _821) + ceil32(return_data.size) + 320]) + 32 <= return_data.size
                    mem[(32 * _821) + (2 * ceil32(return_data.size)) + 320] = mem[mem[(32 * _821) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _821) + ceil32(return_data.size) + 320]
                    mem[(32 * _821) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_1725 + (32 * _821) + ceil32(return_data.size) + 320])] = mem[_1725 + (32 * _821) + ceil32(return_data.size) + 352 len floor32(mem[_1725 + (32 * _821) + ceil32(return_data.size) + 320])]
                    require 1 < mem[(32 * _821) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _821) + (2 * ceil32(return_data.size)) + 384] <= _1309:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _821) + (2 * ceil32(return_data.size)) + 384] - _1309
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1309
                else:
                    _783 = mem[288 len 4], Mask(224, 32, arg2) >> 32
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                    _822 = mem[_783 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_783 + 288])] = mem[_783 + 320 len floor32(mem[_783 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1313 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _822) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _822) + ceil32(return_data.size) + 324] = arg2
                    mem[(32 * _822) + ceil32(return_data.size) + 356] = _1313
                    mem[(32 * _822) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _822) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _822) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _822) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _822) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1313, Array(len=2, data=mem[(32 * _822) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _822) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _822) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1727 = mem[(32 * _822) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _822) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _822) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _822) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _822) + ceil32(return_data.size) + 320] <= 4294967296 and mem[(32 * _822) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _822) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _822) + ceil32(return_data.size) + 320]) + 32 <= return_data.size
                    mem[(32 * _822) + (2 * ceil32(return_data.size)) + 320] = mem[mem[(32 * _822) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _822) + ceil32(return_data.size) + 320]
                    mem[(32 * _822) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_1727 + (32 * _822) + ceil32(return_data.size) + 320])] = mem[_1727 + (32 * _822) + ceil32(return_data.size) + 352 len floor32(mem[_1727 + (32 * _822) + ceil32(return_data.size) + 320])]
                    require 1 < mem[(32 * _822) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _822) + (2 * ceil32(return_data.size)) + 384] <= _1313:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _822) + (2 * ceil32(return_data.size)) + 384] - _1313
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1313
            else:
                if not arg2:
                    _785 = mem[288 len 4], Mask(224, 32, arg2) >> 32
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                    _823 = mem[_785 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_785 + 288])] = mem[_785 + 320 len floor32(mem[_785 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1317 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _823) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _823) + ceil32(return_data.size) + 324] = arg2
                    mem[(32 * _823) + ceil32(return_data.size) + 356] = _1317
                    mem[(32 * _823) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _823) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _823) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _823) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _823) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1317, Array(len=2, data=mem[(32 * _823) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _823) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _823) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1729 = mem[(32 * _823) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _823) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _823) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _823) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _823) + ceil32(return_data.size) + 320] <= 4294967296 and mem[(32 * _823) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _823) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _823) + ceil32(return_data.size) + 320]) + 32 <= return_data.size
                    mem[(32 * _823) + (2 * ceil32(return_data.size)) + 320] = mem[mem[(32 * _823) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _823) + ceil32(return_data.size) + 320]
                    mem[(32 * _823) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_1729 + (32 * _823) + ceil32(return_data.size) + 320])] = mem[_1729 + (32 * _823) + ceil32(return_data.size) + 352 len floor32(mem[_1729 + (32 * _823) + ceil32(return_data.size) + 320])]
                    require 1 < mem[(32 * _823) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _823) + (2 * ceil32(return_data.size)) + 384] <= _1317:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _823) + (2 * ceil32(return_data.size)) + 384] - _1317
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1317
                else:
                    _787 = mem[288 len 4], Mask(224, 32, arg2) >> 32
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                    _824 = mem[_787 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_787 + 288])] = mem[_787 + 320 len floor32(mem[_787 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1321 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _824) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _824) + ceil32(return_data.size) + 324] = arg2
                    mem[(32 * _824) + ceil32(return_data.size) + 356] = _1321
                    mem[(32 * _824) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _824) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _824) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _824) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _824) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1321, Array(len=2, data=mem[(32 * _824) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _824) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _824) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1731 = mem[(32 * _824) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _824) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _824) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _824) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _824) + ceil32(return_data.size) + 320] <= 4294967296 and mem[(32 * _824) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _824) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _824) + ceil32(return_data.size) + 320]) + 32 <= return_data.size
                    mem[(32 * _824) + (2 * ceil32(return_data.size)) + 320] = mem[mem[(32 * _824) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _824) + ceil32(return_data.size) + 320]
                    mem[(32 * _824) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_1731 + (32 * _824) + ceil32(return_data.size) + 320])] = mem[_1731 + (32 * _824) + ceil32(return_data.size) + 352 len floor32(mem[_1731 + (32 * _824) + ceil32(return_data.size) + 320])]
                    require 1 < mem[(32 * _824) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _824) + (2 * ceil32(return_data.size)) + 384] <= _1321:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _824) + (2 * ceil32(return_data.size)) + 384] - _1321
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1321
        else:
            if not arg2:
                if not arg2:
                    _789 = mem[288 len 4], Mask(224, 32, arg2) >> 32
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                    _825 = mem[_789 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_789 + 288])] = mem[_789 + 320 len floor32(mem[_789 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1325 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _825) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _825) + ceil32(return_data.size) + 324] = arg2
                    mem[(32 * _825) + ceil32(return_data.size) + 356] = _1325
                    mem[(32 * _825) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _825) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _825) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _825) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _825) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1325, Array(len=2, data=mem[(32 * _825) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _825) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _825) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1733 = mem[(32 * _825) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _825) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _825) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _825) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _825) + ceil32(return_data.size) + 320] <= 4294967296 and mem[(32 * _825) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _825) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _825) + ceil32(return_data.size) + 320]) + 32 <= return_data.size
                    mem[(32 * _825) + (2 * ceil32(return_data.size)) + 320] = mem[mem[(32 * _825) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _825) + ceil32(return_data.size) + 320]
                    mem[(32 * _825) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_1733 + (32 * _825) + ceil32(return_data.size) + 320])] = mem[_1733 + (32 * _825) + ceil32(return_data.size) + 352 len floor32(mem[_1733 + (32 * _825) + ceil32(return_data.size) + 320])]
                    require 1 < mem[(32 * _825) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _825) + (2 * ceil32(return_data.size)) + 384] <= _1325:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _825) + (2 * ceil32(return_data.size)) + 384] - _1325
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1325
                else:
                    _791 = mem[288 len 4], Mask(224, 32, arg2) >> 32
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                    _826 = mem[_791 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_791 + 288])] = mem[_791 + 320 len floor32(mem[_791 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1329 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _826) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _826) + ceil32(return_data.size) + 324] = arg2
                    mem[(32 * _826) + ceil32(return_data.size) + 356] = _1329
                    mem[(32 * _826) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _826) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _826) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _826) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _826) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1329, Array(len=2, data=mem[(32 * _826) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _826) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _826) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1735 = mem[(32 * _826) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _826) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _826) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _826) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _826) + ceil32(return_data.size) + 320] <= 4294967296 and mem[(32 * _826) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _826) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _826) + ceil32(return_data.size) + 320]) + 32 <= return_data.size
                    mem[(32 * _826) + (2 * ceil32(return_data.size)) + 320] = mem[mem[(32 * _826) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _826) + ceil32(return_data.size) + 320]
                    mem[(32 * _826) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_1735 + (32 * _826) + ceil32(return_data.size) + 320])] = mem[_1735 + (32 * _826) + ceil32(return_data.size) + 352 len floor32(mem[_1735 + (32 * _826) + ceil32(return_data.size) + 320])]
                    require 1 < mem[(32 * _826) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _826) + (2 * ceil32(return_data.size)) + 384] <= _1329:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _826) + (2 * ceil32(return_data.size)) + 384] - _1329
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1329
            else:
                if not arg2:
                    _793 = mem[288 len 4], Mask(224, 32, arg2) >> 32
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                    _827 = mem[_793 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_793 + 288])] = mem[_793 + 320 len floor32(mem[_793 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1333 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _827) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _827) + ceil32(return_data.size) + 324] = arg2
                    mem[(32 * _827) + ceil32(return_data.size) + 356] = _1333
                    mem[(32 * _827) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _827) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _827) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _827) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _827) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1333, Array(len=2, data=mem[(32 * _827) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _827) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _827) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1737 = mem[(32 * _827) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _827) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _827) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _827) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _827) + ceil32(return_data.size) + 320] <= 4294967296 and mem[(32 * _827) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _827) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _827) + ceil32(return_data.size) + 320]) + 32 <= return_data.size
                    mem[(32 * _827) + (2 * ceil32(return_data.size)) + 320] = mem[mem[(32 * _827) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _827) + ceil32(return_data.size) + 320]
                    mem[(32 * _827) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_1737 + (32 * _827) + ceil32(return_data.size) + 320])] = mem[_1737 + (32 * _827) + ceil32(return_data.size) + 352 len floor32(mem[_1737 + (32 * _827) + ceil32(return_data.size) + 320])]
                    require 1 < mem[(32 * _827) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _827) + (2 * ceil32(return_data.size)) + 384] <= _1333:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _827) + (2 * ceil32(return_data.size)) + 384] - _1333
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1333
                else:
                    _795 = mem[288 len 4], Mask(224, 32, arg2) >> 32
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                    _828 = mem[_795 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_795 + 288])] = mem[_795 + 320 len floor32(mem[_795 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1337 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _828) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _828) + ceil32(return_data.size) + 324] = arg2
                    mem[(32 * _828) + ceil32(return_data.size) + 356] = _1337
                    mem[(32 * _828) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _828) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _828) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _828) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _828) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1337, Array(len=2, data=mem[(32 * _828) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _828) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _828) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1739 = mem[(32 * _828) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _828) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _828) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _828) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _828) + ceil32(return_data.size) + 320] <= 4294967296 and mem[(32 * _828) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _828) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _828) + ceil32(return_data.size) + 320]) + 32 <= return_data.size
                    mem[(32 * _828) + (2 * ceil32(return_data.size)) + 320] = mem[mem[(32 * _828) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _828) + ceil32(return_data.size) + 320]
                    mem[(32 * _828) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_1739 + (32 * _828) + ceil32(return_data.size) + 320])] = mem[_1739 + (32 * _828) + ceil32(return_data.size) + 352 len floor32(mem[_1739 + (32 * _828) + ceil32(return_data.size) + 320])]
                    require 1 < mem[(32 * _828) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _828) + (2 * ceil32(return_data.size)) + 384] <= _1337:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _828) + (2 * ceil32(return_data.size)) + 384] - _1337
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1337
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function pantherCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
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
    mem[96] = 2
    mem[192] = 2
    mem[160] = address(ext_call.return_data[0])
    mem[224] = address(ext_call.return_data[0])
    mem[128] = address(ext_call.return_data[0])
    mem[256] = address(ext_call.return_data[0])
    require arg4.length >= 64
    if not address(cd[(arg4 + 36)]):
        revert with 0, 'e12'
    if not address(cd[(arg4 + 68)]):
        revert with 0, 'e12'
    require ext_code.size(address(ext_call.return_data[0]))
    if not arg2:
        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(cd[(arg4 + 68)]), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[288] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
        mem[292] = arg3
        mem[324] = 64
        mem[356] = 2
        mem[388 len 0] = None
        require ext_code.size(address(cd[(arg4 + 36)]))
        staticcall address(cd[(arg4 + 36)]).getAmountsIn(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg3, Array(len=2, data=mem[388 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[288 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 288
        require return_data.size >= 32
        if not arg2:
            if not arg2:
                if not arg2:
                    _765 = mem[288 len 4], Mask(224, 32, arg3) >> 32
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                    _813 = mem[_765 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_765 + 288])] = mem[_765 + 320 len floor32(mem[_765 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1277 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _813) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _813) + ceil32(return_data.size) + 324] = arg3
                    mem[(32 * _813) + ceil32(return_data.size) + 356] = _1277
                    mem[(32 * _813) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _813) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _813) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _813) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _813) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1277, Array(len=2, data=mem[(32 * _813) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _813) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _813) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1709 = mem[(32 * _813) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _813) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _813) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _813) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _813) + ceil32(return_data.size) + 320] <= 4294967296 and mem[(32 * _813) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _813) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _813) + ceil32(return_data.size) + 320]) + 32 <= return_data.size
                    mem[(32 * _813) + (2 * ceil32(return_data.size)) + 320] = mem[mem[(32 * _813) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _813) + ceil32(return_data.size) + 320]
                    mem[(32 * _813) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_1709 + (32 * _813) + ceil32(return_data.size) + 320])] = mem[_1709 + (32 * _813) + ceil32(return_data.size) + 352 len floor32(mem[_1709 + (32 * _813) + ceil32(return_data.size) + 320])]
                    require 1 < mem[(32 * _813) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _813) + (2 * ceil32(return_data.size)) + 384] <= _1277:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _813) + (2 * ceil32(return_data.size)) + 384] - _1277
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1277
                else:
                    _767 = mem[288 len 4], Mask(224, 32, arg3) >> 32
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                    _814 = mem[_767 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_767 + 288])] = mem[_767 + 320 len floor32(mem[_767 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1281 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _814) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _814) + ceil32(return_data.size) + 324] = arg3
                    mem[(32 * _814) + ceil32(return_data.size) + 356] = _1281
                    mem[(32 * _814) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _814) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _814) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _814) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _814) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1281, Array(len=2, data=mem[(32 * _814) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _814) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _814) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1711 = mem[(32 * _814) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _814) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _814) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _814) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _814) + ceil32(return_data.size) + 320] <= 4294967296 and mem[(32 * _814) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _814) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _814) + ceil32(return_data.size) + 320]) + 32 <= return_data.size
                    mem[(32 * _814) + (2 * ceil32(return_data.size)) + 320] = mem[mem[(32 * _814) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _814) + ceil32(return_data.size) + 320]
                    mem[(32 * _814) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_1711 + (32 * _814) + ceil32(return_data.size) + 320])] = mem[_1711 + (32 * _814) + ceil32(return_data.size) + 352 len floor32(mem[_1711 + (32 * _814) + ceil32(return_data.size) + 320])]
                    require 1 < mem[(32 * _814) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _814) + (2 * ceil32(return_data.size)) + 384] <= _1281:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _814) + (2 * ceil32(return_data.size)) + 384] - _1281
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1281
            else:
                if not arg2:
                    _769 = mem[288 len 4], Mask(224, 32, arg3) >> 32
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                    _815 = mem[_769 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_769 + 288])] = mem[_769 + 320 len floor32(mem[_769 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1285 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _815) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _815) + ceil32(return_data.size) + 324] = arg3
                    mem[(32 * _815) + ceil32(return_data.size) + 356] = _1285
                    mem[(32 * _815) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _815) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _815) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _815) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _815) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1285, Array(len=2, data=mem[(32 * _815) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _815) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _815) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1713 = mem[(32 * _815) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _815) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _815) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _815) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _815) + ceil32(return_data.size) + 320] <= 4294967296 and mem[(32 * _815) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _815) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _815) + ceil32(return_data.size) + 320]) + 32 <= return_data.size
                    mem[(32 * _815) + (2 * ceil32(return_data.size)) + 320] = mem[mem[(32 * _815) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _815) + ceil32(return_data.size) + 320]
                    mem[(32 * _815) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_1713 + (32 * _815) + ceil32(return_data.size) + 320])] = mem[_1713 + (32 * _815) + ceil32(return_data.size) + 352 len floor32(mem[_1713 + (32 * _815) + ceil32(return_data.size) + 320])]
                    require 1 < mem[(32 * _815) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _815) + (2 * ceil32(return_data.size)) + 384] <= _1285:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _815) + (2 * ceil32(return_data.size)) + 384] - _1285
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1285
                else:
                    _771 = mem[288 len 4], Mask(224, 32, arg3) >> 32
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                    _816 = mem[_771 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_771 + 288])] = mem[_771 + 320 len floor32(mem[_771 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1289 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _816) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _816) + ceil32(return_data.size) + 324] = arg3
                    mem[(32 * _816) + ceil32(return_data.size) + 356] = _1289
                    mem[(32 * _816) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _816) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _816) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _816) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _816) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1289, Array(len=2, data=mem[(32 * _816) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _816) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _816) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1715 = mem[(32 * _816) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _816) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _816) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _816) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _816) + ceil32(return_data.size) + 320] <= 4294967296 and mem[(32 * _816) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _816) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _816) + ceil32(return_data.size) + 320]) + 32 <= return_data.size
                    mem[(32 * _816) + (2 * ceil32(return_data.size)) + 320] = mem[mem[(32 * _816) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _816) + ceil32(return_data.size) + 320]
                    mem[(32 * _816) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_1715 + (32 * _816) + ceil32(return_data.size) + 320])] = mem[_1715 + (32 * _816) + ceil32(return_data.size) + 352 len floor32(mem[_1715 + (32 * _816) + ceil32(return_data.size) + 320])]
                    require 1 < mem[(32 * _816) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _816) + (2 * ceil32(return_data.size)) + 384] <= _1289:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _816) + (2 * ceil32(return_data.size)) + 384] - _1289
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1289
        else:
            if not arg2:
                if not arg2:
                    _773 = mem[288 len 4], Mask(224, 32, arg3) >> 32
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                    _817 = mem[_773 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_773 + 288])] = mem[_773 + 320 len floor32(mem[_773 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1293 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _817) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _817) + ceil32(return_data.size) + 324] = arg3
                    mem[(32 * _817) + ceil32(return_data.size) + 356] = _1293
                    mem[(32 * _817) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _817) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _817) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _817) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _817) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1293, Array(len=2, data=mem[(32 * _817) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _817) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _817) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1717 = mem[(32 * _817) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _817) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _817) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _817) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _817) + ceil32(return_data.size) + 320] <= 4294967296 and mem[(32 * _817) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _817) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _817) + ceil32(return_data.size) + 320]) + 32 <= return_data.size
                    mem[(32 * _817) + (2 * ceil32(return_data.size)) + 320] = mem[mem[(32 * _817) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _817) + ceil32(return_data.size) + 320]
                    mem[(32 * _817) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_1717 + (32 * _817) + ceil32(return_data.size) + 320])] = mem[_1717 + (32 * _817) + ceil32(return_data.size) + 352 len floor32(mem[_1717 + (32 * _817) + ceil32(return_data.size) + 320])]
                    require 1 < mem[(32 * _817) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _817) + (2 * ceil32(return_data.size)) + 384] <= _1293:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _817) + (2 * ceil32(return_data.size)) + 384] - _1293
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1293
                else:
                    _775 = mem[288 len 4], Mask(224, 32, arg3) >> 32
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                    _818 = mem[_775 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_775 + 288])] = mem[_775 + 320 len floor32(mem[_775 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1297 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _818) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _818) + ceil32(return_data.size) + 324] = arg3
                    mem[(32 * _818) + ceil32(return_data.size) + 356] = _1297
                    mem[(32 * _818) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _818) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _818) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _818) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _818) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1297, Array(len=2, data=mem[(32 * _818) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _818) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _818) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1719 = mem[(32 * _818) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _818) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _818) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _818) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _818) + ceil32(return_data.size) + 320] <= 4294967296 and mem[(32 * _818) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _818) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _818) + ceil32(return_data.size) + 320]) + 32 <= return_data.size
                    mem[(32 * _818) + (2 * ceil32(return_data.size)) + 320] = mem[mem[(32 * _818) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _818) + ceil32(return_data.size) + 320]
                    mem[(32 * _818) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_1719 + (32 * _818) + ceil32(return_data.size) + 320])] = mem[_1719 + (32 * _818) + ceil32(return_data.size) + 352 len floor32(mem[_1719 + (32 * _818) + ceil32(return_data.size) + 320])]
                    require 1 < mem[(32 * _818) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _818) + (2 * ceil32(return_data.size)) + 384] <= _1297:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _818) + (2 * ceil32(return_data.size)) + 384] - _1297
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1297
            else:
                if not arg2:
                    _777 = mem[288 len 4], Mask(224, 32, arg3) >> 32
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                    _819 = mem[_777 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_777 + 288])] = mem[_777 + 320 len floor32(mem[_777 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1301 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _819) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _819) + ceil32(return_data.size) + 324] = arg3
                    mem[(32 * _819) + ceil32(return_data.size) + 356] = _1301
                    mem[(32 * _819) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _819) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _819) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _819) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _819) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1301, Array(len=2, data=mem[(32 * _819) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _819) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _819) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1721 = mem[(32 * _819) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _819) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _819) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _819) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _819) + ceil32(return_data.size) + 320] <= 4294967296 and mem[(32 * _819) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _819) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _819) + ceil32(return_data.size) + 320]) + 32 <= return_data.size
                    mem[(32 * _819) + (2 * ceil32(return_data.size)) + 320] = mem[mem[(32 * _819) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _819) + ceil32(return_data.size) + 320]
                    mem[(32 * _819) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_1721 + (32 * _819) + ceil32(return_data.size) + 320])] = mem[_1721 + (32 * _819) + ceil32(return_data.size) + 352 len floor32(mem[_1721 + (32 * _819) + ceil32(return_data.size) + 320])]
                    require 1 < mem[(32 * _819) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _819) + (2 * ceil32(return_data.size)) + 384] <= _1301:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _819) + (2 * ceil32(return_data.size)) + 384] - _1301
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1301
                else:
                    _779 = mem[288 len 4], Mask(224, 32, arg3) >> 32
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                    _820 = mem[_779 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_779 + 288])] = mem[_779 + 320 len floor32(mem[_779 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1305 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _820) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _820) + ceil32(return_data.size) + 324] = arg3
                    mem[(32 * _820) + ceil32(return_data.size) + 356] = _1305
                    mem[(32 * _820) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _820) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _820) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _820) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _820) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1305, Array(len=2, data=mem[(32 * _820) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _820) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _820) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1723 = mem[(32 * _820) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _820) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _820) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _820) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _820) + ceil32(return_data.size) + 320] <= 4294967296 and mem[(32 * _820) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _820) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _820) + ceil32(return_data.size) + 320]) + 32 <= return_data.size
                    mem[(32 * _820) + (2 * ceil32(return_data.size)) + 320] = mem[mem[(32 * _820) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _820) + ceil32(return_data.size) + 320]
                    mem[(32 * _820) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_1723 + (32 * _820) + ceil32(return_data.size) + 320])] = mem[_1723 + (32 * _820) + ceil32(return_data.size) + 352 len floor32(mem[_1723 + (32 * _820) + ceil32(return_data.size) + 320])]
                    require 1 < mem[(32 * _820) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _820) + (2 * ceil32(return_data.size)) + 384] <= _1305:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _820) + (2 * ceil32(return_data.size)) + 384] - _1305
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1305
    else:
        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(cd[(arg4 + 68)]), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[288] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
        mem[292] = arg2
        mem[324] = 64
        mem[356] = 2
        mem[388 len 0] = None
        require ext_code.size(address(cd[(arg4 + 36)]))
        staticcall address(cd[(arg4 + 36)]).getAmountsIn(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg2, Array(len=2, data=mem[388 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[288 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 288
        require return_data.size >= 32
        if not arg2:
            if not arg2:
                if not arg2:
                    _781 = mem[288 len 4], Mask(224, 32, arg2) >> 32
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                    _821 = mem[_781 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_781 + 288])] = mem[_781 + 320 len floor32(mem[_781 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1309 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _821) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _821) + ceil32(return_data.size) + 324] = arg2
                    mem[(32 * _821) + ceil32(return_data.size) + 356] = _1309
                    mem[(32 * _821) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _821) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _821) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _821) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _821) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1309, Array(len=2, data=mem[(32 * _821) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _821) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _821) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1725 = mem[(32 * _821) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _821) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _821) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _821) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _821) + ceil32(return_data.size) + 320] <= 4294967296 and mem[(32 * _821) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _821) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _821) + ceil32(return_data.size) + 320]) + 32 <= return_data.size
                    mem[(32 * _821) + (2 * ceil32(return_data.size)) + 320] = mem[mem[(32 * _821) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _821) + ceil32(return_data.size) + 320]
                    mem[(32 * _821) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_1725 + (32 * _821) + ceil32(return_data.size) + 320])] = mem[_1725 + (32 * _821) + ceil32(return_data.size) + 352 len floor32(mem[_1725 + (32 * _821) + ceil32(return_data.size) + 320])]
                    require 1 < mem[(32 * _821) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _821) + (2 * ceil32(return_data.size)) + 384] <= _1309:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _821) + (2 * ceil32(return_data.size)) + 384] - _1309
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1309
                else:
                    _783 = mem[288 len 4], Mask(224, 32, arg2) >> 32
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                    _822 = mem[_783 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_783 + 288])] = mem[_783 + 320 len floor32(mem[_783 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1313 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _822) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _822) + ceil32(return_data.size) + 324] = arg2
                    mem[(32 * _822) + ceil32(return_data.size) + 356] = _1313
                    mem[(32 * _822) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _822) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _822) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _822) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _822) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1313, Array(len=2, data=mem[(32 * _822) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _822) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _822) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1727 = mem[(32 * _822) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _822) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _822) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _822) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _822) + ceil32(return_data.size) + 320] <= 4294967296 and mem[(32 * _822) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _822) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _822) + ceil32(return_data.size) + 320]) + 32 <= return_data.size
                    mem[(32 * _822) + (2 * ceil32(return_data.size)) + 320] = mem[mem[(32 * _822) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _822) + ceil32(return_data.size) + 320]
                    mem[(32 * _822) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_1727 + (32 * _822) + ceil32(return_data.size) + 320])] = mem[_1727 + (32 * _822) + ceil32(return_data.size) + 352 len floor32(mem[_1727 + (32 * _822) + ceil32(return_data.size) + 320])]
                    require 1 < mem[(32 * _822) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _822) + (2 * ceil32(return_data.size)) + 384] <= _1313:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _822) + (2 * ceil32(return_data.size)) + 384] - _1313
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1313
            else:
                if not arg2:
                    _785 = mem[288 len 4], Mask(224, 32, arg2) >> 32
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                    _823 = mem[_785 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_785 + 288])] = mem[_785 + 320 len floor32(mem[_785 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1317 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _823) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _823) + ceil32(return_data.size) + 324] = arg2
                    mem[(32 * _823) + ceil32(return_data.size) + 356] = _1317
                    mem[(32 * _823) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _823) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _823) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _823) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _823) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1317, Array(len=2, data=mem[(32 * _823) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _823) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _823) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1729 = mem[(32 * _823) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _823) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _823) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _823) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _823) + ceil32(return_data.size) + 320] <= 4294967296 and mem[(32 * _823) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _823) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _823) + ceil32(return_data.size) + 320]) + 32 <= return_data.size
                    mem[(32 * _823) + (2 * ceil32(return_data.size)) + 320] = mem[mem[(32 * _823) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _823) + ceil32(return_data.size) + 320]
                    mem[(32 * _823) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_1729 + (32 * _823) + ceil32(return_data.size) + 320])] = mem[_1729 + (32 * _823) + ceil32(return_data.size) + 352 len floor32(mem[_1729 + (32 * _823) + ceil32(return_data.size) + 320])]
                    require 1 < mem[(32 * _823) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _823) + (2 * ceil32(return_data.size)) + 384] <= _1317:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _823) + (2 * ceil32(return_data.size)) + 384] - _1317
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1317
                else:
                    _787 = mem[288 len 4], Mask(224, 32, arg2) >> 32
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                    _824 = mem[_787 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_787 + 288])] = mem[_787 + 320 len floor32(mem[_787 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1321 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _824) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _824) + ceil32(return_data.size) + 324] = arg2
                    mem[(32 * _824) + ceil32(return_data.size) + 356] = _1321
                    mem[(32 * _824) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _824) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _824) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _824) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _824) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1321, Array(len=2, data=mem[(32 * _824) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _824) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _824) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1731 = mem[(32 * _824) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _824) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _824) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _824) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _824) + ceil32(return_data.size) + 320] <= 4294967296 and mem[(32 * _824) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _824) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _824) + ceil32(return_data.size) + 320]) + 32 <= return_data.size
                    mem[(32 * _824) + (2 * ceil32(return_data.size)) + 320] = mem[mem[(32 * _824) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _824) + ceil32(return_data.size) + 320]
                    mem[(32 * _824) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_1731 + (32 * _824) + ceil32(return_data.size) + 320])] = mem[_1731 + (32 * _824) + ceil32(return_data.size) + 352 len floor32(mem[_1731 + (32 * _824) + ceil32(return_data.size) + 320])]
                    require 1 < mem[(32 * _824) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _824) + (2 * ceil32(return_data.size)) + 384] <= _1321:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _824) + (2 * ceil32(return_data.size)) + 384] - _1321
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1321
        else:
            if not arg2:
                if not arg2:
                    _789 = mem[288 len 4], Mask(224, 32, arg2) >> 32
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                    _825 = mem[_789 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_789 + 288])] = mem[_789 + 320 len floor32(mem[_789 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1325 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _825) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _825) + ceil32(return_data.size) + 324] = arg2
                    mem[(32 * _825) + ceil32(return_data.size) + 356] = _1325
                    mem[(32 * _825) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _825) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _825) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _825) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _825) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1325, Array(len=2, data=mem[(32 * _825) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _825) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _825) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1733 = mem[(32 * _825) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _825) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _825) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _825) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _825) + ceil32(return_data.size) + 320] <= 4294967296 and mem[(32 * _825) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _825) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _825) + ceil32(return_data.size) + 320]) + 32 <= return_data.size
                    mem[(32 * _825) + (2 * ceil32(return_data.size)) + 320] = mem[mem[(32 * _825) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _825) + ceil32(return_data.size) + 320]
                    mem[(32 * _825) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_1733 + (32 * _825) + ceil32(return_data.size) + 320])] = mem[_1733 + (32 * _825) + ceil32(return_data.size) + 352 len floor32(mem[_1733 + (32 * _825) + ceil32(return_data.size) + 320])]
                    require 1 < mem[(32 * _825) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _825) + (2 * ceil32(return_data.size)) + 384] <= _1325:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _825) + (2 * ceil32(return_data.size)) + 384] - _1325
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1325
                else:
                    _791 = mem[288 len 4], Mask(224, 32, arg2) >> 32
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                    _826 = mem[_791 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_791 + 288])] = mem[_791 + 320 len floor32(mem[_791 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1329 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _826) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _826) + ceil32(return_data.size) + 324] = arg2
                    mem[(32 * _826) + ceil32(return_data.size) + 356] = _1329
                    mem[(32 * _826) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _826) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _826) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _826) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _826) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1329, Array(len=2, data=mem[(32 * _826) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _826) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _826) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1735 = mem[(32 * _826) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _826) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _826) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _826) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _826) + ceil32(return_data.size) + 320] <= 4294967296 and mem[(32 * _826) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _826) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _826) + ceil32(return_data.size) + 320]) + 32 <= return_data.size
                    mem[(32 * _826) + (2 * ceil32(return_data.size)) + 320] = mem[mem[(32 * _826) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _826) + ceil32(return_data.size) + 320]
                    mem[(32 * _826) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_1735 + (32 * _826) + ceil32(return_data.size) + 320])] = mem[_1735 + (32 * _826) + ceil32(return_data.size) + 352 len floor32(mem[_1735 + (32 * _826) + ceil32(return_data.size) + 320])]
                    require 1 < mem[(32 * _826) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _826) + (2 * ceil32(return_data.size)) + 384] <= _1329:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _826) + (2 * ceil32(return_data.size)) + 384] - _1329
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1329
            else:
                if not arg2:
                    _793 = mem[288 len 4], Mask(224, 32, arg2) >> 32
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                    _827 = mem[_793 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_793 + 288])] = mem[_793 + 320 len floor32(mem[_793 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1333 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _827) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _827) + ceil32(return_data.size) + 324] = arg2
                    mem[(32 * _827) + ceil32(return_data.size) + 356] = _1333
                    mem[(32 * _827) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _827) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _827) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _827) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _827) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1333, Array(len=2, data=mem[(32 * _827) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _827) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _827) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1737 = mem[(32 * _827) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _827) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _827) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _827) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _827) + ceil32(return_data.size) + 320] <= 4294967296 and mem[(32 * _827) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _827) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _827) + ceil32(return_data.size) + 320]) + 32 <= return_data.size
                    mem[(32 * _827) + (2 * ceil32(return_data.size)) + 320] = mem[mem[(32 * _827) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _827) + ceil32(return_data.size) + 320]
                    mem[(32 * _827) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_1737 + (32 * _827) + ceil32(return_data.size) + 320])] = mem[_1737 + (32 * _827) + ceil32(return_data.size) + 352 len floor32(mem[_1737 + (32 * _827) + ceil32(return_data.size) + 320])]
                    require 1 < mem[(32 * _827) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _827) + (2 * ceil32(return_data.size)) + 384] <= _1333:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _827) + (2 * ceil32(return_data.size)) + 384] - _1333
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1333
                else:
                    _795 = mem[288 len 4], Mask(224, 32, arg2) >> 32
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                    _828 = mem[_795 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_795 + 288])] = mem[_795 + 320 len floor32(mem[_795 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1337 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _828) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _828) + ceil32(return_data.size) + 324] = arg2
                    mem[(32 * _828) + ceil32(return_data.size) + 356] = _1337
                    mem[(32 * _828) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _828) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _828) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _828) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _828) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1337, Array(len=2, data=mem[(32 * _828) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _828) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _828) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1739 = mem[(32 * _828) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _828) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _828) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _828) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _828) + ceil32(return_data.size) + 320] <= 4294967296 and mem[(32 * _828) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _828) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _828) + ceil32(return_data.size) + 320]) + 32 <= return_data.size
                    mem[(32 * _828) + (2 * ceil32(return_data.size)) + 320] = mem[mem[(32 * _828) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _828) + ceil32(return_data.size) + 320]
                    mem[(32 * _828) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_1739 + (32 * _828) + ceil32(return_data.size) + 320])] = mem[_1739 + (32 * _828) + ceil32(return_data.size) + 352 len floor32(mem[_1739 + (32 * _828) + ceil32(return_data.size) + 320])]
                    require 1 < mem[(32 * _828) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _828) + (2 * ceil32(return_data.size)) + 384] <= _1337:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _828) + (2 * ceil32(return_data.size)) + 384] - _1337
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1337
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function jetswapCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
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
    mem[96] = 2
    mem[192] = 2
    mem[160] = address(ext_call.return_data[0])
    mem[224] = address(ext_call.return_data[0])
    mem[128] = address(ext_call.return_data[0])
    mem[256] = address(ext_call.return_data[0])
    require arg4.length >= 64
    if not address(cd[(arg4 + 36)]):
        revert with 0, 'e12'
    if not address(cd[(arg4 + 68)]):
        revert with 0, 'e12'
    require ext_code.size(address(ext_call.return_data[0]))
    if not arg2:
        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(cd[(arg4 + 68)]), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[288] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
        mem[292] = arg3
        mem[324] = 64
        mem[356] = 2
        mem[388 len 0] = None
        require ext_code.size(address(cd[(arg4 + 36)]))
        staticcall address(cd[(arg4 + 36)]).getAmountsIn(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg3, Array(len=2, data=mem[388 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[288 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 288
        require return_data.size >= 32
        if not arg2:
            if not arg2:
                if not arg2:
                    _765 = mem[288 len 4], Mask(224, 32, arg3) >> 32
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                    _813 = mem[_765 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_765 + 288])] = mem[_765 + 320 len floor32(mem[_765 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1277 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _813) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _813) + ceil32(return_data.size) + 324] = arg3
                    mem[(32 * _813) + ceil32(return_data.size) + 356] = _1277
                    mem[(32 * _813) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _813) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _813) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _813) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _813) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1277, Array(len=2, data=mem[(32 * _813) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _813) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _813) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1709 = mem[(32 * _813) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _813) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _813) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _813) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _813) + ceil32(return_data.size) + 320] <= 4294967296 and mem[(32 * _813) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _813) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _813) + ceil32(return_data.size) + 320]) + 32 <= return_data.size
                    mem[(32 * _813) + (2 * ceil32(return_data.size)) + 320] = mem[mem[(32 * _813) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _813) + ceil32(return_data.size) + 320]
                    mem[(32 * _813) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_1709 + (32 * _813) + ceil32(return_data.size) + 320])] = mem[_1709 + (32 * _813) + ceil32(return_data.size) + 352 len floor32(mem[_1709 + (32 * _813) + ceil32(return_data.size) + 320])]
                    require 1 < mem[(32 * _813) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _813) + (2 * ceil32(return_data.size)) + 384] <= _1277:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _813) + (2 * ceil32(return_data.size)) + 384] - _1277
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1277
                else:
                    _767 = mem[288 len 4], Mask(224, 32, arg3) >> 32
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                    _814 = mem[_767 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_767 + 288])] = mem[_767 + 320 len floor32(mem[_767 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1281 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _814) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _814) + ceil32(return_data.size) + 324] = arg3
                    mem[(32 * _814) + ceil32(return_data.size) + 356] = _1281
                    mem[(32 * _814) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _814) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _814) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _814) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _814) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1281, Array(len=2, data=mem[(32 * _814) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _814) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _814) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1711 = mem[(32 * _814) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _814) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _814) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _814) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _814) + ceil32(return_data.size) + 320] <= 4294967296 and mem[(32 * _814) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _814) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _814) + ceil32(return_data.size) + 320]) + 32 <= return_data.size
                    mem[(32 * _814) + (2 * ceil32(return_data.size)) + 320] = mem[mem[(32 * _814) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _814) + ceil32(return_data.size) + 320]
                    mem[(32 * _814) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_1711 + (32 * _814) + ceil32(return_data.size) + 320])] = mem[_1711 + (32 * _814) + ceil32(return_data.size) + 352 len floor32(mem[_1711 + (32 * _814) + ceil32(return_data.size) + 320])]
                    require 1 < mem[(32 * _814) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _814) + (2 * ceil32(return_data.size)) + 384] <= _1281:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _814) + (2 * ceil32(return_data.size)) + 384] - _1281
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1281
            else:
                if not arg2:
                    _769 = mem[288 len 4], Mask(224, 32, arg3) >> 32
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                    _815 = mem[_769 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_769 + 288])] = mem[_769 + 320 len floor32(mem[_769 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1285 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _815) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _815) + ceil32(return_data.size) + 324] = arg3
                    mem[(32 * _815) + ceil32(return_data.size) + 356] = _1285
                    mem[(32 * _815) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _815) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _815) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _815) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _815) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1285, Array(len=2, data=mem[(32 * _815) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _815) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _815) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1713 = mem[(32 * _815) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _815) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _815) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _815) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _815) + ceil32(return_data.size) + 320] <= 4294967296 and mem[(32 * _815) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _815) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _815) + ceil32(return_data.size) + 320]) + 32 <= return_data.size
                    mem[(32 * _815) + (2 * ceil32(return_data.size)) + 320] = mem[mem[(32 * _815) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _815) + ceil32(return_data.size) + 320]
                    mem[(32 * _815) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_1713 + (32 * _815) + ceil32(return_data.size) + 320])] = mem[_1713 + (32 * _815) + ceil32(return_data.size) + 352 len floor32(mem[_1713 + (32 * _815) + ceil32(return_data.size) + 320])]
                    require 1 < mem[(32 * _815) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _815) + (2 * ceil32(return_data.size)) + 384] <= _1285:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _815) + (2 * ceil32(return_data.size)) + 384] - _1285
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1285
                else:
                    _771 = mem[288 len 4], Mask(224, 32, arg3) >> 32
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                    _816 = mem[_771 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_771 + 288])] = mem[_771 + 320 len floor32(mem[_771 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1289 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _816) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _816) + ceil32(return_data.size) + 324] = arg3
                    mem[(32 * _816) + ceil32(return_data.size) + 356] = _1289
                    mem[(32 * _816) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _816) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _816) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _816) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _816) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1289, Array(len=2, data=mem[(32 * _816) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _816) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _816) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1715 = mem[(32 * _816) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _816) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _816) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _816) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _816) + ceil32(return_data.size) + 320] <= 4294967296 and mem[(32 * _816) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _816) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _816) + ceil32(return_data.size) + 320]) + 32 <= return_data.size
                    mem[(32 * _816) + (2 * ceil32(return_data.size)) + 320] = mem[mem[(32 * _816) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _816) + ceil32(return_data.size) + 320]
                    mem[(32 * _816) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_1715 + (32 * _816) + ceil32(return_data.size) + 320])] = mem[_1715 + (32 * _816) + ceil32(return_data.size) + 352 len floor32(mem[_1715 + (32 * _816) + ceil32(return_data.size) + 320])]
                    require 1 < mem[(32 * _816) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _816) + (2 * ceil32(return_data.size)) + 384] <= _1289:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _816) + (2 * ceil32(return_data.size)) + 384] - _1289
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1289
        else:
            if not arg2:
                if not arg2:
                    _773 = mem[288 len 4], Mask(224, 32, arg3) >> 32
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                    _817 = mem[_773 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_773 + 288])] = mem[_773 + 320 len floor32(mem[_773 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1293 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _817) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _817) + ceil32(return_data.size) + 324] = arg3
                    mem[(32 * _817) + ceil32(return_data.size) + 356] = _1293
                    mem[(32 * _817) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _817) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _817) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _817) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _817) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1293, Array(len=2, data=mem[(32 * _817) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _817) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _817) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1717 = mem[(32 * _817) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _817) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _817) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _817) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _817) + ceil32(return_data.size) + 320] <= 4294967296 and mem[(32 * _817) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _817) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _817) + ceil32(return_data.size) + 320]) + 32 <= return_data.size
                    mem[(32 * _817) + (2 * ceil32(return_data.size)) + 320] = mem[mem[(32 * _817) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _817) + ceil32(return_data.size) + 320]
                    mem[(32 * _817) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_1717 + (32 * _817) + ceil32(return_data.size) + 320])] = mem[_1717 + (32 * _817) + ceil32(return_data.size) + 352 len floor32(mem[_1717 + (32 * _817) + ceil32(return_data.size) + 320])]
                    require 1 < mem[(32 * _817) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _817) + (2 * ceil32(return_data.size)) + 384] <= _1293:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _817) + (2 * ceil32(return_data.size)) + 384] - _1293
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1293
                else:
                    _775 = mem[288 len 4], Mask(224, 32, arg3) >> 32
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                    _818 = mem[_775 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_775 + 288])] = mem[_775 + 320 len floor32(mem[_775 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1297 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _818) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _818) + ceil32(return_data.size) + 324] = arg3
                    mem[(32 * _818) + ceil32(return_data.size) + 356] = _1297
                    mem[(32 * _818) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _818) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _818) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _818) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _818) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1297, Array(len=2, data=mem[(32 * _818) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _818) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _818) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1719 = mem[(32 * _818) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _818) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _818) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _818) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _818) + ceil32(return_data.size) + 320] <= 4294967296 and mem[(32 * _818) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _818) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _818) + ceil32(return_data.size) + 320]) + 32 <= return_data.size
                    mem[(32 * _818) + (2 * ceil32(return_data.size)) + 320] = mem[mem[(32 * _818) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _818) + ceil32(return_data.size) + 320]
                    mem[(32 * _818) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_1719 + (32 * _818) + ceil32(return_data.size) + 320])] = mem[_1719 + (32 * _818) + ceil32(return_data.size) + 352 len floor32(mem[_1719 + (32 * _818) + ceil32(return_data.size) + 320])]
                    require 1 < mem[(32 * _818) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _818) + (2 * ceil32(return_data.size)) + 384] <= _1297:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _818) + (2 * ceil32(return_data.size)) + 384] - _1297
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1297
            else:
                if not arg2:
                    _777 = mem[288 len 4], Mask(224, 32, arg3) >> 32
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                    _819 = mem[_777 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_777 + 288])] = mem[_777 + 320 len floor32(mem[_777 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1301 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _819) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _819) + ceil32(return_data.size) + 324] = arg3
                    mem[(32 * _819) + ceil32(return_data.size) + 356] = _1301
                    mem[(32 * _819) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _819) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _819) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _819) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _819) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1301, Array(len=2, data=mem[(32 * _819) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _819) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _819) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1721 = mem[(32 * _819) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _819) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _819) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _819) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _819) + ceil32(return_data.size) + 320] <= 4294967296 and mem[(32 * _819) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _819) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _819) + ceil32(return_data.size) + 320]) + 32 <= return_data.size
                    mem[(32 * _819) + (2 * ceil32(return_data.size)) + 320] = mem[mem[(32 * _819) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _819) + ceil32(return_data.size) + 320]
                    mem[(32 * _819) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_1721 + (32 * _819) + ceil32(return_data.size) + 320])] = mem[_1721 + (32 * _819) + ceil32(return_data.size) + 352 len floor32(mem[_1721 + (32 * _819) + ceil32(return_data.size) + 320])]
                    require 1 < mem[(32 * _819) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _819) + (2 * ceil32(return_data.size)) + 384] <= _1301:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _819) + (2 * ceil32(return_data.size)) + 384] - _1301
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1301
                else:
                    _779 = mem[288 len 4], Mask(224, 32, arg3) >> 32
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                    _820 = mem[_779 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_779 + 288])] = mem[_779 + 320 len floor32(mem[_779 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1305 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _820) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _820) + ceil32(return_data.size) + 324] = arg3
                    mem[(32 * _820) + ceil32(return_data.size) + 356] = _1305
                    mem[(32 * _820) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _820) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _820) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _820) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _820) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1305, Array(len=2, data=mem[(32 * _820) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _820) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _820) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1723 = mem[(32 * _820) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _820) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _820) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _820) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _820) + ceil32(return_data.size) + 320] <= 4294967296 and mem[(32 * _820) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _820) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _820) + ceil32(return_data.size) + 320]) + 32 <= return_data.size
                    mem[(32 * _820) + (2 * ceil32(return_data.size)) + 320] = mem[mem[(32 * _820) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _820) + ceil32(return_data.size) + 320]
                    mem[(32 * _820) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_1723 + (32 * _820) + ceil32(return_data.size) + 320])] = mem[_1723 + (32 * _820) + ceil32(return_data.size) + 352 len floor32(mem[_1723 + (32 * _820) + ceil32(return_data.size) + 320])]
                    require 1 < mem[(32 * _820) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _820) + (2 * ceil32(return_data.size)) + 384] <= _1305:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _820) + (2 * ceil32(return_data.size)) + 384] - _1305
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1305
    else:
        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(cd[(arg4 + 68)]), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[288] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
        mem[292] = arg2
        mem[324] = 64
        mem[356] = 2
        mem[388 len 0] = None
        require ext_code.size(address(cd[(arg4 + 36)]))
        staticcall address(cd[(arg4 + 36)]).getAmountsIn(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg2, Array(len=2, data=mem[388 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[288 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 288
        require return_data.size >= 32
        if not arg2:
            if not arg2:
                if not arg2:
                    _781 = mem[288 len 4], Mask(224, 32, arg2) >> 32
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                    _821 = mem[_781 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_781 + 288])] = mem[_781 + 320 len floor32(mem[_781 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1309 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _821) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _821) + ceil32(return_data.size) + 324] = arg2
                    mem[(32 * _821) + ceil32(return_data.size) + 356] = _1309
                    mem[(32 * _821) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _821) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _821) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _821) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _821) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1309, Array(len=2, data=mem[(32 * _821) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _821) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _821) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1725 = mem[(32 * _821) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _821) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _821) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _821) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _821) + ceil32(return_data.size) + 320] <= 4294967296 and mem[(32 * _821) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _821) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _821) + ceil32(return_data.size) + 320]) + 32 <= return_data.size
                    mem[(32 * _821) + (2 * ceil32(return_data.size)) + 320] = mem[mem[(32 * _821) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _821) + ceil32(return_data.size) + 320]
                    mem[(32 * _821) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_1725 + (32 * _821) + ceil32(return_data.size) + 320])] = mem[_1725 + (32 * _821) + ceil32(return_data.size) + 352 len floor32(mem[_1725 + (32 * _821) + ceil32(return_data.size) + 320])]
                    require 1 < mem[(32 * _821) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _821) + (2 * ceil32(return_data.size)) + 384] <= _1309:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _821) + (2 * ceil32(return_data.size)) + 384] - _1309
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1309
                else:
                    _783 = mem[288 len 4], Mask(224, 32, arg2) >> 32
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                    _822 = mem[_783 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_783 + 288])] = mem[_783 + 320 len floor32(mem[_783 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1313 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _822) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _822) + ceil32(return_data.size) + 324] = arg2
                    mem[(32 * _822) + ceil32(return_data.size) + 356] = _1313
                    mem[(32 * _822) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _822) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _822) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _822) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _822) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1313, Array(len=2, data=mem[(32 * _822) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _822) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _822) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1727 = mem[(32 * _822) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _822) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _822) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _822) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _822) + ceil32(return_data.size) + 320] <= 4294967296 and mem[(32 * _822) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _822) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _822) + ceil32(return_data.size) + 320]) + 32 <= return_data.size
                    mem[(32 * _822) + (2 * ceil32(return_data.size)) + 320] = mem[mem[(32 * _822) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _822) + ceil32(return_data.size) + 320]
                    mem[(32 * _822) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_1727 + (32 * _822) + ceil32(return_data.size) + 320])] = mem[_1727 + (32 * _822) + ceil32(return_data.size) + 352 len floor32(mem[_1727 + (32 * _822) + ceil32(return_data.size) + 320])]
                    require 1 < mem[(32 * _822) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _822) + (2 * ceil32(return_data.size)) + 384] <= _1313:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _822) + (2 * ceil32(return_data.size)) + 384] - _1313
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1313
            else:
                if not arg2:
                    _785 = mem[288 len 4], Mask(224, 32, arg2) >> 32
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                    _823 = mem[_785 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_785 + 288])] = mem[_785 + 320 len floor32(mem[_785 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1317 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _823) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _823) + ceil32(return_data.size) + 324] = arg2
                    mem[(32 * _823) + ceil32(return_data.size) + 356] = _1317
                    mem[(32 * _823) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _823) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _823) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _823) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _823) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1317, Array(len=2, data=mem[(32 * _823) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _823) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _823) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1729 = mem[(32 * _823) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _823) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _823) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _823) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _823) + ceil32(return_data.size) + 320] <= 4294967296 and mem[(32 * _823) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _823) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _823) + ceil32(return_data.size) + 320]) + 32 <= return_data.size
                    mem[(32 * _823) + (2 * ceil32(return_data.size)) + 320] = mem[mem[(32 * _823) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _823) + ceil32(return_data.size) + 320]
                    mem[(32 * _823) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_1729 + (32 * _823) + ceil32(return_data.size) + 320])] = mem[_1729 + (32 * _823) + ceil32(return_data.size) + 352 len floor32(mem[_1729 + (32 * _823) + ceil32(return_data.size) + 320])]
                    require 1 < mem[(32 * _823) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _823) + (2 * ceil32(return_data.size)) + 384] <= _1317:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _823) + (2 * ceil32(return_data.size)) + 384] - _1317
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1317
                else:
                    _787 = mem[288 len 4], Mask(224, 32, arg2) >> 32
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                    _824 = mem[_787 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_787 + 288])] = mem[_787 + 320 len floor32(mem[_787 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1321 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _824) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _824) + ceil32(return_data.size) + 324] = arg2
                    mem[(32 * _824) + ceil32(return_data.size) + 356] = _1321
                    mem[(32 * _824) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _824) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _824) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _824) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _824) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1321, Array(len=2, data=mem[(32 * _824) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _824) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _824) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1731 = mem[(32 * _824) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _824) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _824) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _824) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _824) + ceil32(return_data.size) + 320] <= 4294967296 and mem[(32 * _824) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _824) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _824) + ceil32(return_data.size) + 320]) + 32 <= return_data.size
                    mem[(32 * _824) + (2 * ceil32(return_data.size)) + 320] = mem[mem[(32 * _824) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _824) + ceil32(return_data.size) + 320]
                    mem[(32 * _824) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_1731 + (32 * _824) + ceil32(return_data.size) + 320])] = mem[_1731 + (32 * _824) + ceil32(return_data.size) + 352 len floor32(mem[_1731 + (32 * _824) + ceil32(return_data.size) + 320])]
                    require 1 < mem[(32 * _824) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _824) + (2 * ceil32(return_data.size)) + 384] <= _1321:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _824) + (2 * ceil32(return_data.size)) + 384] - _1321
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1321
        else:
            if not arg2:
                if not arg2:
                    _789 = mem[288 len 4], Mask(224, 32, arg2) >> 32
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                    _825 = mem[_789 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_789 + 288])] = mem[_789 + 320 len floor32(mem[_789 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1325 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _825) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _825) + ceil32(return_data.size) + 324] = arg2
                    mem[(32 * _825) + ceil32(return_data.size) + 356] = _1325
                    mem[(32 * _825) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _825) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _825) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _825) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _825) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1325, Array(len=2, data=mem[(32 * _825) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _825) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _825) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1733 = mem[(32 * _825) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _825) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _825) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _825) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _825) + ceil32(return_data.size) + 320] <= 4294967296 and mem[(32 * _825) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _825) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _825) + ceil32(return_data.size) + 320]) + 32 <= return_data.size
                    mem[(32 * _825) + (2 * ceil32(return_data.size)) + 320] = mem[mem[(32 * _825) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _825) + ceil32(return_data.size) + 320]
                    mem[(32 * _825) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_1733 + (32 * _825) + ceil32(return_data.size) + 320])] = mem[_1733 + (32 * _825) + ceil32(return_data.size) + 352 len floor32(mem[_1733 + (32 * _825) + ceil32(return_data.size) + 320])]
                    require 1 < mem[(32 * _825) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _825) + (2 * ceil32(return_data.size)) + 384] <= _1325:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _825) + (2 * ceil32(return_data.size)) + 384] - _1325
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1325
                else:
                    _791 = mem[288 len 4], Mask(224, 32, arg2) >> 32
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                    _826 = mem[_791 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_791 + 288])] = mem[_791 + 320 len floor32(mem[_791 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1329 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _826) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _826) + ceil32(return_data.size) + 324] = arg2
                    mem[(32 * _826) + ceil32(return_data.size) + 356] = _1329
                    mem[(32 * _826) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _826) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _826) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _826) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _826) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1329, Array(len=2, data=mem[(32 * _826) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _826) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _826) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1735 = mem[(32 * _826) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _826) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _826) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _826) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _826) + ceil32(return_data.size) + 320] <= 4294967296 and mem[(32 * _826) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _826) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _826) + ceil32(return_data.size) + 320]) + 32 <= return_data.size
                    mem[(32 * _826) + (2 * ceil32(return_data.size)) + 320] = mem[mem[(32 * _826) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _826) + ceil32(return_data.size) + 320]
                    mem[(32 * _826) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_1735 + (32 * _826) + ceil32(return_data.size) + 320])] = mem[_1735 + (32 * _826) + ceil32(return_data.size) + 352 len floor32(mem[_1735 + (32 * _826) + ceil32(return_data.size) + 320])]
                    require 1 < mem[(32 * _826) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _826) + (2 * ceil32(return_data.size)) + 384] <= _1329:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _826) + (2 * ceil32(return_data.size)) + 384] - _1329
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1329
            else:
                if not arg2:
                    _793 = mem[288 len 4], Mask(224, 32, arg2) >> 32
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                    _827 = mem[_793 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_793 + 288])] = mem[_793 + 320 len floor32(mem[_793 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1333 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _827) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _827) + ceil32(return_data.size) + 324] = arg2
                    mem[(32 * _827) + ceil32(return_data.size) + 356] = _1333
                    mem[(32 * _827) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _827) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _827) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _827) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _827) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1333, Array(len=2, data=mem[(32 * _827) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _827) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _827) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1737 = mem[(32 * _827) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _827) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _827) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _827) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _827) + ceil32(return_data.size) + 320] <= 4294967296 and mem[(32 * _827) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _827) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _827) + ceil32(return_data.size) + 320]) + 32 <= return_data.size
                    mem[(32 * _827) + (2 * ceil32(return_data.size)) + 320] = mem[mem[(32 * _827) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _827) + ceil32(return_data.size) + 320]
                    mem[(32 * _827) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_1737 + (32 * _827) + ceil32(return_data.size) + 320])] = mem[_1737 + (32 * _827) + ceil32(return_data.size) + 352 len floor32(mem[_1737 + (32 * _827) + ceil32(return_data.size) + 320])]
                    require 1 < mem[(32 * _827) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _827) + (2 * ceil32(return_data.size)) + 384] <= _1333:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _827) + (2 * ceil32(return_data.size)) + 384] - _1333
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1333
                else:
                    _795 = mem[288 len 4], Mask(224, 32, arg2) >> 32
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                    _828 = mem[_795 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_795 + 288])] = mem[_795 + 320 len floor32(mem[_795 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1337 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _828) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _828) + ceil32(return_data.size) + 324] = arg2
                    mem[(32 * _828) + ceil32(return_data.size) + 356] = _1337
                    mem[(32 * _828) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _828) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _828) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _828) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _828) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1337, Array(len=2, data=mem[(32 * _828) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _828) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _828) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1739 = mem[(32 * _828) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _828) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _828) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _828) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _828) + ceil32(return_data.size) + 320] <= 4294967296 and mem[(32 * _828) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _828) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _828) + ceil32(return_data.size) + 320]) + 32 <= return_data.size
                    mem[(32 * _828) + (2 * ceil32(return_data.size)) + 320] = mem[mem[(32 * _828) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _828) + ceil32(return_data.size) + 320]
                    mem[(32 * _828) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_1739 + (32 * _828) + ceil32(return_data.size) + 320])] = mem[_1739 + (32 * _828) + ceil32(return_data.size) + 352 len floor32(mem[_1739 + (32 * _828) + ceil32(return_data.size) + 320])]
                    require 1 < mem[(32 * _828) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _828) + (2 * ceil32(return_data.size)) + 384] <= _1337:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _828) + (2 * ceil32(return_data.size)) + 384] - _1337
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1337
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function pancakeCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
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
    mem[96] = 2
    mem[192] = 2
    mem[160] = address(ext_call.return_data[0])
    mem[224] = address(ext_call.return_data[0])
    mem[128] = address(ext_call.return_data[0])
    mem[256] = address(ext_call.return_data[0])
    require arg4.length >= 64
    if not address(cd[(arg4 + 36)]):
        revert with 0, 'e12'
    if not address(cd[(arg4 + 68)]):
        revert with 0, 'e12'
    require ext_code.size(address(ext_call.return_data[0]))
    if not arg2:
        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(cd[(arg4 + 68)]), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[288] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
        mem[292] = arg3
        mem[324] = 64
        mem[356] = 2
        mem[388 len 0] = None
        require ext_code.size(address(cd[(arg4 + 36)]))
        staticcall address(cd[(arg4 + 36)]).getAmountsIn(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg3, Array(len=2, data=mem[388 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[288 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 288
        require return_data.size >= 32
        if not arg2:
            if not arg2:
                if not arg2:
                    _765 = mem[288 len 4], Mask(224, 32, arg3) >> 32
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                    _813 = mem[_765 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_765 + 288])] = mem[_765 + 320 len floor32(mem[_765 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1277 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _813) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _813) + ceil32(return_data.size) + 324] = arg3
                    mem[(32 * _813) + ceil32(return_data.size) + 356] = _1277
                    mem[(32 * _813) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _813) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _813) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _813) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _813) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1277, Array(len=2, data=mem[(32 * _813) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _813) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _813) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1709 = mem[(32 * _813) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _813) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _813) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _813) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _813) + ceil32(return_data.size) + 320] <= 4294967296 and mem[(32 * _813) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _813) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _813) + ceil32(return_data.size) + 320]) + 32 <= return_data.size
                    mem[(32 * _813) + (2 * ceil32(return_data.size)) + 320] = mem[mem[(32 * _813) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _813) + ceil32(return_data.size) + 320]
                    mem[(32 * _813) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_1709 + (32 * _813) + ceil32(return_data.size) + 320])] = mem[_1709 + (32 * _813) + ceil32(return_data.size) + 352 len floor32(mem[_1709 + (32 * _813) + ceil32(return_data.size) + 320])]
                    require 1 < mem[(32 * _813) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _813) + (2 * ceil32(return_data.size)) + 384] <= _1277:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _813) + (2 * ceil32(return_data.size)) + 384] - _1277
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1277
                else:
                    _767 = mem[288 len 4], Mask(224, 32, arg3) >> 32
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                    _814 = mem[_767 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_767 + 288])] = mem[_767 + 320 len floor32(mem[_767 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1281 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _814) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _814) + ceil32(return_data.size) + 324] = arg3
                    mem[(32 * _814) + ceil32(return_data.size) + 356] = _1281
                    mem[(32 * _814) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _814) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _814) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _814) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _814) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1281, Array(len=2, data=mem[(32 * _814) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _814) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _814) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1711 = mem[(32 * _814) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _814) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _814) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _814) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _814) + ceil32(return_data.size) + 320] <= 4294967296 and mem[(32 * _814) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _814) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _814) + ceil32(return_data.size) + 320]) + 32 <= return_data.size
                    mem[(32 * _814) + (2 * ceil32(return_data.size)) + 320] = mem[mem[(32 * _814) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _814) + ceil32(return_data.size) + 320]
                    mem[(32 * _814) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_1711 + (32 * _814) + ceil32(return_data.size) + 320])] = mem[_1711 + (32 * _814) + ceil32(return_data.size) + 352 len floor32(mem[_1711 + (32 * _814) + ceil32(return_data.size) + 320])]
                    require 1 < mem[(32 * _814) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _814) + (2 * ceil32(return_data.size)) + 384] <= _1281:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _814) + (2 * ceil32(return_data.size)) + 384] - _1281
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1281
            else:
                if not arg2:
                    _769 = mem[288 len 4], Mask(224, 32, arg3) >> 32
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                    _815 = mem[_769 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_769 + 288])] = mem[_769 + 320 len floor32(mem[_769 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1285 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _815) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _815) + ceil32(return_data.size) + 324] = arg3
                    mem[(32 * _815) + ceil32(return_data.size) + 356] = _1285
                    mem[(32 * _815) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _815) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _815) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _815) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _815) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1285, Array(len=2, data=mem[(32 * _815) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _815) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _815) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1713 = mem[(32 * _815) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _815) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _815) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _815) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _815) + ceil32(return_data.size) + 320] <= 4294967296 and mem[(32 * _815) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _815) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _815) + ceil32(return_data.size) + 320]) + 32 <= return_data.size
                    mem[(32 * _815) + (2 * ceil32(return_data.size)) + 320] = mem[mem[(32 * _815) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _815) + ceil32(return_data.size) + 320]
                    mem[(32 * _815) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_1713 + (32 * _815) + ceil32(return_data.size) + 320])] = mem[_1713 + (32 * _815) + ceil32(return_data.size) + 352 len floor32(mem[_1713 + (32 * _815) + ceil32(return_data.size) + 320])]
                    require 1 < mem[(32 * _815) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _815) + (2 * ceil32(return_data.size)) + 384] <= _1285:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _815) + (2 * ceil32(return_data.size)) + 384] - _1285
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1285
                else:
                    _771 = mem[288 len 4], Mask(224, 32, arg3) >> 32
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                    _816 = mem[_771 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_771 + 288])] = mem[_771 + 320 len floor32(mem[_771 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1289 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _816) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _816) + ceil32(return_data.size) + 324] = arg3
                    mem[(32 * _816) + ceil32(return_data.size) + 356] = _1289
                    mem[(32 * _816) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _816) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _816) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _816) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _816) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1289, Array(len=2, data=mem[(32 * _816) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _816) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _816) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1715 = mem[(32 * _816) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _816) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _816) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _816) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _816) + ceil32(return_data.size) + 320] <= 4294967296 and mem[(32 * _816) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _816) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _816) + ceil32(return_data.size) + 320]) + 32 <= return_data.size
                    mem[(32 * _816) + (2 * ceil32(return_data.size)) + 320] = mem[mem[(32 * _816) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _816) + ceil32(return_data.size) + 320]
                    mem[(32 * _816) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_1715 + (32 * _816) + ceil32(return_data.size) + 320])] = mem[_1715 + (32 * _816) + ceil32(return_data.size) + 352 len floor32(mem[_1715 + (32 * _816) + ceil32(return_data.size) + 320])]
                    require 1 < mem[(32 * _816) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _816) + (2 * ceil32(return_data.size)) + 384] <= _1289:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _816) + (2 * ceil32(return_data.size)) + 384] - _1289
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1289
        else:
            if not arg2:
                if not arg2:
                    _773 = mem[288 len 4], Mask(224, 32, arg3) >> 32
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                    _817 = mem[_773 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_773 + 288])] = mem[_773 + 320 len floor32(mem[_773 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1293 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _817) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _817) + ceil32(return_data.size) + 324] = arg3
                    mem[(32 * _817) + ceil32(return_data.size) + 356] = _1293
                    mem[(32 * _817) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _817) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _817) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _817) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _817) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1293, Array(len=2, data=mem[(32 * _817) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _817) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _817) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1717 = mem[(32 * _817) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _817) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _817) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _817) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _817) + ceil32(return_data.size) + 320] <= 4294967296 and mem[(32 * _817) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _817) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _817) + ceil32(return_data.size) + 320]) + 32 <= return_data.size
                    mem[(32 * _817) + (2 * ceil32(return_data.size)) + 320] = mem[mem[(32 * _817) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _817) + ceil32(return_data.size) + 320]
                    mem[(32 * _817) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_1717 + (32 * _817) + ceil32(return_data.size) + 320])] = mem[_1717 + (32 * _817) + ceil32(return_data.size) + 352 len floor32(mem[_1717 + (32 * _817) + ceil32(return_data.size) + 320])]
                    require 1 < mem[(32 * _817) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _817) + (2 * ceil32(return_data.size)) + 384] <= _1293:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _817) + (2 * ceil32(return_data.size)) + 384] - _1293
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1293
                else:
                    _775 = mem[288 len 4], Mask(224, 32, arg3) >> 32
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                    _818 = mem[_775 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_775 + 288])] = mem[_775 + 320 len floor32(mem[_775 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1297 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _818) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _818) + ceil32(return_data.size) + 324] = arg3
                    mem[(32 * _818) + ceil32(return_data.size) + 356] = _1297
                    mem[(32 * _818) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _818) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _818) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _818) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _818) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1297, Array(len=2, data=mem[(32 * _818) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _818) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _818) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1719 = mem[(32 * _818) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _818) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _818) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _818) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _818) + ceil32(return_data.size) + 320] <= 4294967296 and mem[(32 * _818) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _818) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _818) + ceil32(return_data.size) + 320]) + 32 <= return_data.size
                    mem[(32 * _818) + (2 * ceil32(return_data.size)) + 320] = mem[mem[(32 * _818) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _818) + ceil32(return_data.size) + 320]
                    mem[(32 * _818) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_1719 + (32 * _818) + ceil32(return_data.size) + 320])] = mem[_1719 + (32 * _818) + ceil32(return_data.size) + 352 len floor32(mem[_1719 + (32 * _818) + ceil32(return_data.size) + 320])]
                    require 1 < mem[(32 * _818) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _818) + (2 * ceil32(return_data.size)) + 384] <= _1297:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _818) + (2 * ceil32(return_data.size)) + 384] - _1297
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1297
            else:
                if not arg2:
                    _777 = mem[288 len 4], Mask(224, 32, arg3) >> 32
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                    _819 = mem[_777 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_777 + 288])] = mem[_777 + 320 len floor32(mem[_777 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1301 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _819) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _819) + ceil32(return_data.size) + 324] = arg3
                    mem[(32 * _819) + ceil32(return_data.size) + 356] = _1301
                    mem[(32 * _819) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _819) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _819) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _819) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _819) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1301, Array(len=2, data=mem[(32 * _819) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _819) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _819) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1721 = mem[(32 * _819) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _819) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _819) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _819) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _819) + ceil32(return_data.size) + 320] <= 4294967296 and mem[(32 * _819) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _819) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _819) + ceil32(return_data.size) + 320]) + 32 <= return_data.size
                    mem[(32 * _819) + (2 * ceil32(return_data.size)) + 320] = mem[mem[(32 * _819) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _819) + ceil32(return_data.size) + 320]
                    mem[(32 * _819) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_1721 + (32 * _819) + ceil32(return_data.size) + 320])] = mem[_1721 + (32 * _819) + ceil32(return_data.size) + 352 len floor32(mem[_1721 + (32 * _819) + ceil32(return_data.size) + 320])]
                    require 1 < mem[(32 * _819) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _819) + (2 * ceil32(return_data.size)) + 384] <= _1301:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _819) + (2 * ceil32(return_data.size)) + 384] - _1301
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1301
                else:
                    _779 = mem[288 len 4], Mask(224, 32, arg3) >> 32
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                    _820 = mem[_779 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_779 + 288])] = mem[_779 + 320 len floor32(mem[_779 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1305 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _820) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _820) + ceil32(return_data.size) + 324] = arg3
                    mem[(32 * _820) + ceil32(return_data.size) + 356] = _1305
                    mem[(32 * _820) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _820) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _820) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _820) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _820) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1305, Array(len=2, data=mem[(32 * _820) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _820) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _820) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1723 = mem[(32 * _820) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _820) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _820) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _820) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _820) + ceil32(return_data.size) + 320] <= 4294967296 and mem[(32 * _820) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _820) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _820) + ceil32(return_data.size) + 320]) + 32 <= return_data.size
                    mem[(32 * _820) + (2 * ceil32(return_data.size)) + 320] = mem[mem[(32 * _820) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _820) + ceil32(return_data.size) + 320]
                    mem[(32 * _820) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_1723 + (32 * _820) + ceil32(return_data.size) + 320])] = mem[_1723 + (32 * _820) + ceil32(return_data.size) + 352 len floor32(mem[_1723 + (32 * _820) + ceil32(return_data.size) + 320])]
                    require 1 < mem[(32 * _820) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _820) + (2 * ceil32(return_data.size)) + 384] <= _1305:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _820) + (2 * ceil32(return_data.size)) + 384] - _1305
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1305
    else:
        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(cd[(arg4 + 68)]), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[288] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
        mem[292] = arg2
        mem[324] = 64
        mem[356] = 2
        mem[388 len 0] = None
        require ext_code.size(address(cd[(arg4 + 36)]))
        staticcall address(cd[(arg4 + 36)]).getAmountsIn(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg2, Array(len=2, data=mem[388 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[288 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 288
        require return_data.size >= 32
        if not arg2:
            if not arg2:
                if not arg2:
                    _781 = mem[288 len 4], Mask(224, 32, arg2) >> 32
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                    _821 = mem[_781 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_781 + 288])] = mem[_781 + 320 len floor32(mem[_781 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1309 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _821) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _821) + ceil32(return_data.size) + 324] = arg2
                    mem[(32 * _821) + ceil32(return_data.size) + 356] = _1309
                    mem[(32 * _821) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _821) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _821) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _821) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _821) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1309, Array(len=2, data=mem[(32 * _821) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _821) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _821) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1725 = mem[(32 * _821) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _821) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _821) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _821) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _821) + ceil32(return_data.size) + 320] <= 4294967296 and mem[(32 * _821) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _821) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _821) + ceil32(return_data.size) + 320]) + 32 <= return_data.size
                    mem[(32 * _821) + (2 * ceil32(return_data.size)) + 320] = mem[mem[(32 * _821) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _821) + ceil32(return_data.size) + 320]
                    mem[(32 * _821) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_1725 + (32 * _821) + ceil32(return_data.size) + 320])] = mem[_1725 + (32 * _821) + ceil32(return_data.size) + 352 len floor32(mem[_1725 + (32 * _821) + ceil32(return_data.size) + 320])]
                    require 1 < mem[(32 * _821) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _821) + (2 * ceil32(return_data.size)) + 384] <= _1309:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _821) + (2 * ceil32(return_data.size)) + 384] - _1309
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1309
                else:
                    _783 = mem[288 len 4], Mask(224, 32, arg2) >> 32
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                    _822 = mem[_783 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_783 + 288])] = mem[_783 + 320 len floor32(mem[_783 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1313 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _822) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _822) + ceil32(return_data.size) + 324] = arg2
                    mem[(32 * _822) + ceil32(return_data.size) + 356] = _1313
                    mem[(32 * _822) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _822) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _822) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _822) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _822) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1313, Array(len=2, data=mem[(32 * _822) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _822) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _822) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1727 = mem[(32 * _822) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _822) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _822) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _822) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _822) + ceil32(return_data.size) + 320] <= 4294967296 and mem[(32 * _822) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _822) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _822) + ceil32(return_data.size) + 320]) + 32 <= return_data.size
                    mem[(32 * _822) + (2 * ceil32(return_data.size)) + 320] = mem[mem[(32 * _822) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _822) + ceil32(return_data.size) + 320]
                    mem[(32 * _822) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_1727 + (32 * _822) + ceil32(return_data.size) + 320])] = mem[_1727 + (32 * _822) + ceil32(return_data.size) + 352 len floor32(mem[_1727 + (32 * _822) + ceil32(return_data.size) + 320])]
                    require 1 < mem[(32 * _822) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _822) + (2 * ceil32(return_data.size)) + 384] <= _1313:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _822) + (2 * ceil32(return_data.size)) + 384] - _1313
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1313
            else:
                if not arg2:
                    _785 = mem[288 len 4], Mask(224, 32, arg2) >> 32
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                    _823 = mem[_785 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_785 + 288])] = mem[_785 + 320 len floor32(mem[_785 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1317 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _823) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _823) + ceil32(return_data.size) + 324] = arg2
                    mem[(32 * _823) + ceil32(return_data.size) + 356] = _1317
                    mem[(32 * _823) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _823) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _823) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _823) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _823) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1317, Array(len=2, data=mem[(32 * _823) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _823) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _823) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1729 = mem[(32 * _823) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _823) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _823) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _823) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _823) + ceil32(return_data.size) + 320] <= 4294967296 and mem[(32 * _823) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _823) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _823) + ceil32(return_data.size) + 320]) + 32 <= return_data.size
                    mem[(32 * _823) + (2 * ceil32(return_data.size)) + 320] = mem[mem[(32 * _823) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _823) + ceil32(return_data.size) + 320]
                    mem[(32 * _823) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_1729 + (32 * _823) + ceil32(return_data.size) + 320])] = mem[_1729 + (32 * _823) + ceil32(return_data.size) + 352 len floor32(mem[_1729 + (32 * _823) + ceil32(return_data.size) + 320])]
                    require 1 < mem[(32 * _823) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _823) + (2 * ceil32(return_data.size)) + 384] <= _1317:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _823) + (2 * ceil32(return_data.size)) + 384] - _1317
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1317
                else:
                    _787 = mem[288 len 4], Mask(224, 32, arg2) >> 32
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                    _824 = mem[_787 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_787 + 288])] = mem[_787 + 320 len floor32(mem[_787 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1321 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _824) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _824) + ceil32(return_data.size) + 324] = arg2
                    mem[(32 * _824) + ceil32(return_data.size) + 356] = _1321
                    mem[(32 * _824) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _824) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _824) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _824) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _824) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1321, Array(len=2, data=mem[(32 * _824) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _824) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _824) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1731 = mem[(32 * _824) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _824) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _824) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _824) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _824) + ceil32(return_data.size) + 320] <= 4294967296 and mem[(32 * _824) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _824) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _824) + ceil32(return_data.size) + 320]) + 32 <= return_data.size
                    mem[(32 * _824) + (2 * ceil32(return_data.size)) + 320] = mem[mem[(32 * _824) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _824) + ceil32(return_data.size) + 320]
                    mem[(32 * _824) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_1731 + (32 * _824) + ceil32(return_data.size) + 320])] = mem[_1731 + (32 * _824) + ceil32(return_data.size) + 352 len floor32(mem[_1731 + (32 * _824) + ceil32(return_data.size) + 320])]
                    require 1 < mem[(32 * _824) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _824) + (2 * ceil32(return_data.size)) + 384] <= _1321:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _824) + (2 * ceil32(return_data.size)) + 384] - _1321
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1321
        else:
            if not arg2:
                if not arg2:
                    _789 = mem[288 len 4], Mask(224, 32, arg2) >> 32
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                    _825 = mem[_789 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_789 + 288])] = mem[_789 + 320 len floor32(mem[_789 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1325 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _825) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _825) + ceil32(return_data.size) + 324] = arg2
                    mem[(32 * _825) + ceil32(return_data.size) + 356] = _1325
                    mem[(32 * _825) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _825) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _825) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _825) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _825) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1325, Array(len=2, data=mem[(32 * _825) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _825) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _825) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1733 = mem[(32 * _825) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _825) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _825) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _825) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _825) + ceil32(return_data.size) + 320] <= 4294967296 and mem[(32 * _825) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _825) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _825) + ceil32(return_data.size) + 320]) + 32 <= return_data.size
                    mem[(32 * _825) + (2 * ceil32(return_data.size)) + 320] = mem[mem[(32 * _825) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _825) + ceil32(return_data.size) + 320]
                    mem[(32 * _825) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_1733 + (32 * _825) + ceil32(return_data.size) + 320])] = mem[_1733 + (32 * _825) + ceil32(return_data.size) + 352 len floor32(mem[_1733 + (32 * _825) + ceil32(return_data.size) + 320])]
                    require 1 < mem[(32 * _825) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _825) + (2 * ceil32(return_data.size)) + 384] <= _1325:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _825) + (2 * ceil32(return_data.size)) + 384] - _1325
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1325
                else:
                    _791 = mem[288 len 4], Mask(224, 32, arg2) >> 32
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                    _826 = mem[_791 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_791 + 288])] = mem[_791 + 320 len floor32(mem[_791 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1329 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _826) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _826) + ceil32(return_data.size) + 324] = arg2
                    mem[(32 * _826) + ceil32(return_data.size) + 356] = _1329
                    mem[(32 * _826) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _826) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _826) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _826) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _826) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1329, Array(len=2, data=mem[(32 * _826) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _826) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _826) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1735 = mem[(32 * _826) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _826) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _826) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _826) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _826) + ceil32(return_data.size) + 320] <= 4294967296 and mem[(32 * _826) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _826) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _826) + ceil32(return_data.size) + 320]) + 32 <= return_data.size
                    mem[(32 * _826) + (2 * ceil32(return_data.size)) + 320] = mem[mem[(32 * _826) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _826) + ceil32(return_data.size) + 320]
                    mem[(32 * _826) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_1735 + (32 * _826) + ceil32(return_data.size) + 320])] = mem[_1735 + (32 * _826) + ceil32(return_data.size) + 352 len floor32(mem[_1735 + (32 * _826) + ceil32(return_data.size) + 320])]
                    require 1 < mem[(32 * _826) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _826) + (2 * ceil32(return_data.size)) + 384] <= _1329:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _826) + (2 * ceil32(return_data.size)) + 384] - _1329
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1329
            else:
                if not arg2:
                    _793 = mem[288 len 4], Mask(224, 32, arg2) >> 32
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                    _827 = mem[_793 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_793 + 288])] = mem[_793 + 320 len floor32(mem[_793 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1333 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _827) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _827) + ceil32(return_data.size) + 324] = arg2
                    mem[(32 * _827) + ceil32(return_data.size) + 356] = _1333
                    mem[(32 * _827) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _827) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _827) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _827) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _827) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1333, Array(len=2, data=mem[(32 * _827) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _827) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _827) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1737 = mem[(32 * _827) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _827) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _827) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _827) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _827) + ceil32(return_data.size) + 320] <= 4294967296 and mem[(32 * _827) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _827) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _827) + ceil32(return_data.size) + 320]) + 32 <= return_data.size
                    mem[(32 * _827) + (2 * ceil32(return_data.size)) + 320] = mem[mem[(32 * _827) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _827) + ceil32(return_data.size) + 320]
                    mem[(32 * _827) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_1737 + (32 * _827) + ceil32(return_data.size) + 320])] = mem[_1737 + (32 * _827) + ceil32(return_data.size) + 352 len floor32(mem[_1737 + (32 * _827) + ceil32(return_data.size) + 320])]
                    require 1 < mem[(32 * _827) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _827) + (2 * ceil32(return_data.size)) + 384] <= _1333:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _827) + (2 * ceil32(return_data.size)) + 384] - _1333
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1333
                else:
                    _795 = mem[288 len 4], Mask(224, 32, arg2) >> 32
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                    _828 = mem[_795 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_795 + 288])] = mem[_795 + 320 len floor32(mem[_795 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1337 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _828) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _828) + ceil32(return_data.size) + 324] = arg2
                    mem[(32 * _828) + ceil32(return_data.size) + 356] = _1337
                    mem[(32 * _828) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _828) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _828) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _828) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _828) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1337, Array(len=2, data=mem[(32 * _828) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _828) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _828) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1739 = mem[(32 * _828) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _828) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _828) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _828) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _828) + ceil32(return_data.size) + 320] <= 4294967296 and mem[(32 * _828) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _828) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _828) + ceil32(return_data.size) + 320]) + 32 <= return_data.size
                    mem[(32 * _828) + (2 * ceil32(return_data.size)) + 320] = mem[mem[(32 * _828) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _828) + ceil32(return_data.size) + 320]
                    mem[(32 * _828) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_1739 + (32 * _828) + ceil32(return_data.size) + 320])] = mem[_1739 + (32 * _828) + ceil32(return_data.size) + 352 len floor32(mem[_1739 + (32 * _828) + ceil32(return_data.size) + 320])]
                    require 1 < mem[(32 * _828) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _828) + (2 * ceil32(return_data.size)) + 384] <= _1337:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _828) + (2 * ceil32(return_data.size)) + 384] - _1337
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1337
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function uniswapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
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
    mem[96] = 2
    mem[192] = 2
    mem[160] = address(ext_call.return_data[0])
    mem[224] = address(ext_call.return_data[0])
    mem[128] = address(ext_call.return_data[0])
    mem[256] = address(ext_call.return_data[0])
    require arg4.length >= 64
    if not address(cd[(arg4 + 36)]):
        revert with 0, 'e12'
    if not address(cd[(arg4 + 68)]):
        revert with 0, 'e12'
    require ext_code.size(address(ext_call.return_data[0]))
    if not arg2:
        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(cd[(arg4 + 68)]), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[288] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
        mem[292] = arg3
        mem[324] = 64
        mem[356] = 2
        mem[388 len 0] = None
        require ext_code.size(address(cd[(arg4 + 36)]))
        staticcall address(cd[(arg4 + 36)]).getAmountsIn(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg3, Array(len=2, data=mem[388 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[288 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 288
        require return_data.size >= 32
        if not arg2:
            if not arg2:
                if not arg2:
                    _765 = mem[288 len 4], Mask(224, 32, arg3) >> 32
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                    _813 = mem[_765 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_765 + 288])] = mem[_765 + 320 len floor32(mem[_765 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1277 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _813) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _813) + ceil32(return_data.size) + 324] = arg3
                    mem[(32 * _813) + ceil32(return_data.size) + 356] = _1277
                    mem[(32 * _813) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _813) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _813) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _813) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _813) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1277, Array(len=2, data=mem[(32 * _813) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _813) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _813) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1709 = mem[(32 * _813) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _813) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _813) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _813) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _813) + ceil32(return_data.size) + 320] <= 4294967296 and mem[(32 * _813) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _813) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _813) + ceil32(return_data.size) + 320]) + 32 <= return_data.size
                    mem[(32 * _813) + (2 * ceil32(return_data.size)) + 320] = mem[mem[(32 * _813) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _813) + ceil32(return_data.size) + 320]
                    mem[(32 * _813) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_1709 + (32 * _813) + ceil32(return_data.size) + 320])] = mem[_1709 + (32 * _813) + ceil32(return_data.size) + 352 len floor32(mem[_1709 + (32 * _813) + ceil32(return_data.size) + 320])]
                    require 1 < mem[(32 * _813) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _813) + (2 * ceil32(return_data.size)) + 384] <= _1277:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _813) + (2 * ceil32(return_data.size)) + 384] - _1277
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1277
                else:
                    _767 = mem[288 len 4], Mask(224, 32, arg3) >> 32
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                    _814 = mem[_767 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_767 + 288])] = mem[_767 + 320 len floor32(mem[_767 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1281 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _814) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _814) + ceil32(return_data.size) + 324] = arg3
                    mem[(32 * _814) + ceil32(return_data.size) + 356] = _1281
                    mem[(32 * _814) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _814) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _814) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _814) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _814) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1281, Array(len=2, data=mem[(32 * _814) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _814) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _814) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1711 = mem[(32 * _814) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _814) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _814) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _814) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _814) + ceil32(return_data.size) + 320] <= 4294967296 and mem[(32 * _814) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _814) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _814) + ceil32(return_data.size) + 320]) + 32 <= return_data.size
                    mem[(32 * _814) + (2 * ceil32(return_data.size)) + 320] = mem[mem[(32 * _814) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _814) + ceil32(return_data.size) + 320]
                    mem[(32 * _814) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_1711 + (32 * _814) + ceil32(return_data.size) + 320])] = mem[_1711 + (32 * _814) + ceil32(return_data.size) + 352 len floor32(mem[_1711 + (32 * _814) + ceil32(return_data.size) + 320])]
                    require 1 < mem[(32 * _814) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _814) + (2 * ceil32(return_data.size)) + 384] <= _1281:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _814) + (2 * ceil32(return_data.size)) + 384] - _1281
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1281
            else:
                if not arg2:
                    _769 = mem[288 len 4], Mask(224, 32, arg3) >> 32
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                    _815 = mem[_769 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_769 + 288])] = mem[_769 + 320 len floor32(mem[_769 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1285 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _815) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _815) + ceil32(return_data.size) + 324] = arg3
                    mem[(32 * _815) + ceil32(return_data.size) + 356] = _1285
                    mem[(32 * _815) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _815) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _815) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _815) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _815) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1285, Array(len=2, data=mem[(32 * _815) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _815) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _815) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1713 = mem[(32 * _815) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _815) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _815) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _815) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _815) + ceil32(return_data.size) + 320] <= 4294967296 and mem[(32 * _815) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _815) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _815) + ceil32(return_data.size) + 320]) + 32 <= return_data.size
                    mem[(32 * _815) + (2 * ceil32(return_data.size)) + 320] = mem[mem[(32 * _815) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _815) + ceil32(return_data.size) + 320]
                    mem[(32 * _815) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_1713 + (32 * _815) + ceil32(return_data.size) + 320])] = mem[_1713 + (32 * _815) + ceil32(return_data.size) + 352 len floor32(mem[_1713 + (32 * _815) + ceil32(return_data.size) + 320])]
                    require 1 < mem[(32 * _815) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _815) + (2 * ceil32(return_data.size)) + 384] <= _1285:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _815) + (2 * ceil32(return_data.size)) + 384] - _1285
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1285
                else:
                    _771 = mem[288 len 4], Mask(224, 32, arg3) >> 32
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                    _816 = mem[_771 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_771 + 288])] = mem[_771 + 320 len floor32(mem[_771 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1289 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _816) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _816) + ceil32(return_data.size) + 324] = arg3
                    mem[(32 * _816) + ceil32(return_data.size) + 356] = _1289
                    mem[(32 * _816) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _816) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _816) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _816) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _816) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1289, Array(len=2, data=mem[(32 * _816) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _816) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _816) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1715 = mem[(32 * _816) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _816) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _816) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _816) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _816) + ceil32(return_data.size) + 320] <= 4294967296 and mem[(32 * _816) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _816) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _816) + ceil32(return_data.size) + 320]) + 32 <= return_data.size
                    mem[(32 * _816) + (2 * ceil32(return_data.size)) + 320] = mem[mem[(32 * _816) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _816) + ceil32(return_data.size) + 320]
                    mem[(32 * _816) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_1715 + (32 * _816) + ceil32(return_data.size) + 320])] = mem[_1715 + (32 * _816) + ceil32(return_data.size) + 352 len floor32(mem[_1715 + (32 * _816) + ceil32(return_data.size) + 320])]
                    require 1 < mem[(32 * _816) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _816) + (2 * ceil32(return_data.size)) + 384] <= _1289:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _816) + (2 * ceil32(return_data.size)) + 384] - _1289
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1289
        else:
            if not arg2:
                if not arg2:
                    _773 = mem[288 len 4], Mask(224, 32, arg3) >> 32
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                    _817 = mem[_773 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_773 + 288])] = mem[_773 + 320 len floor32(mem[_773 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1293 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _817) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _817) + ceil32(return_data.size) + 324] = arg3
                    mem[(32 * _817) + ceil32(return_data.size) + 356] = _1293
                    mem[(32 * _817) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _817) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _817) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _817) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _817) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1293, Array(len=2, data=mem[(32 * _817) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _817) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _817) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1717 = mem[(32 * _817) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _817) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _817) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _817) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _817) + ceil32(return_data.size) + 320] <= 4294967296 and mem[(32 * _817) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _817) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _817) + ceil32(return_data.size) + 320]) + 32 <= return_data.size
                    mem[(32 * _817) + (2 * ceil32(return_data.size)) + 320] = mem[mem[(32 * _817) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _817) + ceil32(return_data.size) + 320]
                    mem[(32 * _817) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_1717 + (32 * _817) + ceil32(return_data.size) + 320])] = mem[_1717 + (32 * _817) + ceil32(return_data.size) + 352 len floor32(mem[_1717 + (32 * _817) + ceil32(return_data.size) + 320])]
                    require 1 < mem[(32 * _817) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _817) + (2 * ceil32(return_data.size)) + 384] <= _1293:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _817) + (2 * ceil32(return_data.size)) + 384] - _1293
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1293
                else:
                    _775 = mem[288 len 4], Mask(224, 32, arg3) >> 32
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                    _818 = mem[_775 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_775 + 288])] = mem[_775 + 320 len floor32(mem[_775 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1297 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _818) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _818) + ceil32(return_data.size) + 324] = arg3
                    mem[(32 * _818) + ceil32(return_data.size) + 356] = _1297
                    mem[(32 * _818) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _818) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _818) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _818) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _818) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1297, Array(len=2, data=mem[(32 * _818) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _818) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _818) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1719 = mem[(32 * _818) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _818) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _818) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _818) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _818) + ceil32(return_data.size) + 320] <= 4294967296 and mem[(32 * _818) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _818) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _818) + ceil32(return_data.size) + 320]) + 32 <= return_data.size
                    mem[(32 * _818) + (2 * ceil32(return_data.size)) + 320] = mem[mem[(32 * _818) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _818) + ceil32(return_data.size) + 320]
                    mem[(32 * _818) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_1719 + (32 * _818) + ceil32(return_data.size) + 320])] = mem[_1719 + (32 * _818) + ceil32(return_data.size) + 352 len floor32(mem[_1719 + (32 * _818) + ceil32(return_data.size) + 320])]
                    require 1 < mem[(32 * _818) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _818) + (2 * ceil32(return_data.size)) + 384] <= _1297:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _818) + (2 * ceil32(return_data.size)) + 384] - _1297
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1297
            else:
                if not arg2:
                    _777 = mem[288 len 4], Mask(224, 32, arg3) >> 32
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                    _819 = mem[_777 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_777 + 288])] = mem[_777 + 320 len floor32(mem[_777 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1301 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _819) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _819) + ceil32(return_data.size) + 324] = arg3
                    mem[(32 * _819) + ceil32(return_data.size) + 356] = _1301
                    mem[(32 * _819) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _819) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _819) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _819) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _819) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1301, Array(len=2, data=mem[(32 * _819) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _819) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _819) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1721 = mem[(32 * _819) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _819) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _819) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _819) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _819) + ceil32(return_data.size) + 320] <= 4294967296 and mem[(32 * _819) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _819) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _819) + ceil32(return_data.size) + 320]) + 32 <= return_data.size
                    mem[(32 * _819) + (2 * ceil32(return_data.size)) + 320] = mem[mem[(32 * _819) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _819) + ceil32(return_data.size) + 320]
                    mem[(32 * _819) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_1721 + (32 * _819) + ceil32(return_data.size) + 320])] = mem[_1721 + (32 * _819) + ceil32(return_data.size) + 352 len floor32(mem[_1721 + (32 * _819) + ceil32(return_data.size) + 320])]
                    require 1 < mem[(32 * _819) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _819) + (2 * ceil32(return_data.size)) + 384] <= _1301:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _819) + (2 * ceil32(return_data.size)) + 384] - _1301
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1301
                else:
                    _779 = mem[288 len 4], Mask(224, 32, arg3) >> 32
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                    _820 = mem[_779 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_779 + 288])] = mem[_779 + 320 len floor32(mem[_779 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1305 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _820) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _820) + ceil32(return_data.size) + 324] = arg3
                    mem[(32 * _820) + ceil32(return_data.size) + 356] = _1305
                    mem[(32 * _820) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _820) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _820) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _820) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _820) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1305, Array(len=2, data=mem[(32 * _820) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _820) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _820) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1723 = mem[(32 * _820) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _820) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _820) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _820) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _820) + ceil32(return_data.size) + 320] <= 4294967296 and mem[(32 * _820) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _820) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _820) + ceil32(return_data.size) + 320]) + 32 <= return_data.size
                    mem[(32 * _820) + (2 * ceil32(return_data.size)) + 320] = mem[mem[(32 * _820) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _820) + ceil32(return_data.size) + 320]
                    mem[(32 * _820) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_1723 + (32 * _820) + ceil32(return_data.size) + 320])] = mem[_1723 + (32 * _820) + ceil32(return_data.size) + 352 len floor32(mem[_1723 + (32 * _820) + ceil32(return_data.size) + 320])]
                    require 1 < mem[(32 * _820) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _820) + (2 * ceil32(return_data.size)) + 384] <= _1305:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _820) + (2 * ceil32(return_data.size)) + 384] - _1305
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1305
    else:
        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(cd[(arg4 + 68)]), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[288] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
        mem[292] = arg2
        mem[324] = 64
        mem[356] = 2
        mem[388 len 0] = None
        require ext_code.size(address(cd[(arg4 + 36)]))
        staticcall address(cd[(arg4 + 36)]).getAmountsIn(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg2, Array(len=2, data=mem[388 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[288 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 288
        require return_data.size >= 32
        if not arg2:
            if not arg2:
                if not arg2:
                    _781 = mem[288 len 4], Mask(224, 32, arg2) >> 32
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                    _821 = mem[_781 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_781 + 288])] = mem[_781 + 320 len floor32(mem[_781 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1309 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _821) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _821) + ceil32(return_data.size) + 324] = arg2
                    mem[(32 * _821) + ceil32(return_data.size) + 356] = _1309
                    mem[(32 * _821) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _821) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _821) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _821) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _821) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1309, Array(len=2, data=mem[(32 * _821) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _821) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _821) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1725 = mem[(32 * _821) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _821) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _821) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _821) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _821) + ceil32(return_data.size) + 320] <= 4294967296 and mem[(32 * _821) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _821) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _821) + ceil32(return_data.size) + 320]) + 32 <= return_data.size
                    mem[(32 * _821) + (2 * ceil32(return_data.size)) + 320] = mem[mem[(32 * _821) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _821) + ceil32(return_data.size) + 320]
                    mem[(32 * _821) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_1725 + (32 * _821) + ceil32(return_data.size) + 320])] = mem[_1725 + (32 * _821) + ceil32(return_data.size) + 352 len floor32(mem[_1725 + (32 * _821) + ceil32(return_data.size) + 320])]
                    require 1 < mem[(32 * _821) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _821) + (2 * ceil32(return_data.size)) + 384] <= _1309:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _821) + (2 * ceil32(return_data.size)) + 384] - _1309
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1309
                else:
                    _783 = mem[288 len 4], Mask(224, 32, arg2) >> 32
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                    _822 = mem[_783 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_783 + 288])] = mem[_783 + 320 len floor32(mem[_783 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1313 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _822) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _822) + ceil32(return_data.size) + 324] = arg2
                    mem[(32 * _822) + ceil32(return_data.size) + 356] = _1313
                    mem[(32 * _822) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _822) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _822) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _822) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _822) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1313, Array(len=2, data=mem[(32 * _822) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _822) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _822) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1727 = mem[(32 * _822) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _822) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _822) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _822) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _822) + ceil32(return_data.size) + 320] <= 4294967296 and mem[(32 * _822) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _822) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _822) + ceil32(return_data.size) + 320]) + 32 <= return_data.size
                    mem[(32 * _822) + (2 * ceil32(return_data.size)) + 320] = mem[mem[(32 * _822) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _822) + ceil32(return_data.size) + 320]
                    mem[(32 * _822) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_1727 + (32 * _822) + ceil32(return_data.size) + 320])] = mem[_1727 + (32 * _822) + ceil32(return_data.size) + 352 len floor32(mem[_1727 + (32 * _822) + ceil32(return_data.size) + 320])]
                    require 1 < mem[(32 * _822) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _822) + (2 * ceil32(return_data.size)) + 384] <= _1313:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _822) + (2 * ceil32(return_data.size)) + 384] - _1313
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1313
            else:
                if not arg2:
                    _785 = mem[288 len 4], Mask(224, 32, arg2) >> 32
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                    _823 = mem[_785 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_785 + 288])] = mem[_785 + 320 len floor32(mem[_785 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1317 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _823) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _823) + ceil32(return_data.size) + 324] = arg2
                    mem[(32 * _823) + ceil32(return_data.size) + 356] = _1317
                    mem[(32 * _823) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _823) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _823) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _823) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _823) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1317, Array(len=2, data=mem[(32 * _823) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _823) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _823) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1729 = mem[(32 * _823) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _823) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _823) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _823) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _823) + ceil32(return_data.size) + 320] <= 4294967296 and mem[(32 * _823) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _823) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _823) + ceil32(return_data.size) + 320]) + 32 <= return_data.size
                    mem[(32 * _823) + (2 * ceil32(return_data.size)) + 320] = mem[mem[(32 * _823) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _823) + ceil32(return_data.size) + 320]
                    mem[(32 * _823) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_1729 + (32 * _823) + ceil32(return_data.size) + 320])] = mem[_1729 + (32 * _823) + ceil32(return_data.size) + 352 len floor32(mem[_1729 + (32 * _823) + ceil32(return_data.size) + 320])]
                    require 1 < mem[(32 * _823) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _823) + (2 * ceil32(return_data.size)) + 384] <= _1317:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _823) + (2 * ceil32(return_data.size)) + 384] - _1317
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1317
                else:
                    _787 = mem[288 len 4], Mask(224, 32, arg2) >> 32
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                    _824 = mem[_787 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_787 + 288])] = mem[_787 + 320 len floor32(mem[_787 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1321 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _824) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _824) + ceil32(return_data.size) + 324] = arg2
                    mem[(32 * _824) + ceil32(return_data.size) + 356] = _1321
                    mem[(32 * _824) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _824) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _824) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _824) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _824) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1321, Array(len=2, data=mem[(32 * _824) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _824) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _824) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1731 = mem[(32 * _824) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _824) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _824) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _824) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _824) + ceil32(return_data.size) + 320] <= 4294967296 and mem[(32 * _824) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _824) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _824) + ceil32(return_data.size) + 320]) + 32 <= return_data.size
                    mem[(32 * _824) + (2 * ceil32(return_data.size)) + 320] = mem[mem[(32 * _824) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _824) + ceil32(return_data.size) + 320]
                    mem[(32 * _824) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_1731 + (32 * _824) + ceil32(return_data.size) + 320])] = mem[_1731 + (32 * _824) + ceil32(return_data.size) + 352 len floor32(mem[_1731 + (32 * _824) + ceil32(return_data.size) + 320])]
                    require 1 < mem[(32 * _824) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _824) + (2 * ceil32(return_data.size)) + 384] <= _1321:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _824) + (2 * ceil32(return_data.size)) + 384] - _1321
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1321
        else:
            if not arg2:
                if not arg2:
                    _789 = mem[288 len 4], Mask(224, 32, arg2) >> 32
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                    _825 = mem[_789 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_789 + 288])] = mem[_789 + 320 len floor32(mem[_789 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1325 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _825) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _825) + ceil32(return_data.size) + 324] = arg2
                    mem[(32 * _825) + ceil32(return_data.size) + 356] = _1325
                    mem[(32 * _825) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _825) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _825) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _825) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _825) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1325, Array(len=2, data=mem[(32 * _825) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _825) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _825) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1733 = mem[(32 * _825) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _825) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _825) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _825) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _825) + ceil32(return_data.size) + 320] <= 4294967296 and mem[(32 * _825) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _825) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _825) + ceil32(return_data.size) + 320]) + 32 <= return_data.size
                    mem[(32 * _825) + (2 * ceil32(return_data.size)) + 320] = mem[mem[(32 * _825) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _825) + ceil32(return_data.size) + 320]
                    mem[(32 * _825) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_1733 + (32 * _825) + ceil32(return_data.size) + 320])] = mem[_1733 + (32 * _825) + ceil32(return_data.size) + 352 len floor32(mem[_1733 + (32 * _825) + ceil32(return_data.size) + 320])]
                    require 1 < mem[(32 * _825) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _825) + (2 * ceil32(return_data.size)) + 384] <= _1325:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _825) + (2 * ceil32(return_data.size)) + 384] - _1325
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1325
                else:
                    _791 = mem[288 len 4], Mask(224, 32, arg2) >> 32
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                    _826 = mem[_791 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_791 + 288])] = mem[_791 + 320 len floor32(mem[_791 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1329 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _826) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _826) + ceil32(return_data.size) + 324] = arg2
                    mem[(32 * _826) + ceil32(return_data.size) + 356] = _1329
                    mem[(32 * _826) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _826) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _826) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _826) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _826) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1329, Array(len=2, data=mem[(32 * _826) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _826) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _826) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1735 = mem[(32 * _826) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _826) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _826) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _826) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _826) + ceil32(return_data.size) + 320] <= 4294967296 and mem[(32 * _826) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _826) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _826) + ceil32(return_data.size) + 320]) + 32 <= return_data.size
                    mem[(32 * _826) + (2 * ceil32(return_data.size)) + 320] = mem[mem[(32 * _826) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _826) + ceil32(return_data.size) + 320]
                    mem[(32 * _826) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_1735 + (32 * _826) + ceil32(return_data.size) + 320])] = mem[_1735 + (32 * _826) + ceil32(return_data.size) + 352 len floor32(mem[_1735 + (32 * _826) + ceil32(return_data.size) + 320])]
                    require 1 < mem[(32 * _826) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _826) + (2 * ceil32(return_data.size)) + 384] <= _1329:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _826) + (2 * ceil32(return_data.size)) + 384] - _1329
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1329
            else:
                if not arg2:
                    _793 = mem[288 len 4], Mask(224, 32, arg2) >> 32
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                    _827 = mem[_793 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_793 + 288])] = mem[_793 + 320 len floor32(mem[_793 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1333 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _827) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _827) + ceil32(return_data.size) + 324] = arg2
                    mem[(32 * _827) + ceil32(return_data.size) + 356] = _1333
                    mem[(32 * _827) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _827) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _827) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _827) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _827) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1333, Array(len=2, data=mem[(32 * _827) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _827) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _827) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1737 = mem[(32 * _827) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _827) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _827) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _827) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _827) + ceil32(return_data.size) + 320] <= 4294967296 and mem[(32 * _827) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _827) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _827) + ceil32(return_data.size) + 320]) + 32 <= return_data.size
                    mem[(32 * _827) + (2 * ceil32(return_data.size)) + 320] = mem[mem[(32 * _827) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _827) + ceil32(return_data.size) + 320]
                    mem[(32 * _827) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_1737 + (32 * _827) + ceil32(return_data.size) + 320])] = mem[_1737 + (32 * _827) + ceil32(return_data.size) + 352 len floor32(mem[_1737 + (32 * _827) + ceil32(return_data.size) + 320])]
                    require 1 < mem[(32 * _827) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _827) + (2 * ceil32(return_data.size)) + 384] <= _1333:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _827) + (2 * ceil32(return_data.size)) + 384] - _1333
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1333
                else:
                    _795 = mem[288 len 4], Mask(224, 32, arg2) >> 32
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                    _828 = mem[_795 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_795 + 288])] = mem[_795 + 320 len floor32(mem[_795 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1337 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _828) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _828) + ceil32(return_data.size) + 324] = arg2
                    mem[(32 * _828) + ceil32(return_data.size) + 356] = _1337
                    mem[(32 * _828) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _828) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _828) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _828) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _828) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1337, Array(len=2, data=mem[(32 * _828) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _828) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _828) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1739 = mem[(32 * _828) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _828) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _828) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _828) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _828) + ceil32(return_data.size) + 320] <= 4294967296 and mem[(32 * _828) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _828) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _828) + ceil32(return_data.size) + 320]) + 32 <= return_data.size
                    mem[(32 * _828) + (2 * ceil32(return_data.size)) + 320] = mem[mem[(32 * _828) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _828) + ceil32(return_data.size) + 320]
                    mem[(32 * _828) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_1739 + (32 * _828) + ceil32(return_data.size) + 320])] = mem[_1739 + (32 * _828) + ceil32(return_data.size) + 352 len floor32(mem[_1739 + (32 * _828) + ceil32(return_data.size) + 320])]
                    require 1 < mem[(32 * _828) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _828) + (2 * ceil32(return_data.size)) + 384] <= _1337:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _828) + (2 * ceil32(return_data.size)) + 384] - _1337
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1337
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function waultSwapCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
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
    mem[96] = 2
    mem[192] = 2
    mem[160] = address(ext_call.return_data[0])
    mem[224] = address(ext_call.return_data[0])
    mem[128] = address(ext_call.return_data[0])
    mem[256] = address(ext_call.return_data[0])
    require arg4.length >= 64
    if not address(cd[(arg4 + 36)]):
        revert with 0, 'e12'
    if not address(cd[(arg4 + 68)]):
        revert with 0, 'e12'
    require ext_code.size(address(ext_call.return_data[0]))
    if not arg2:
        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(cd[(arg4 + 68)]), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[288] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
        mem[292] = arg3
        mem[324] = 64
        mem[356] = 2
        mem[388 len 0] = None
        require ext_code.size(address(cd[(arg4 + 36)]))
        staticcall address(cd[(arg4 + 36)]).getAmountsIn(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg3, Array(len=2, data=mem[388 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[288 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 288
        require return_data.size >= 32
        if not arg2:
            if not arg2:
                if not arg2:
                    _765 = mem[288 len 4], Mask(224, 32, arg3) >> 32
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                    _813 = mem[_765 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_765 + 288])] = mem[_765 + 320 len floor32(mem[_765 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1277 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _813) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _813) + ceil32(return_data.size) + 324] = arg3
                    mem[(32 * _813) + ceil32(return_data.size) + 356] = _1277
                    mem[(32 * _813) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _813) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _813) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _813) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _813) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1277, Array(len=2, data=mem[(32 * _813) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _813) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _813) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1709 = mem[(32 * _813) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _813) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _813) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _813) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _813) + ceil32(return_data.size) + 320] <= 4294967296 and mem[(32 * _813) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _813) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _813) + ceil32(return_data.size) + 320]) + 32 <= return_data.size
                    mem[(32 * _813) + (2 * ceil32(return_data.size)) + 320] = mem[mem[(32 * _813) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _813) + ceil32(return_data.size) + 320]
                    mem[(32 * _813) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_1709 + (32 * _813) + ceil32(return_data.size) + 320])] = mem[_1709 + (32 * _813) + ceil32(return_data.size) + 352 len floor32(mem[_1709 + (32 * _813) + ceil32(return_data.size) + 320])]
                    require 1 < mem[(32 * _813) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _813) + (2 * ceil32(return_data.size)) + 384] <= _1277:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _813) + (2 * ceil32(return_data.size)) + 384] - _1277
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1277
                else:
                    _767 = mem[288 len 4], Mask(224, 32, arg3) >> 32
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                    _814 = mem[_767 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_767 + 288])] = mem[_767 + 320 len floor32(mem[_767 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1281 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _814) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _814) + ceil32(return_data.size) + 324] = arg3
                    mem[(32 * _814) + ceil32(return_data.size) + 356] = _1281
                    mem[(32 * _814) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _814) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _814) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _814) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _814) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1281, Array(len=2, data=mem[(32 * _814) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _814) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _814) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1711 = mem[(32 * _814) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _814) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _814) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _814) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _814) + ceil32(return_data.size) + 320] <= 4294967296 and mem[(32 * _814) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _814) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _814) + ceil32(return_data.size) + 320]) + 32 <= return_data.size
                    mem[(32 * _814) + (2 * ceil32(return_data.size)) + 320] = mem[mem[(32 * _814) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _814) + ceil32(return_data.size) + 320]
                    mem[(32 * _814) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_1711 + (32 * _814) + ceil32(return_data.size) + 320])] = mem[_1711 + (32 * _814) + ceil32(return_data.size) + 352 len floor32(mem[_1711 + (32 * _814) + ceil32(return_data.size) + 320])]
                    require 1 < mem[(32 * _814) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _814) + (2 * ceil32(return_data.size)) + 384] <= _1281:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _814) + (2 * ceil32(return_data.size)) + 384] - _1281
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1281
            else:
                if not arg2:
                    _769 = mem[288 len 4], Mask(224, 32, arg3) >> 32
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                    _815 = mem[_769 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_769 + 288])] = mem[_769 + 320 len floor32(mem[_769 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1285 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _815) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _815) + ceil32(return_data.size) + 324] = arg3
                    mem[(32 * _815) + ceil32(return_data.size) + 356] = _1285
                    mem[(32 * _815) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _815) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _815) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _815) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _815) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1285, Array(len=2, data=mem[(32 * _815) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _815) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _815) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1713 = mem[(32 * _815) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _815) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _815) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _815) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _815) + ceil32(return_data.size) + 320] <= 4294967296 and mem[(32 * _815) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _815) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _815) + ceil32(return_data.size) + 320]) + 32 <= return_data.size
                    mem[(32 * _815) + (2 * ceil32(return_data.size)) + 320] = mem[mem[(32 * _815) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _815) + ceil32(return_data.size) + 320]
                    mem[(32 * _815) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_1713 + (32 * _815) + ceil32(return_data.size) + 320])] = mem[_1713 + (32 * _815) + ceil32(return_data.size) + 352 len floor32(mem[_1713 + (32 * _815) + ceil32(return_data.size) + 320])]
                    require 1 < mem[(32 * _815) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _815) + (2 * ceil32(return_data.size)) + 384] <= _1285:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _815) + (2 * ceil32(return_data.size)) + 384] - _1285
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1285
                else:
                    _771 = mem[288 len 4], Mask(224, 32, arg3) >> 32
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                    _816 = mem[_771 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_771 + 288])] = mem[_771 + 320 len floor32(mem[_771 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1289 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _816) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _816) + ceil32(return_data.size) + 324] = arg3
                    mem[(32 * _816) + ceil32(return_data.size) + 356] = _1289
                    mem[(32 * _816) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _816) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _816) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _816) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _816) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1289, Array(len=2, data=mem[(32 * _816) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _816) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _816) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1715 = mem[(32 * _816) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _816) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _816) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _816) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _816) + ceil32(return_data.size) + 320] <= 4294967296 and mem[(32 * _816) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _816) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _816) + ceil32(return_data.size) + 320]) + 32 <= return_data.size
                    mem[(32 * _816) + (2 * ceil32(return_data.size)) + 320] = mem[mem[(32 * _816) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _816) + ceil32(return_data.size) + 320]
                    mem[(32 * _816) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_1715 + (32 * _816) + ceil32(return_data.size) + 320])] = mem[_1715 + (32 * _816) + ceil32(return_data.size) + 352 len floor32(mem[_1715 + (32 * _816) + ceil32(return_data.size) + 320])]
                    require 1 < mem[(32 * _816) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _816) + (2 * ceil32(return_data.size)) + 384] <= _1289:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _816) + (2 * ceil32(return_data.size)) + 384] - _1289
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1289
        else:
            if not arg2:
                if not arg2:
                    _773 = mem[288 len 4], Mask(224, 32, arg3) >> 32
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                    _817 = mem[_773 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_773 + 288])] = mem[_773 + 320 len floor32(mem[_773 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1293 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _817) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _817) + ceil32(return_data.size) + 324] = arg3
                    mem[(32 * _817) + ceil32(return_data.size) + 356] = _1293
                    mem[(32 * _817) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _817) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _817) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _817) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _817) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1293, Array(len=2, data=mem[(32 * _817) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _817) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _817) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1717 = mem[(32 * _817) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _817) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _817) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _817) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _817) + ceil32(return_data.size) + 320] <= 4294967296 and mem[(32 * _817) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _817) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _817) + ceil32(return_data.size) + 320]) + 32 <= return_data.size
                    mem[(32 * _817) + (2 * ceil32(return_data.size)) + 320] = mem[mem[(32 * _817) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _817) + ceil32(return_data.size) + 320]
                    mem[(32 * _817) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_1717 + (32 * _817) + ceil32(return_data.size) + 320])] = mem[_1717 + (32 * _817) + ceil32(return_data.size) + 352 len floor32(mem[_1717 + (32 * _817) + ceil32(return_data.size) + 320])]
                    require 1 < mem[(32 * _817) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _817) + (2 * ceil32(return_data.size)) + 384] <= _1293:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _817) + (2 * ceil32(return_data.size)) + 384] - _1293
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1293
                else:
                    _775 = mem[288 len 4], Mask(224, 32, arg3) >> 32
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                    _818 = mem[_775 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_775 + 288])] = mem[_775 + 320 len floor32(mem[_775 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1297 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _818) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _818) + ceil32(return_data.size) + 324] = arg3
                    mem[(32 * _818) + ceil32(return_data.size) + 356] = _1297
                    mem[(32 * _818) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _818) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _818) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _818) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _818) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1297, Array(len=2, data=mem[(32 * _818) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _818) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _818) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1719 = mem[(32 * _818) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _818) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _818) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _818) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _818) + ceil32(return_data.size) + 320] <= 4294967296 and mem[(32 * _818) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _818) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _818) + ceil32(return_data.size) + 320]) + 32 <= return_data.size
                    mem[(32 * _818) + (2 * ceil32(return_data.size)) + 320] = mem[mem[(32 * _818) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _818) + ceil32(return_data.size) + 320]
                    mem[(32 * _818) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_1719 + (32 * _818) + ceil32(return_data.size) + 320])] = mem[_1719 + (32 * _818) + ceil32(return_data.size) + 352 len floor32(mem[_1719 + (32 * _818) + ceil32(return_data.size) + 320])]
                    require 1 < mem[(32 * _818) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _818) + (2 * ceil32(return_data.size)) + 384] <= _1297:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _818) + (2 * ceil32(return_data.size)) + 384] - _1297
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1297
            else:
                if not arg2:
                    _777 = mem[288 len 4], Mask(224, 32, arg3) >> 32
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                    _819 = mem[_777 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_777 + 288])] = mem[_777 + 320 len floor32(mem[_777 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1301 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _819) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _819) + ceil32(return_data.size) + 324] = arg3
                    mem[(32 * _819) + ceil32(return_data.size) + 356] = _1301
                    mem[(32 * _819) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _819) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _819) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _819) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _819) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1301, Array(len=2, data=mem[(32 * _819) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _819) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _819) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1721 = mem[(32 * _819) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _819) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _819) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _819) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _819) + ceil32(return_data.size) + 320] <= 4294967296 and mem[(32 * _819) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _819) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _819) + ceil32(return_data.size) + 320]) + 32 <= return_data.size
                    mem[(32 * _819) + (2 * ceil32(return_data.size)) + 320] = mem[mem[(32 * _819) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _819) + ceil32(return_data.size) + 320]
                    mem[(32 * _819) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_1721 + (32 * _819) + ceil32(return_data.size) + 320])] = mem[_1721 + (32 * _819) + ceil32(return_data.size) + 352 len floor32(mem[_1721 + (32 * _819) + ceil32(return_data.size) + 320])]
                    require 1 < mem[(32 * _819) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _819) + (2 * ceil32(return_data.size)) + 384] <= _1301:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _819) + (2 * ceil32(return_data.size)) + 384] - _1301
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1301
                else:
                    _779 = mem[288 len 4], Mask(224, 32, arg3) >> 32
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                    _820 = mem[_779 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_779 + 288])] = mem[_779 + 320 len floor32(mem[_779 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1305 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _820) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _820) + ceil32(return_data.size) + 324] = arg3
                    mem[(32 * _820) + ceil32(return_data.size) + 356] = _1305
                    mem[(32 * _820) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _820) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _820) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _820) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _820) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1305, Array(len=2, data=mem[(32 * _820) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _820) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _820) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1723 = mem[(32 * _820) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _820) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _820) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _820) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _820) + ceil32(return_data.size) + 320] <= 4294967296 and mem[(32 * _820) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _820) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _820) + ceil32(return_data.size) + 320]) + 32 <= return_data.size
                    mem[(32 * _820) + (2 * ceil32(return_data.size)) + 320] = mem[mem[(32 * _820) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _820) + ceil32(return_data.size) + 320]
                    mem[(32 * _820) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_1723 + (32 * _820) + ceil32(return_data.size) + 320])] = mem[_1723 + (32 * _820) + ceil32(return_data.size) + 352 len floor32(mem[_1723 + (32 * _820) + ceil32(return_data.size) + 320])]
                    require 1 < mem[(32 * _820) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _820) + (2 * ceil32(return_data.size)) + 384] <= _1305:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _820) + (2 * ceil32(return_data.size)) + 384] - _1305
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1305
    else:
        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(cd[(arg4 + 68)]), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[288] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
        mem[292] = arg2
        mem[324] = 64
        mem[356] = 2
        mem[388 len 0] = None
        require ext_code.size(address(cd[(arg4 + 36)]))
        staticcall address(cd[(arg4 + 36)]).getAmountsIn(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg2, Array(len=2, data=mem[388 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[288 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 288
        require return_data.size >= 32
        if not arg2:
            if not arg2:
                if not arg2:
                    _781 = mem[288 len 4], Mask(224, 32, arg2) >> 32
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                    _821 = mem[_781 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_781 + 288])] = mem[_781 + 320 len floor32(mem[_781 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1309 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _821) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _821) + ceil32(return_data.size) + 324] = arg2
                    mem[(32 * _821) + ceil32(return_data.size) + 356] = _1309
                    mem[(32 * _821) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _821) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _821) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _821) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _821) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1309, Array(len=2, data=mem[(32 * _821) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _821) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _821) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1725 = mem[(32 * _821) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _821) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _821) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _821) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _821) + ceil32(return_data.size) + 320] <= 4294967296 and mem[(32 * _821) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _821) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _821) + ceil32(return_data.size) + 320]) + 32 <= return_data.size
                    mem[(32 * _821) + (2 * ceil32(return_data.size)) + 320] = mem[mem[(32 * _821) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _821) + ceil32(return_data.size) + 320]
                    mem[(32 * _821) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_1725 + (32 * _821) + ceil32(return_data.size) + 320])] = mem[_1725 + (32 * _821) + ceil32(return_data.size) + 352 len floor32(mem[_1725 + (32 * _821) + ceil32(return_data.size) + 320])]
                    require 1 < mem[(32 * _821) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _821) + (2 * ceil32(return_data.size)) + 384] <= _1309:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _821) + (2 * ceil32(return_data.size)) + 384] - _1309
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1309
                else:
                    _783 = mem[288 len 4], Mask(224, 32, arg2) >> 32
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                    _822 = mem[_783 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_783 + 288])] = mem[_783 + 320 len floor32(mem[_783 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1313 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _822) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _822) + ceil32(return_data.size) + 324] = arg2
                    mem[(32 * _822) + ceil32(return_data.size) + 356] = _1313
                    mem[(32 * _822) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _822) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _822) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _822) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _822) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1313, Array(len=2, data=mem[(32 * _822) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _822) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _822) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1727 = mem[(32 * _822) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _822) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _822) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _822) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _822) + ceil32(return_data.size) + 320] <= 4294967296 and mem[(32 * _822) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _822) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _822) + ceil32(return_data.size) + 320]) + 32 <= return_data.size
                    mem[(32 * _822) + (2 * ceil32(return_data.size)) + 320] = mem[mem[(32 * _822) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _822) + ceil32(return_data.size) + 320]
                    mem[(32 * _822) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_1727 + (32 * _822) + ceil32(return_data.size) + 320])] = mem[_1727 + (32 * _822) + ceil32(return_data.size) + 352 len floor32(mem[_1727 + (32 * _822) + ceil32(return_data.size) + 320])]
                    require 1 < mem[(32 * _822) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _822) + (2 * ceil32(return_data.size)) + 384] <= _1313:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _822) + (2 * ceil32(return_data.size)) + 384] - _1313
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1313
            else:
                if not arg2:
                    _785 = mem[288 len 4], Mask(224, 32, arg2) >> 32
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                    _823 = mem[_785 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_785 + 288])] = mem[_785 + 320 len floor32(mem[_785 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1317 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _823) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _823) + ceil32(return_data.size) + 324] = arg2
                    mem[(32 * _823) + ceil32(return_data.size) + 356] = _1317
                    mem[(32 * _823) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _823) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _823) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _823) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _823) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1317, Array(len=2, data=mem[(32 * _823) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _823) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _823) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1729 = mem[(32 * _823) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _823) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _823) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _823) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _823) + ceil32(return_data.size) + 320] <= 4294967296 and mem[(32 * _823) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _823) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _823) + ceil32(return_data.size) + 320]) + 32 <= return_data.size
                    mem[(32 * _823) + (2 * ceil32(return_data.size)) + 320] = mem[mem[(32 * _823) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _823) + ceil32(return_data.size) + 320]
                    mem[(32 * _823) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_1729 + (32 * _823) + ceil32(return_data.size) + 320])] = mem[_1729 + (32 * _823) + ceil32(return_data.size) + 352 len floor32(mem[_1729 + (32 * _823) + ceil32(return_data.size) + 320])]
                    require 1 < mem[(32 * _823) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _823) + (2 * ceil32(return_data.size)) + 384] <= _1317:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _823) + (2 * ceil32(return_data.size)) + 384] - _1317
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1317
                else:
                    _787 = mem[288 len 4], Mask(224, 32, arg2) >> 32
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                    _824 = mem[_787 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_787 + 288])] = mem[_787 + 320 len floor32(mem[_787 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1321 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _824) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _824) + ceil32(return_data.size) + 324] = arg2
                    mem[(32 * _824) + ceil32(return_data.size) + 356] = _1321
                    mem[(32 * _824) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _824) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _824) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _824) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _824) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1321, Array(len=2, data=mem[(32 * _824) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _824) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _824) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1731 = mem[(32 * _824) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _824) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _824) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _824) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _824) + ceil32(return_data.size) + 320] <= 4294967296 and mem[(32 * _824) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _824) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _824) + ceil32(return_data.size) + 320]) + 32 <= return_data.size
                    mem[(32 * _824) + (2 * ceil32(return_data.size)) + 320] = mem[mem[(32 * _824) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _824) + ceil32(return_data.size) + 320]
                    mem[(32 * _824) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_1731 + (32 * _824) + ceil32(return_data.size) + 320])] = mem[_1731 + (32 * _824) + ceil32(return_data.size) + 352 len floor32(mem[_1731 + (32 * _824) + ceil32(return_data.size) + 320])]
                    require 1 < mem[(32 * _824) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _824) + (2 * ceil32(return_data.size)) + 384] <= _1321:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _824) + (2 * ceil32(return_data.size)) + 384] - _1321
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1321
        else:
            if not arg2:
                if not arg2:
                    _789 = mem[288 len 4], Mask(224, 32, arg2) >> 32
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                    _825 = mem[_789 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_789 + 288])] = mem[_789 + 320 len floor32(mem[_789 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1325 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _825) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _825) + ceil32(return_data.size) + 324] = arg2
                    mem[(32 * _825) + ceil32(return_data.size) + 356] = _1325
                    mem[(32 * _825) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _825) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _825) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _825) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _825) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1325, Array(len=2, data=mem[(32 * _825) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _825) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _825) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1733 = mem[(32 * _825) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _825) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _825) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _825) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _825) + ceil32(return_data.size) + 320] <= 4294967296 and mem[(32 * _825) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _825) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _825) + ceil32(return_data.size) + 320]) + 32 <= return_data.size
                    mem[(32 * _825) + (2 * ceil32(return_data.size)) + 320] = mem[mem[(32 * _825) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _825) + ceil32(return_data.size) + 320]
                    mem[(32 * _825) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_1733 + (32 * _825) + ceil32(return_data.size) + 320])] = mem[_1733 + (32 * _825) + ceil32(return_data.size) + 352 len floor32(mem[_1733 + (32 * _825) + ceil32(return_data.size) + 320])]
                    require 1 < mem[(32 * _825) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _825) + (2 * ceil32(return_data.size)) + 384] <= _1325:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _825) + (2 * ceil32(return_data.size)) + 384] - _1325
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1325
                else:
                    _791 = mem[288 len 4], Mask(224, 32, arg2) >> 32
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                    _826 = mem[_791 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_791 + 288])] = mem[_791 + 320 len floor32(mem[_791 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1329 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _826) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _826) + ceil32(return_data.size) + 324] = arg2
                    mem[(32 * _826) + ceil32(return_data.size) + 356] = _1329
                    mem[(32 * _826) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _826) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _826) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _826) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _826) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1329, Array(len=2, data=mem[(32 * _826) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _826) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _826) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1735 = mem[(32 * _826) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _826) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _826) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _826) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _826) + ceil32(return_data.size) + 320] <= 4294967296 and mem[(32 * _826) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _826) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _826) + ceil32(return_data.size) + 320]) + 32 <= return_data.size
                    mem[(32 * _826) + (2 * ceil32(return_data.size)) + 320] = mem[mem[(32 * _826) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _826) + ceil32(return_data.size) + 320]
                    mem[(32 * _826) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_1735 + (32 * _826) + ceil32(return_data.size) + 320])] = mem[_1735 + (32 * _826) + ceil32(return_data.size) + 352 len floor32(mem[_1735 + (32 * _826) + ceil32(return_data.size) + 320])]
                    require 1 < mem[(32 * _826) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _826) + (2 * ceil32(return_data.size)) + 384] <= _1329:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _826) + (2 * ceil32(return_data.size)) + 384] - _1329
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1329
            else:
                if not arg2:
                    _793 = mem[288 len 4], Mask(224, 32, arg2) >> 32
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                    _827 = mem[_793 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_793 + 288])] = mem[_793 + 320 len floor32(mem[_793 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1333 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _827) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _827) + ceil32(return_data.size) + 324] = arg2
                    mem[(32 * _827) + ceil32(return_data.size) + 356] = _1333
                    mem[(32 * _827) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _827) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _827) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _827) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _827) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1333, Array(len=2, data=mem[(32 * _827) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _827) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _827) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1737 = mem[(32 * _827) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _827) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _827) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _827) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _827) + ceil32(return_data.size) + 320] <= 4294967296 and mem[(32 * _827) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _827) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _827) + ceil32(return_data.size) + 320]) + 32 <= return_data.size
                    mem[(32 * _827) + (2 * ceil32(return_data.size)) + 320] = mem[mem[(32 * _827) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _827) + ceil32(return_data.size) + 320]
                    mem[(32 * _827) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_1737 + (32 * _827) + ceil32(return_data.size) + 320])] = mem[_1737 + (32 * _827) + ceil32(return_data.size) + 352 len floor32(mem[_1737 + (32 * _827) + ceil32(return_data.size) + 320])]
                    require 1 < mem[(32 * _827) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _827) + (2 * ceil32(return_data.size)) + 384] <= _1333:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _827) + (2 * ceil32(return_data.size)) + 384] - _1333
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1333
                else:
                    _795 = mem[288 len 4], Mask(224, 32, arg2) >> 32
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                    _828 = mem[_795 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_795 + 288])] = mem[_795 + 320 len floor32(mem[_795 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1337 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _828) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _828) + ceil32(return_data.size) + 324] = arg2
                    mem[(32 * _828) + ceil32(return_data.size) + 356] = _1337
                    mem[(32 * _828) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _828) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _828) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _828) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _828) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1337, Array(len=2, data=mem[(32 * _828) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _828) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _828) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1739 = mem[(32 * _828) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _828) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _828) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _828) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _828) + ceil32(return_data.size) + 320] <= 4294967296 and mem[(32 * _828) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _828) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _828) + ceil32(return_data.size) + 320]) + 32 <= return_data.size
                    mem[(32 * _828) + (2 * ceil32(return_data.size)) + 320] = mem[mem[(32 * _828) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _828) + ceil32(return_data.size) + 320]
                    mem[(32 * _828) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_1739 + (32 * _828) + ceil32(return_data.size) + 320])] = mem[_1739 + (32 * _828) + ceil32(return_data.size) + 352 len floor32(mem[_1739 + (32 * _828) + ceil32(return_data.size) + 320])]
                    require 1 < mem[(32 * _828) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _828) + (2 * ceil32(return_data.size)) + 384] <= _1337:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if arg2:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _828) + (2 * ceil32(return_data.size)) + 384] - _1337
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1337
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_48c5b27e(?) payable {
    require calldata.size - 4 >= 128
    require cd[100] <= 4294967296
    require cd[100] + 36 <= calldata.size
    require ('cd', 100).length <= 4294967296 and cd[100] + ('cd', 100).length + 36 <= calldata.size
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
    mem[96] = 2
    mem[192] = 2
    mem[160] = address(ext_call.return_data[0])
    mem[224] = address(ext_call.return_data[0])
    mem[128] = address(ext_call.return_data[0])
    mem[256] = address(ext_call.return_data[0])
    require ('cd', 100).length >= 64
    if not address(('cd', 100)[0]):
        revert with 0, 'e12'
    if not address(('cd', 100)[1]):
        revert with 0, 'e12'
    require ext_code.size(address(ext_call.return_data[0]))
    if not cd[36]:
        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(('cd', 100)[1]), cd[68]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[288] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
        mem[292] = cd[68]
        mem[324] = 64
        mem[356] = 2
        mem[388 len 0] = None
        require ext_code.size(address(('cd', 100)[0]))
        staticcall address(('cd', 100)[0]).getAmountsIn(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args cd[68], Array(len=2, data=mem[388 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[288 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 288
        require return_data.size >= 32
        if not cd[36]:
            if not cd[36]:
                if not cd[36]:
                    _765 = mem[288 len 4], Mask(224, 32, cd[68]) >> 32
                    require mem[288 len 4], Mask(224, 32, cd[68]) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, cd[68]) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, cd[68]) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, cd[68]) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, cd[68]) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, cd[68]) >> 32 + 288]
                    _813 = mem[_765 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_765 + 288])] = mem[_765 + 320 len floor32(mem[_765 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1277 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _813) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _813) + ceil32(return_data.size) + 324] = cd[68]
                    mem[(32 * _813) + ceil32(return_data.size) + 356] = _1277
                    mem[(32 * _813) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _813) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _813) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _813) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _813) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(('cd', 100)[1]))
                    call address(('cd', 100)[1]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args cd[68], _1277, Array(len=2, data=mem[(32 * _813) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _813) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _813) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1709 = mem[(32 * _813) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, cd[68]) >> 32
                    require mem[(32 * _813) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, cd[68]) >> 32 <= 4294967296
                    require mem[(32 * _813) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, cd[68]) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _813) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, cd[68]) >> 32 + (32 * _813) + ceil32(return_data.size) + 320] <= 4294967296 and mem[(32 * _813) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, cd[68]) >> 32 + (32 * mem[mem[(32 * _813) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, cd[68]) >> 32 + (32 * _813) + ceil32(return_data.size) + 320]) + 32 <= return_data.size
                    mem[(32 * _813) + (2 * ceil32(return_data.size)) + 320] = mem[mem[(32 * _813) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, cd[68]) >> 32 + (32 * _813) + ceil32(return_data.size) + 320]
                    mem[(32 * _813) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_1709 + (32 * _813) + ceil32(return_data.size) + 320])] = mem[_1709 + (32 * _813) + ceil32(return_data.size) + 352 len floor32(mem[_1709 + (32 * _813) + ceil32(return_data.size) + 320])]
                    require 1 < mem[(32 * _813) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _813) + (2 * ceil32(return_data.size)) + 384] <= _1277:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if cd[36]:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _813) + (2 * ceil32(return_data.size)) + 384] - _1277
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1277
                else:
                    _767 = mem[288 len 4], Mask(224, 32, cd[68]) >> 32
                    require mem[288 len 4], Mask(224, 32, cd[68]) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, cd[68]) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, cd[68]) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, cd[68]) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, cd[68]) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, cd[68]) >> 32 + 288]
                    _814 = mem[_767 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_767 + 288])] = mem[_767 + 320 len floor32(mem[_767 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1281 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _814) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _814) + ceil32(return_data.size) + 324] = cd[68]
                    mem[(32 * _814) + ceil32(return_data.size) + 356] = _1281
                    mem[(32 * _814) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _814) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _814) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _814) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _814) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(('cd', 100)[1]))
                    call address(('cd', 100)[1]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args cd[68], _1281, Array(len=2, data=mem[(32 * _814) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _814) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _814) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1711 = mem[(32 * _814) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, cd[68]) >> 32
                    require mem[(32 * _814) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, cd[68]) >> 32 <= 4294967296
                    require mem[(32 * _814) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, cd[68]) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _814) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, cd[68]) >> 32 + (32 * _814) + ceil32(return_data.size) + 320] <= 4294967296 and mem[(32 * _814) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, cd[68]) >> 32 + (32 * mem[mem[(32 * _814) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, cd[68]) >> 32 + (32 * _814) + ceil32(return_data.size) + 320]) + 32 <= return_data.size
                    mem[(32 * _814) + (2 * ceil32(return_data.size)) + 320] = mem[mem[(32 * _814) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, cd[68]) >> 32 + (32 * _814) + ceil32(return_data.size) + 320]
                    mem[(32 * _814) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_1711 + (32 * _814) + ceil32(return_data.size) + 320])] = mem[_1711 + (32 * _814) + ceil32(return_data.size) + 352 len floor32(mem[_1711 + (32 * _814) + ceil32(return_data.size) + 320])]
                    require 1 < mem[(32 * _814) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _814) + (2 * ceil32(return_data.size)) + 384] <= _1281:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if cd[36]:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _814) + (2 * ceil32(return_data.size)) + 384] - _1281
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1281
            else:
                if not cd[36]:
                    _769 = mem[288 len 4], Mask(224, 32, cd[68]) >> 32
                    require mem[288 len 4], Mask(224, 32, cd[68]) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, cd[68]) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, cd[68]) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, cd[68]) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, cd[68]) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, cd[68]) >> 32 + 288]
                    _815 = mem[_769 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_769 + 288])] = mem[_769 + 320 len floor32(mem[_769 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1285 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _815) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _815) + ceil32(return_data.size) + 324] = cd[68]
                    mem[(32 * _815) + ceil32(return_data.size) + 356] = _1285
                    mem[(32 * _815) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _815) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _815) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _815) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _815) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(('cd', 100)[1]))
                    call address(('cd', 100)[1]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args cd[68], _1285, Array(len=2, data=mem[(32 * _815) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _815) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _815) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1713 = mem[(32 * _815) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, cd[68]) >> 32
                    require mem[(32 * _815) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, cd[68]) >> 32 <= 4294967296
                    require mem[(32 * _815) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, cd[68]) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _815) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, cd[68]) >> 32 + (32 * _815) + ceil32(return_data.size) + 320] <= 4294967296 and mem[(32 * _815) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, cd[68]) >> 32 + (32 * mem[mem[(32 * _815) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, cd[68]) >> 32 + (32 * _815) + ceil32(return_data.size) + 320]) + 32 <= return_data.size
                    mem[(32 * _815) + (2 * ceil32(return_data.size)) + 320] = mem[mem[(32 * _815) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, cd[68]) >> 32 + (32 * _815) + ceil32(return_data.size) + 320]
                    mem[(32 * _815) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_1713 + (32 * _815) + ceil32(return_data.size) + 320])] = mem[_1713 + (32 * _815) + ceil32(return_data.size) + 352 len floor32(mem[_1713 + (32 * _815) + ceil32(return_data.size) + 320])]
                    require 1 < mem[(32 * _815) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _815) + (2 * ceil32(return_data.size)) + 384] <= _1285:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if cd[36]:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _815) + (2 * ceil32(return_data.size)) + 384] - _1285
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1285
                else:
                    _771 = mem[288 len 4], Mask(224, 32, cd[68]) >> 32
                    require mem[288 len 4], Mask(224, 32, cd[68]) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, cd[68]) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, cd[68]) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, cd[68]) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, cd[68]) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, cd[68]) >> 32 + 288]
                    _816 = mem[_771 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_771 + 288])] = mem[_771 + 320 len floor32(mem[_771 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1289 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _816) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _816) + ceil32(return_data.size) + 324] = cd[68]
                    mem[(32 * _816) + ceil32(return_data.size) + 356] = _1289
                    mem[(32 * _816) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _816) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _816) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _816) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _816) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(('cd', 100)[1]))
                    call address(('cd', 100)[1]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args cd[68], _1289, Array(len=2, data=mem[(32 * _816) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _816) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _816) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1715 = mem[(32 * _816) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, cd[68]) >> 32
                    require mem[(32 * _816) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, cd[68]) >> 32 <= 4294967296
                    require mem[(32 * _816) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, cd[68]) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _816) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, cd[68]) >> 32 + (32 * _816) + ceil32(return_data.size) + 320] <= 4294967296 and mem[(32 * _816) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, cd[68]) >> 32 + (32 * mem[mem[(32 * _816) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, cd[68]) >> 32 + (32 * _816) + ceil32(return_data.size) + 320]) + 32 <= return_data.size
                    mem[(32 * _816) + (2 * ceil32(return_data.size)) + 320] = mem[mem[(32 * _816) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, cd[68]) >> 32 + (32 * _816) + ceil32(return_data.size) + 320]
                    mem[(32 * _816) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_1715 + (32 * _816) + ceil32(return_data.size) + 320])] = mem[_1715 + (32 * _816) + ceil32(return_data.size) + 352 len floor32(mem[_1715 + (32 * _816) + ceil32(return_data.size) + 320])]
                    require 1 < mem[(32 * _816) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _816) + (2 * ceil32(return_data.size)) + 384] <= _1289:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if cd[36]:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _816) + (2 * ceil32(return_data.size)) + 384] - _1289
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1289
        else:
            if not cd[36]:
                if not cd[36]:
                    _773 = mem[288 len 4], Mask(224, 32, cd[68]) >> 32
                    require mem[288 len 4], Mask(224, 32, cd[68]) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, cd[68]) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, cd[68]) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, cd[68]) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, cd[68]) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, cd[68]) >> 32 + 288]
                    _817 = mem[_773 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_773 + 288])] = mem[_773 + 320 len floor32(mem[_773 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1293 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _817) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _817) + ceil32(return_data.size) + 324] = cd[68]
                    mem[(32 * _817) + ceil32(return_data.size) + 356] = _1293
                    mem[(32 * _817) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _817) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _817) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _817) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _817) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(('cd', 100)[1]))
                    call address(('cd', 100)[1]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args cd[68], _1293, Array(len=2, data=mem[(32 * _817) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _817) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _817) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1717 = mem[(32 * _817) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, cd[68]) >> 32
                    require mem[(32 * _817) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, cd[68]) >> 32 <= 4294967296
                    require mem[(32 * _817) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, cd[68]) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _817) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, cd[68]) >> 32 + (32 * _817) + ceil32(return_data.size) + 320] <= 4294967296 and mem[(32 * _817) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, cd[68]) >> 32 + (32 * mem[mem[(32 * _817) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, cd[68]) >> 32 + (32 * _817) + ceil32(return_data.size) + 320]) + 32 <= return_data.size
                    mem[(32 * _817) + (2 * ceil32(return_data.size)) + 320] = mem[mem[(32 * _817) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, cd[68]) >> 32 + (32 * _817) + ceil32(return_data.size) + 320]
                    mem[(32 * _817) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_1717 + (32 * _817) + ceil32(return_data.size) + 320])] = mem[_1717 + (32 * _817) + ceil32(return_data.size) + 352 len floor32(mem[_1717 + (32 * _817) + ceil32(return_data.size) + 320])]
                    require 1 < mem[(32 * _817) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _817) + (2 * ceil32(return_data.size)) + 384] <= _1293:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if cd[36]:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _817) + (2 * ceil32(return_data.size)) + 384] - _1293
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1293
                else:
                    _775 = mem[288 len 4], Mask(224, 32, cd[68]) >> 32
                    require mem[288 len 4], Mask(224, 32, cd[68]) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, cd[68]) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, cd[68]) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, cd[68]) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, cd[68]) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, cd[68]) >> 32 + 288]
                    _818 = mem[_775 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_775 + 288])] = mem[_775 + 320 len floor32(mem[_775 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1297 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _818) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _818) + ceil32(return_data.size) + 324] = cd[68]
                    mem[(32 * _818) + ceil32(return_data.size) + 356] = _1297
                    mem[(32 * _818) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _818) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _818) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _818) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _818) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(('cd', 100)[1]))
                    call address(('cd', 100)[1]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args cd[68], _1297, Array(len=2, data=mem[(32 * _818) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _818) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _818) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1719 = mem[(32 * _818) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, cd[68]) >> 32
                    require mem[(32 * _818) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, cd[68]) >> 32 <= 4294967296
                    require mem[(32 * _818) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, cd[68]) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _818) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, cd[68]) >> 32 + (32 * _818) + ceil32(return_data.size) + 320] <= 4294967296 and mem[(32 * _818) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, cd[68]) >> 32 + (32 * mem[mem[(32 * _818) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, cd[68]) >> 32 + (32 * _818) + ceil32(return_data.size) + 320]) + 32 <= return_data.size
                    mem[(32 * _818) + (2 * ceil32(return_data.size)) + 320] = mem[mem[(32 * _818) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, cd[68]) >> 32 + (32 * _818) + ceil32(return_data.size) + 320]
                    mem[(32 * _818) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_1719 + (32 * _818) + ceil32(return_data.size) + 320])] = mem[_1719 + (32 * _818) + ceil32(return_data.size) + 352 len floor32(mem[_1719 + (32 * _818) + ceil32(return_data.size) + 320])]
                    require 1 < mem[(32 * _818) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _818) + (2 * ceil32(return_data.size)) + 384] <= _1297:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if cd[36]:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _818) + (2 * ceil32(return_data.size)) + 384] - _1297
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1297
            else:
                if not cd[36]:
                    _777 = mem[288 len 4], Mask(224, 32, cd[68]) >> 32
                    require mem[288 len 4], Mask(224, 32, cd[68]) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, cd[68]) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, cd[68]) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, cd[68]) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, cd[68]) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, cd[68]) >> 32 + 288]
                    _819 = mem[_777 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_777 + 288])] = mem[_777 + 320 len floor32(mem[_777 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1301 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _819) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _819) + ceil32(return_data.size) + 324] = cd[68]
                    mem[(32 * _819) + ceil32(return_data.size) + 356] = _1301
                    mem[(32 * _819) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _819) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _819) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _819) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _819) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(('cd', 100)[1]))
                    call address(('cd', 100)[1]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args cd[68], _1301, Array(len=2, data=mem[(32 * _819) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _819) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _819) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1721 = mem[(32 * _819) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, cd[68]) >> 32
                    require mem[(32 * _819) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, cd[68]) >> 32 <= 4294967296
                    require mem[(32 * _819) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, cd[68]) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _819) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, cd[68]) >> 32 + (32 * _819) + ceil32(return_data.size) + 320] <= 4294967296 and mem[(32 * _819) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, cd[68]) >> 32 + (32 * mem[mem[(32 * _819) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, cd[68]) >> 32 + (32 * _819) + ceil32(return_data.size) + 320]) + 32 <= return_data.size
                    mem[(32 * _819) + (2 * ceil32(return_data.size)) + 320] = mem[mem[(32 * _819) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, cd[68]) >> 32 + (32 * _819) + ceil32(return_data.size) + 320]
                    mem[(32 * _819) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_1721 + (32 * _819) + ceil32(return_data.size) + 320])] = mem[_1721 + (32 * _819) + ceil32(return_data.size) + 352 len floor32(mem[_1721 + (32 * _819) + ceil32(return_data.size) + 320])]
                    require 1 < mem[(32 * _819) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _819) + (2 * ceil32(return_data.size)) + 384] <= _1301:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if cd[36]:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _819) + (2 * ceil32(return_data.size)) + 384] - _1301
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1301
                else:
                    _779 = mem[288 len 4], Mask(224, 32, cd[68]) >> 32
                    require mem[288 len 4], Mask(224, 32, cd[68]) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, cd[68]) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, cd[68]) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, cd[68]) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, cd[68]) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, cd[68]) >> 32 + 288]
                    _820 = mem[_779 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_779 + 288])] = mem[_779 + 320 len floor32(mem[_779 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1305 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _820) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _820) + ceil32(return_data.size) + 324] = cd[68]
                    mem[(32 * _820) + ceil32(return_data.size) + 356] = _1305
                    mem[(32 * _820) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _820) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _820) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _820) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _820) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(('cd', 100)[1]))
                    call address(('cd', 100)[1]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args cd[68], _1305, Array(len=2, data=mem[(32 * _820) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _820) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _820) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1723 = mem[(32 * _820) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, cd[68]) >> 32
                    require mem[(32 * _820) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, cd[68]) >> 32 <= 4294967296
                    require mem[(32 * _820) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, cd[68]) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _820) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, cd[68]) >> 32 + (32 * _820) + ceil32(return_data.size) + 320] <= 4294967296 and mem[(32 * _820) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, cd[68]) >> 32 + (32 * mem[mem[(32 * _820) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, cd[68]) >> 32 + (32 * _820) + ceil32(return_data.size) + 320]) + 32 <= return_data.size
                    mem[(32 * _820) + (2 * ceil32(return_data.size)) + 320] = mem[mem[(32 * _820) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, cd[68]) >> 32 + (32 * _820) + ceil32(return_data.size) + 320]
                    mem[(32 * _820) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_1723 + (32 * _820) + ceil32(return_data.size) + 320])] = mem[_1723 + (32 * _820) + ceil32(return_data.size) + 352 len floor32(mem[_1723 + (32 * _820) + ceil32(return_data.size) + 320])]
                    require 1 < mem[(32 * _820) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _820) + (2 * ceil32(return_data.size)) + 384] <= _1305:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if cd[36]:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _820) + (2 * ceil32(return_data.size)) + 384] - _1305
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1305
    else:
        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(('cd', 100)[1]), cd[36]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[288] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
        mem[292] = cd[36]
        mem[324] = 64
        mem[356] = 2
        mem[388 len 0] = None
        require ext_code.size(address(('cd', 100)[0]))
        staticcall address(('cd', 100)[0]).getAmountsIn(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args cd[36], Array(len=2, data=mem[388 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[288 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 288
        require return_data.size >= 32
        if not cd[36]:
            if not cd[36]:
                if not cd[36]:
                    _781 = mem[288 len 4], Mask(224, 32, cd[36]) >> 32
                    require mem[288 len 4], Mask(224, 32, cd[36]) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, cd[36]) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, cd[36]) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, cd[36]) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, cd[36]) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, cd[36]) >> 32 + 288]
                    _821 = mem[_781 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_781 + 288])] = mem[_781 + 320 len floor32(mem[_781 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1309 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _821) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _821) + ceil32(return_data.size) + 324] = cd[36]
                    mem[(32 * _821) + ceil32(return_data.size) + 356] = _1309
                    mem[(32 * _821) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _821) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _821) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _821) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _821) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(('cd', 100)[1]))
                    call address(('cd', 100)[1]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args cd[36], _1309, Array(len=2, data=mem[(32 * _821) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _821) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _821) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1725 = mem[(32 * _821) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, cd[36]) >> 32
                    require mem[(32 * _821) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, cd[36]) >> 32 <= 4294967296
                    require mem[(32 * _821) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, cd[36]) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _821) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, cd[36]) >> 32 + (32 * _821) + ceil32(return_data.size) + 320] <= 4294967296 and mem[(32 * _821) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, cd[36]) >> 32 + (32 * mem[mem[(32 * _821) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, cd[36]) >> 32 + (32 * _821) + ceil32(return_data.size) + 320]) + 32 <= return_data.size
                    mem[(32 * _821) + (2 * ceil32(return_data.size)) + 320] = mem[mem[(32 * _821) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, cd[36]) >> 32 + (32 * _821) + ceil32(return_data.size) + 320]
                    mem[(32 * _821) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_1725 + (32 * _821) + ceil32(return_data.size) + 320])] = mem[_1725 + (32 * _821) + ceil32(return_data.size) + 352 len floor32(mem[_1725 + (32 * _821) + ceil32(return_data.size) + 320])]
                    require 1 < mem[(32 * _821) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _821) + (2 * ceil32(return_data.size)) + 384] <= _1309:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if cd[36]:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _821) + (2 * ceil32(return_data.size)) + 384] - _1309
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1309
                else:
                    _783 = mem[288 len 4], Mask(224, 32, cd[36]) >> 32
                    require mem[288 len 4], Mask(224, 32, cd[36]) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, cd[36]) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, cd[36]) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, cd[36]) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, cd[36]) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, cd[36]) >> 32 + 288]
                    _822 = mem[_783 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_783 + 288])] = mem[_783 + 320 len floor32(mem[_783 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1313 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _822) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _822) + ceil32(return_data.size) + 324] = cd[36]
                    mem[(32 * _822) + ceil32(return_data.size) + 356] = _1313
                    mem[(32 * _822) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _822) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _822) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _822) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _822) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(('cd', 100)[1]))
                    call address(('cd', 100)[1]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args cd[36], _1313, Array(len=2, data=mem[(32 * _822) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _822) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _822) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1727 = mem[(32 * _822) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, cd[36]) >> 32
                    require mem[(32 * _822) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, cd[36]) >> 32 <= 4294967296
                    require mem[(32 * _822) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, cd[36]) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _822) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, cd[36]) >> 32 + (32 * _822) + ceil32(return_data.size) + 320] <= 4294967296 and mem[(32 * _822) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, cd[36]) >> 32 + (32 * mem[mem[(32 * _822) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, cd[36]) >> 32 + (32 * _822) + ceil32(return_data.size) + 320]) + 32 <= return_data.size
                    mem[(32 * _822) + (2 * ceil32(return_data.size)) + 320] = mem[mem[(32 * _822) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, cd[36]) >> 32 + (32 * _822) + ceil32(return_data.size) + 320]
                    mem[(32 * _822) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_1727 + (32 * _822) + ceil32(return_data.size) + 320])] = mem[_1727 + (32 * _822) + ceil32(return_data.size) + 352 len floor32(mem[_1727 + (32 * _822) + ceil32(return_data.size) + 320])]
                    require 1 < mem[(32 * _822) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _822) + (2 * ceil32(return_data.size)) + 384] <= _1313:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if cd[36]:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _822) + (2 * ceil32(return_data.size)) + 384] - _1313
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1313
            else:
                if not cd[36]:
                    _785 = mem[288 len 4], Mask(224, 32, cd[36]) >> 32
                    require mem[288 len 4], Mask(224, 32, cd[36]) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, cd[36]) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, cd[36]) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, cd[36]) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, cd[36]) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, cd[36]) >> 32 + 288]
                    _823 = mem[_785 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_785 + 288])] = mem[_785 + 320 len floor32(mem[_785 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1317 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _823) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _823) + ceil32(return_data.size) + 324] = cd[36]
                    mem[(32 * _823) + ceil32(return_data.size) + 356] = _1317
                    mem[(32 * _823) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _823) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _823) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _823) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _823) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(('cd', 100)[1]))
                    call address(('cd', 100)[1]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args cd[36], _1317, Array(len=2, data=mem[(32 * _823) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _823) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _823) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1729 = mem[(32 * _823) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, cd[36]) >> 32
                    require mem[(32 * _823) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, cd[36]) >> 32 <= 4294967296
                    require mem[(32 * _823) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, cd[36]) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _823) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, cd[36]) >> 32 + (32 * _823) + ceil32(return_data.size) + 320] <= 4294967296 and mem[(32 * _823) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, cd[36]) >> 32 + (32 * mem[mem[(32 * _823) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, cd[36]) >> 32 + (32 * _823) + ceil32(return_data.size) + 320]) + 32 <= return_data.size
                    mem[(32 * _823) + (2 * ceil32(return_data.size)) + 320] = mem[mem[(32 * _823) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, cd[36]) >> 32 + (32 * _823) + ceil32(return_data.size) + 320]
                    mem[(32 * _823) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_1729 + (32 * _823) + ceil32(return_data.size) + 320])] = mem[_1729 + (32 * _823) + ceil32(return_data.size) + 352 len floor32(mem[_1729 + (32 * _823) + ceil32(return_data.size) + 320])]
                    require 1 < mem[(32 * _823) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _823) + (2 * ceil32(return_data.size)) + 384] <= _1317:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if cd[36]:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _823) + (2 * ceil32(return_data.size)) + 384] - _1317
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1317
                else:
                    _787 = mem[288 len 4], Mask(224, 32, cd[36]) >> 32
                    require mem[288 len 4], Mask(224, 32, cd[36]) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, cd[36]) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, cd[36]) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, cd[36]) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, cd[36]) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, cd[36]) >> 32 + 288]
                    _824 = mem[_787 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_787 + 288])] = mem[_787 + 320 len floor32(mem[_787 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1321 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _824) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _824) + ceil32(return_data.size) + 324] = cd[36]
                    mem[(32 * _824) + ceil32(return_data.size) + 356] = _1321
                    mem[(32 * _824) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _824) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _824) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _824) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _824) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(('cd', 100)[1]))
                    call address(('cd', 100)[1]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args cd[36], _1321, Array(len=2, data=mem[(32 * _824) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _824) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _824) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1731 = mem[(32 * _824) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, cd[36]) >> 32
                    require mem[(32 * _824) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, cd[36]) >> 32 <= 4294967296
                    require mem[(32 * _824) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, cd[36]) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _824) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, cd[36]) >> 32 + (32 * _824) + ceil32(return_data.size) + 320] <= 4294967296 and mem[(32 * _824) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, cd[36]) >> 32 + (32 * mem[mem[(32 * _824) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, cd[36]) >> 32 + (32 * _824) + ceil32(return_data.size) + 320]) + 32 <= return_data.size
                    mem[(32 * _824) + (2 * ceil32(return_data.size)) + 320] = mem[mem[(32 * _824) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, cd[36]) >> 32 + (32 * _824) + ceil32(return_data.size) + 320]
                    mem[(32 * _824) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_1731 + (32 * _824) + ceil32(return_data.size) + 320])] = mem[_1731 + (32 * _824) + ceil32(return_data.size) + 352 len floor32(mem[_1731 + (32 * _824) + ceil32(return_data.size) + 320])]
                    require 1 < mem[(32 * _824) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _824) + (2 * ceil32(return_data.size)) + 384] <= _1321:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if cd[36]:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _824) + (2 * ceil32(return_data.size)) + 384] - _1321
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1321
        else:
            if not cd[36]:
                if not cd[36]:
                    _789 = mem[288 len 4], Mask(224, 32, cd[36]) >> 32
                    require mem[288 len 4], Mask(224, 32, cd[36]) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, cd[36]) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, cd[36]) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, cd[36]) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, cd[36]) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, cd[36]) >> 32 + 288]
                    _825 = mem[_789 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_789 + 288])] = mem[_789 + 320 len floor32(mem[_789 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1325 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _825) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _825) + ceil32(return_data.size) + 324] = cd[36]
                    mem[(32 * _825) + ceil32(return_data.size) + 356] = _1325
                    mem[(32 * _825) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _825) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _825) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _825) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _825) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(('cd', 100)[1]))
                    call address(('cd', 100)[1]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args cd[36], _1325, Array(len=2, data=mem[(32 * _825) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _825) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _825) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1733 = mem[(32 * _825) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, cd[36]) >> 32
                    require mem[(32 * _825) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, cd[36]) >> 32 <= 4294967296
                    require mem[(32 * _825) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, cd[36]) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _825) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, cd[36]) >> 32 + (32 * _825) + ceil32(return_data.size) + 320] <= 4294967296 and mem[(32 * _825) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, cd[36]) >> 32 + (32 * mem[mem[(32 * _825) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, cd[36]) >> 32 + (32 * _825) + ceil32(return_data.size) + 320]) + 32 <= return_data.size
                    mem[(32 * _825) + (2 * ceil32(return_data.size)) + 320] = mem[mem[(32 * _825) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, cd[36]) >> 32 + (32 * _825) + ceil32(return_data.size) + 320]
                    mem[(32 * _825) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_1733 + (32 * _825) + ceil32(return_data.size) + 320])] = mem[_1733 + (32 * _825) + ceil32(return_data.size) + 352 len floor32(mem[_1733 + (32 * _825) + ceil32(return_data.size) + 320])]
                    require 1 < mem[(32 * _825) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _825) + (2 * ceil32(return_data.size)) + 384] <= _1325:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if cd[36]:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _825) + (2 * ceil32(return_data.size)) + 384] - _1325
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1325
                else:
                    _791 = mem[288 len 4], Mask(224, 32, cd[36]) >> 32
                    require mem[288 len 4], Mask(224, 32, cd[36]) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, cd[36]) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, cd[36]) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, cd[36]) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, cd[36]) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, cd[36]) >> 32 + 288]
                    _826 = mem[_791 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_791 + 288])] = mem[_791 + 320 len floor32(mem[_791 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1329 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _826) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _826) + ceil32(return_data.size) + 324] = cd[36]
                    mem[(32 * _826) + ceil32(return_data.size) + 356] = _1329
                    mem[(32 * _826) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _826) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _826) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _826) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _826) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(('cd', 100)[1]))
                    call address(('cd', 100)[1]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args cd[36], _1329, Array(len=2, data=mem[(32 * _826) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _826) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _826) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1735 = mem[(32 * _826) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, cd[36]) >> 32
                    require mem[(32 * _826) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, cd[36]) >> 32 <= 4294967296
                    require mem[(32 * _826) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, cd[36]) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _826) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, cd[36]) >> 32 + (32 * _826) + ceil32(return_data.size) + 320] <= 4294967296 and mem[(32 * _826) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, cd[36]) >> 32 + (32 * mem[mem[(32 * _826) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, cd[36]) >> 32 + (32 * _826) + ceil32(return_data.size) + 320]) + 32 <= return_data.size
                    mem[(32 * _826) + (2 * ceil32(return_data.size)) + 320] = mem[mem[(32 * _826) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, cd[36]) >> 32 + (32 * _826) + ceil32(return_data.size) + 320]
                    mem[(32 * _826) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_1735 + (32 * _826) + ceil32(return_data.size) + 320])] = mem[_1735 + (32 * _826) + ceil32(return_data.size) + 352 len floor32(mem[_1735 + (32 * _826) + ceil32(return_data.size) + 320])]
                    require 1 < mem[(32 * _826) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _826) + (2 * ceil32(return_data.size)) + 384] <= _1329:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if cd[36]:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _826) + (2 * ceil32(return_data.size)) + 384] - _1329
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1329
            else:
                if not cd[36]:
                    _793 = mem[288 len 4], Mask(224, 32, cd[36]) >> 32
                    require mem[288 len 4], Mask(224, 32, cd[36]) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, cd[36]) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, cd[36]) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, cd[36]) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, cd[36]) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, cd[36]) >> 32 + 288]
                    _827 = mem[_793 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_793 + 288])] = mem[_793 + 320 len floor32(mem[_793 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1333 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _827) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _827) + ceil32(return_data.size) + 324] = cd[36]
                    mem[(32 * _827) + ceil32(return_data.size) + 356] = _1333
                    mem[(32 * _827) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _827) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _827) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _827) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _827) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(('cd', 100)[1]))
                    call address(('cd', 100)[1]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args cd[36], _1333, Array(len=2, data=mem[(32 * _827) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _827) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _827) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1737 = mem[(32 * _827) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, cd[36]) >> 32
                    require mem[(32 * _827) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, cd[36]) >> 32 <= 4294967296
                    require mem[(32 * _827) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, cd[36]) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _827) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, cd[36]) >> 32 + (32 * _827) + ceil32(return_data.size) + 320] <= 4294967296 and mem[(32 * _827) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, cd[36]) >> 32 + (32 * mem[mem[(32 * _827) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, cd[36]) >> 32 + (32 * _827) + ceil32(return_data.size) + 320]) + 32 <= return_data.size
                    mem[(32 * _827) + (2 * ceil32(return_data.size)) + 320] = mem[mem[(32 * _827) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, cd[36]) >> 32 + (32 * _827) + ceil32(return_data.size) + 320]
                    mem[(32 * _827) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_1737 + (32 * _827) + ceil32(return_data.size) + 320])] = mem[_1737 + (32 * _827) + ceil32(return_data.size) + 352 len floor32(mem[_1737 + (32 * _827) + ceil32(return_data.size) + 320])]
                    require 1 < mem[(32 * _827) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _827) + (2 * ceil32(return_data.size)) + 384] <= _1333:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if cd[36]:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _827) + (2 * ceil32(return_data.size)) + 384] - _1333
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1333
                else:
                    _795 = mem[288 len 4], Mask(224, 32, cd[36]) >> 32
                    require mem[288 len 4], Mask(224, 32, cd[36]) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, cd[36]) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, cd[36]) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, cd[36]) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, cd[36]) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, cd[36]) >> 32 + 288]
                    _828 = mem[_795 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_795 + 288])] = mem[_795 + 320 len floor32(mem[_795 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1337 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _828) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _828) + ceil32(return_data.size) + 324] = cd[36]
                    mem[(32 * _828) + ceil32(return_data.size) + 356] = _1337
                    mem[(32 * _828) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _828) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _828) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _828) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _828) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(('cd', 100)[1]))
                    call address(('cd', 100)[1]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args cd[36], _1337, Array(len=2, data=mem[(32 * _828) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _828) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _828) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1739 = mem[(32 * _828) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, cd[36]) >> 32
                    require mem[(32 * _828) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, cd[36]) >> 32 <= 4294967296
                    require mem[(32 * _828) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, cd[36]) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _828) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, cd[36]) >> 32 + (32 * _828) + ceil32(return_data.size) + 320] <= 4294967296 and mem[(32 * _828) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, cd[36]) >> 32 + (32 * mem[mem[(32 * _828) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, cd[36]) >> 32 + (32 * _828) + ceil32(return_data.size) + 320]) + 32 <= return_data.size
                    mem[(32 * _828) + (2 * ceil32(return_data.size)) + 320] = mem[mem[(32 * _828) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, cd[36]) >> 32 + (32 * _828) + ceil32(return_data.size) + 320]
                    mem[(32 * _828) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_1739 + (32 * _828) + ceil32(return_data.size) + 320])] = mem[_1739 + (32 * _828) + ceil32(return_data.size) + 352 len floor32(mem[_1739 + (32 * _828) + ceil32(return_data.size) + 320])]
                    require 1 < mem[(32 * _828) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _828) + (2 * ceil32(return_data.size)) + 384] <= _1337:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    if cd[36]:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, mem[(32 * _828) + (2 * ceil32(return_data.size)) + 384] - _1337
                    else:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1337
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}



}
