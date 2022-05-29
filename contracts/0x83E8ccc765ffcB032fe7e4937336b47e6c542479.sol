contract main {




// =====================  Runtime code  =====================


address sub_d4384dbeAddress;
address sub_8ed8ea7eAddress;
address sub_d8f06c26Address;
address sub_50d7d613Address;
address devAddress;

function sub_50d7d613(?) payable {
    return sub_50d7d613Address
}

function sub_8ed8ea7e(?) payable {
    return sub_8ed8ea7eAddress
}

function dev() payable {
    return devAddress
}

function sub_d4384dbe(?) payable {
    return sub_d4384dbeAddress
}

function sub_d8f06c26(?) payable {
    return sub_d8f06c26Address
}

function _fallback() payable {
    revert
}

function setDev(address arg1) payable {
    require calldata.size - 4 >= 32
    if msg.sender == devAddress:
        devAddress = arg1
}

function sub_584af88e(?) payable {
    require calldata.size - 4 >= 128
    require ext_code.size(sub_d8f06c26Address)
    staticcall sub_d8f06c26Address.getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[12 len 20]:
        revert with 0, 'This pool does not exist'
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
         gas gas_remaining wei
        args arg3, arg4, address(this.address), 'not empty'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_f786fe29(?) payable {
    require calldata.size - 4 >= 128
    require ext_code.size(sub_d4384dbeAddress)
    staticcall sub_d4384dbeAddress.getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[12 len 20]:
        revert with 0, 'This pool does not exist'
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
         gas gas_remaining wei
        args arg3, arg4, address(this.address), 'not empty'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function pancakeCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[96] = 2
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
    require ext_code.size(sub_d8f06c26Address)
    staticcall sub_d8f06c26Address.getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(ext_call.return_data[0]), address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'Unauthorized'
    if not arg2:
        if not arg2:
            mem[128] = address(ext_call.return_data[0])
            mem[160] = address(ext_call.return_data[0])
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args sub_8ed8ea7eAddress, arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
            mem[196] = arg3
            mem[228] = 64
            mem[260] = 2
            mem[292 len 0] = None
            require ext_code.size(sub_8ed8ea7eAddress)
            staticcall sub_8ed8ea7eAddress.getAmountsIn(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg3, Array(len=2, data=mem[292 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 192
            require return_data.size >= 32
            if not arg2:
                if not arg2:
                    _1200 = mem[192 len 4], Mask(224, 32, arg3) >> 32
                    require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                    _1272 = mem[_1200 + 192]
                    mem[ceil32(return_data.size) + 224 len floor32(mem[_1200 + 192])] = mem[_1200 + 224 len floor32(mem[_1200 + 192])]
                    require 0 < mem[ceil32(return_data.size) + 192]
                    _2112 = mem[ceil32(return_data.size) + 224]
                    mem[(32 * _1272) + ceil32(return_data.size) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _1272) + ceil32(return_data.size) + 228] = arg3
                    mem[(32 * _1272) + ceil32(return_data.size) + 260] = _2112
                    mem[(32 * _1272) + ceil32(return_data.size) + 324] = msg.sender
                    mem[(32 * _1272) + ceil32(return_data.size) + 356] = 240 * 24 * 3600
                    mem[(32 * _1272) + ceil32(return_data.size) + 292] = 160
                    mem[(32 * _1272) + ceil32(return_data.size) + 388] = 2
                    mem[(32 * _1272) + ceil32(return_data.size) + 420 len 0] = None
                    require ext_code.size(sub_8ed8ea7eAddress)
                    call sub_8ed8ea7eAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _2112, 160, msg.sender, 240 * 24 * 3600, 2, mem[(32 * _1272) + ceil32(return_data.size) + 420 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _1272) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _1272) + (2 * ceil32(return_data.size)) + 224
                    require return_data.size >= 32
                    _2904 = mem[(32 * _1272) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _1272) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _1272) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[(32 * _1272) + ceil32(return_data.size) + mem[(32 * _1272) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[(32 * _1272) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _1272) + ceil32(return_data.size) + mem[(32 * _1272) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
                    mem[(32 * _1272) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _1272) + ceil32(return_data.size) + mem[(32 * _1272) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                    _2976 = mem[(32 * _1272) + ceil32(return_data.size) + _2904 + 224]
                    mem[(32 * _1272) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _1272) + ceil32(return_data.size) + _2904 + 224])] = mem[(32 * _1272) + ceil32(return_data.size) + _2904 + 256 len floor32(mem[(32 * _1272) + ceil32(return_data.size) + _2904 + 224])]
                    require 1 < mem[(32 * _1272) + (2 * ceil32(return_data.size)) + 224]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, _2112
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args devAddress, mem[(32 * _1272) + (2 * ceil32(return_data.size)) + 288] - _2112
                else:
                    _1202 = mem[192 len 4], Mask(224, 32, arg3) >> 32
                    require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                    _1273 = mem[_1202 + 192]
                    mem[ceil32(return_data.size) + 224 len floor32(mem[_1202 + 192])] = mem[_1202 + 224 len floor32(mem[_1202 + 192])]
                    require 0 < mem[ceil32(return_data.size) + 192]
                    _2116 = mem[ceil32(return_data.size) + 224]
                    mem[(32 * _1273) + ceil32(return_data.size) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _1273) + ceil32(return_data.size) + 228] = arg3
                    mem[(32 * _1273) + ceil32(return_data.size) + 260] = _2116
                    mem[(32 * _1273) + ceil32(return_data.size) + 324] = msg.sender
                    mem[(32 * _1273) + ceil32(return_data.size) + 356] = 240 * 24 * 3600
                    mem[(32 * _1273) + ceil32(return_data.size) + 292] = 160
                    mem[(32 * _1273) + ceil32(return_data.size) + 388] = 2
                    mem[(32 * _1273) + ceil32(return_data.size) + 420 len 0] = None
                    require ext_code.size(sub_8ed8ea7eAddress)
                    call sub_8ed8ea7eAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _2116, 160, msg.sender, 240 * 24 * 3600, 2, mem[(32 * _1273) + ceil32(return_data.size) + 420 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _1273) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _1273) + (2 * ceil32(return_data.size)) + 224
                    require return_data.size >= 32
                    _2906 = mem[(32 * _1273) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _1273) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _1273) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[(32 * _1273) + ceil32(return_data.size) + mem[(32 * _1273) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[(32 * _1273) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _1273) + ceil32(return_data.size) + mem[(32 * _1273) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
                    mem[(32 * _1273) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _1273) + ceil32(return_data.size) + mem[(32 * _1273) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                    _2977 = mem[(32 * _1273) + ceil32(return_data.size) + _2906 + 224]
                    mem[(32 * _1273) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _1273) + ceil32(return_data.size) + _2906 + 224])] = mem[(32 * _1273) + ceil32(return_data.size) + _2906 + 256 len floor32(mem[(32 * _1273) + ceil32(return_data.size) + _2906 + 224])]
                    require 1 < mem[(32 * _1273) + (2 * ceil32(return_data.size)) + 224]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, _2116
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args devAddress, mem[(32 * _1273) + (2 * ceil32(return_data.size)) + 288] - _2116
            else:
                if not arg2:
                    _1204 = mem[192 len 4], Mask(224, 32, arg3) >> 32
                    require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                    _1274 = mem[_1204 + 192]
                    mem[ceil32(return_data.size) + 224 len floor32(mem[_1204 + 192])] = mem[_1204 + 224 len floor32(mem[_1204 + 192])]
                    require 0 < mem[ceil32(return_data.size) + 192]
                    _2120 = mem[ceil32(return_data.size) + 224]
                    mem[(32 * _1274) + ceil32(return_data.size) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _1274) + ceil32(return_data.size) + 228] = arg3
                    mem[(32 * _1274) + ceil32(return_data.size) + 260] = _2120
                    mem[(32 * _1274) + ceil32(return_data.size) + 324] = msg.sender
                    mem[(32 * _1274) + ceil32(return_data.size) + 356] = 240 * 24 * 3600
                    mem[(32 * _1274) + ceil32(return_data.size) + 292] = 160
                    mem[(32 * _1274) + ceil32(return_data.size) + 388] = 2
                    mem[(32 * _1274) + ceil32(return_data.size) + 420 len 0] = None
                    require ext_code.size(sub_8ed8ea7eAddress)
                    call sub_8ed8ea7eAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _2120, 160, msg.sender, 240 * 24 * 3600, 2, mem[(32 * _1274) + ceil32(return_data.size) + 420 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _1274) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _1274) + (2 * ceil32(return_data.size)) + 224
                    require return_data.size >= 32
                    _2908 = mem[(32 * _1274) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _1274) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _1274) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[(32 * _1274) + ceil32(return_data.size) + mem[(32 * _1274) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[(32 * _1274) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _1274) + ceil32(return_data.size) + mem[(32 * _1274) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
                    mem[(32 * _1274) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _1274) + ceil32(return_data.size) + mem[(32 * _1274) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                    _2978 = mem[(32 * _1274) + ceil32(return_data.size) + _2908 + 224]
                    mem[(32 * _1274) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _1274) + ceil32(return_data.size) + _2908 + 224])] = mem[(32 * _1274) + ceil32(return_data.size) + _2908 + 256 len floor32(mem[(32 * _1274) + ceil32(return_data.size) + _2908 + 224])]
                    require 1 < mem[(32 * _1274) + (2 * ceil32(return_data.size)) + 224]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, _2120
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args devAddress, mem[(32 * _1274) + (2 * ceil32(return_data.size)) + 288] - _2120
                else:
                    _1206 = mem[192 len 4], Mask(224, 32, arg3) >> 32
                    require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                    _1275 = mem[_1206 + 192]
                    mem[ceil32(return_data.size) + 224 len floor32(mem[_1206 + 192])] = mem[_1206 + 224 len floor32(mem[_1206 + 192])]
                    require 0 < mem[ceil32(return_data.size) + 192]
                    _2124 = mem[ceil32(return_data.size) + 224]
                    mem[(32 * _1275) + ceil32(return_data.size) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _1275) + ceil32(return_data.size) + 228] = arg3
                    mem[(32 * _1275) + ceil32(return_data.size) + 260] = _2124
                    mem[(32 * _1275) + ceil32(return_data.size) + 324] = msg.sender
                    mem[(32 * _1275) + ceil32(return_data.size) + 356] = 240 * 24 * 3600
                    mem[(32 * _1275) + ceil32(return_data.size) + 292] = 160
                    mem[(32 * _1275) + ceil32(return_data.size) + 388] = 2
                    mem[(32 * _1275) + ceil32(return_data.size) + 420 len 0] = None
                    require ext_code.size(sub_8ed8ea7eAddress)
                    call sub_8ed8ea7eAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _2124, 160, msg.sender, 240 * 24 * 3600, 2, mem[(32 * _1275) + ceil32(return_data.size) + 420 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _1275) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _1275) + (2 * ceil32(return_data.size)) + 224
                    require return_data.size >= 32
                    _2910 = mem[(32 * _1275) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _1275) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _1275) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[(32 * _1275) + ceil32(return_data.size) + mem[(32 * _1275) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[(32 * _1275) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _1275) + ceil32(return_data.size) + mem[(32 * _1275) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
                    mem[(32 * _1275) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _1275) + ceil32(return_data.size) + mem[(32 * _1275) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                    _2979 = mem[(32 * _1275) + ceil32(return_data.size) + _2910 + 224]
                    mem[(32 * _1275) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _1275) + ceil32(return_data.size) + _2910 + 224])] = mem[(32 * _1275) + ceil32(return_data.size) + _2910 + 256 len floor32(mem[(32 * _1275) + ceil32(return_data.size) + _2910 + 224])]
                    require 1 < mem[(32 * _1275) + (2 * ceil32(return_data.size)) + 224]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, _2124
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args devAddress, mem[(32 * _1275) + (2 * ceil32(return_data.size)) + 288] - _2124
        else:
            require not arg3
            mem[128] = address(ext_call.return_data[0])
            mem[160] = address(ext_call.return_data[0])
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args sub_8ed8ea7eAddress, arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
            mem[196] = arg3
            mem[228] = 64
            mem[260] = 2
            mem[292 len 0] = None
            require ext_code.size(sub_8ed8ea7eAddress)
            staticcall sub_8ed8ea7eAddress.getAmountsIn(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg3, Array(len=2, data=mem[292 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 192
            require return_data.size >= 32
            if not arg2:
                if not arg2:
                    if not arg2:
                        _1208 = mem[192 len 4], Mask(224, 32, arg3) >> 32
                        require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                        _1276 = mem[_1208 + 192]
                        mem[ceil32(return_data.size) + 224 len floor32(mem[_1208 + 192])] = mem[_1208 + 224 len floor32(mem[_1208 + 192])]
                        require 0 < mem[ceil32(return_data.size) + 192]
                        _2128 = mem[ceil32(return_data.size) + 224]
                        mem[(32 * _1276) + ceil32(return_data.size) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(32 * _1276) + ceil32(return_data.size) + 228] = arg3
                        mem[(32 * _1276) + ceil32(return_data.size) + 260] = _2128
                        mem[(32 * _1276) + ceil32(return_data.size) + 324] = msg.sender
                        mem[(32 * _1276) + ceil32(return_data.size) + 356] = 240 * 24 * 3600
                        mem[(32 * _1276) + ceil32(return_data.size) + 292] = 160
                        mem[(32 * _1276) + ceil32(return_data.size) + 388] = 2
                        mem[(32 * _1276) + ceil32(return_data.size) + 420 len 0] = None
                        require ext_code.size(sub_8ed8ea7eAddress)
                        call sub_8ed8ea7eAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg3, _2128, 160, msg.sender, 240 * 24 * 3600, 2, mem[(32 * _1276) + ceil32(return_data.size) + 420 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _1276) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _1276) + (2 * ceil32(return_data.size)) + 224
                        require return_data.size >= 32
                        _2912 = mem[(32 * _1276) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32
                        require mem[(32 * _1276) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[(32 * _1276) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[(32 * _1276) + ceil32(return_data.size) + mem[(32 * _1276) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[(32 * _1276) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _1276) + ceil32(return_data.size) + mem[(32 * _1276) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
                        mem[(32 * _1276) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _1276) + ceil32(return_data.size) + mem[(32 * _1276) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                        _2980 = mem[(32 * _1276) + ceil32(return_data.size) + _2912 + 224]
                        mem[(32 * _1276) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _1276) + ceil32(return_data.size) + _2912 + 224])] = mem[(32 * _1276) + ceil32(return_data.size) + _2912 + 256 len floor32(mem[(32 * _1276) + ceil32(return_data.size) + _2912 + 224])]
                        require 1 < mem[(32 * _1276) + (2 * ceil32(return_data.size)) + 224]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, _2128
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args devAddress, mem[(32 * _1276) + (2 * ceil32(return_data.size)) + 288] - _2128
                    else:
                        _1210 = mem[192 len 4], Mask(224, 32, arg3) >> 32
                        require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                        _1277 = mem[_1210 + 192]
                        mem[ceil32(return_data.size) + 224 len floor32(mem[_1210 + 192])] = mem[_1210 + 224 len floor32(mem[_1210 + 192])]
                        require 0 < mem[ceil32(return_data.size) + 192]
                        _2132 = mem[ceil32(return_data.size) + 224]
                        mem[(32 * _1277) + ceil32(return_data.size) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(32 * _1277) + ceil32(return_data.size) + 228] = arg3
                        mem[(32 * _1277) + ceil32(return_data.size) + 260] = _2132
                        mem[(32 * _1277) + ceil32(return_data.size) + 324] = msg.sender
                        mem[(32 * _1277) + ceil32(return_data.size) + 356] = 240 * 24 * 3600
                        mem[(32 * _1277) + ceil32(return_data.size) + 292] = 160
                        mem[(32 * _1277) + ceil32(return_data.size) + 388] = 2
                        mem[(32 * _1277) + ceil32(return_data.size) + 420 len 0] = None
                        require ext_code.size(sub_8ed8ea7eAddress)
                        call sub_8ed8ea7eAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg3, _2132, 160, msg.sender, 240 * 24 * 3600, 2, mem[(32 * _1277) + ceil32(return_data.size) + 420 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _1277) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _1277) + (2 * ceil32(return_data.size)) + 224
                        require return_data.size >= 32
                        _2914 = mem[(32 * _1277) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32
                        require mem[(32 * _1277) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[(32 * _1277) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[(32 * _1277) + ceil32(return_data.size) + mem[(32 * _1277) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[(32 * _1277) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _1277) + ceil32(return_data.size) + mem[(32 * _1277) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
                        mem[(32 * _1277) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _1277) + ceil32(return_data.size) + mem[(32 * _1277) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                        _2981 = mem[(32 * _1277) + ceil32(return_data.size) + _2914 + 224]
                        mem[(32 * _1277) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _1277) + ceil32(return_data.size) + _2914 + 224])] = mem[(32 * _1277) + ceil32(return_data.size) + _2914 + 256 len floor32(mem[(32 * _1277) + ceil32(return_data.size) + _2914 + 224])]
                        require 1 < mem[(32 * _1277) + (2 * ceil32(return_data.size)) + 224]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, _2132
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args devAddress, mem[(32 * _1277) + (2 * ceil32(return_data.size)) + 288] - _2132
                else:
                    if not arg2:
                        _1212 = mem[192 len 4], Mask(224, 32, arg3) >> 32
                        require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                        _1278 = mem[_1212 + 192]
                        mem[ceil32(return_data.size) + 224 len floor32(mem[_1212 + 192])] = mem[_1212 + 224 len floor32(mem[_1212 + 192])]
                        require 0 < mem[ceil32(return_data.size) + 192]
                        _2136 = mem[ceil32(return_data.size) + 224]
                        mem[(32 * _1278) + ceil32(return_data.size) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(32 * _1278) + ceil32(return_data.size) + 228] = arg3
                        mem[(32 * _1278) + ceil32(return_data.size) + 260] = _2136
                        mem[(32 * _1278) + ceil32(return_data.size) + 324] = msg.sender
                        mem[(32 * _1278) + ceil32(return_data.size) + 356] = 240 * 24 * 3600
                        mem[(32 * _1278) + ceil32(return_data.size) + 292] = 160
                        mem[(32 * _1278) + ceil32(return_data.size) + 388] = 2
                        mem[(32 * _1278) + ceil32(return_data.size) + 420 len 0] = None
                        require ext_code.size(sub_8ed8ea7eAddress)
                        call sub_8ed8ea7eAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg3, _2136, 160, msg.sender, 240 * 24 * 3600, 2, mem[(32 * _1278) + ceil32(return_data.size) + 420 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _1278) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _1278) + (2 * ceil32(return_data.size)) + 224
                        require return_data.size >= 32
                        _2916 = mem[(32 * _1278) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32
                        require mem[(32 * _1278) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[(32 * _1278) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[(32 * _1278) + ceil32(return_data.size) + mem[(32 * _1278) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[(32 * _1278) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _1278) + ceil32(return_data.size) + mem[(32 * _1278) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
                        mem[(32 * _1278) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _1278) + ceil32(return_data.size) + mem[(32 * _1278) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                        _2982 = mem[(32 * _1278) + ceil32(return_data.size) + _2916 + 224]
                        mem[(32 * _1278) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _1278) + ceil32(return_data.size) + _2916 + 224])] = mem[(32 * _1278) + ceil32(return_data.size) + _2916 + 256 len floor32(mem[(32 * _1278) + ceil32(return_data.size) + _2916 + 224])]
                        require 1 < mem[(32 * _1278) + (2 * ceil32(return_data.size)) + 224]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, _2136
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args devAddress, mem[(32 * _1278) + (2 * ceil32(return_data.size)) + 288] - _2136
                    else:
                        _1214 = mem[192 len 4], Mask(224, 32, arg3) >> 32
                        require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                        _1279 = mem[_1214 + 192]
                        mem[ceil32(return_data.size) + 224 len floor32(mem[_1214 + 192])] = mem[_1214 + 224 len floor32(mem[_1214 + 192])]
                        require 0 < mem[ceil32(return_data.size) + 192]
                        _2140 = mem[ceil32(return_data.size) + 224]
                        mem[(32 * _1279) + ceil32(return_data.size) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(32 * _1279) + ceil32(return_data.size) + 228] = arg3
                        mem[(32 * _1279) + ceil32(return_data.size) + 260] = _2140
                        mem[(32 * _1279) + ceil32(return_data.size) + 324] = msg.sender
                        mem[(32 * _1279) + ceil32(return_data.size) + 356] = 240 * 24 * 3600
                        mem[(32 * _1279) + ceil32(return_data.size) + 292] = 160
                        mem[(32 * _1279) + ceil32(return_data.size) + 388] = 2
                        mem[(32 * _1279) + ceil32(return_data.size) + 420 len 0] = None
                        require ext_code.size(sub_8ed8ea7eAddress)
                        call sub_8ed8ea7eAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg3, _2140, 160, msg.sender, 240 * 24 * 3600, 2, mem[(32 * _1279) + ceil32(return_data.size) + 420 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _1279) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _1279) + (2 * ceil32(return_data.size)) + 224
                        require return_data.size >= 32
                        _2918 = mem[(32 * _1279) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32
                        require mem[(32 * _1279) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[(32 * _1279) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[(32 * _1279) + ceil32(return_data.size) + mem[(32 * _1279) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[(32 * _1279) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _1279) + ceil32(return_data.size) + mem[(32 * _1279) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
                        mem[(32 * _1279) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _1279) + ceil32(return_data.size) + mem[(32 * _1279) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                        _2983 = mem[(32 * _1279) + ceil32(return_data.size) + _2918 + 224]
                        mem[(32 * _1279) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _1279) + ceil32(return_data.size) + _2918 + 224])] = mem[(32 * _1279) + ceil32(return_data.size) + _2918 + 256 len floor32(mem[(32 * _1279) + ceil32(return_data.size) + _2918 + 224])]
                        require 1 < mem[(32 * _1279) + (2 * ceil32(return_data.size)) + 224]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, _2140
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args devAddress, mem[(32 * _1279) + (2 * ceil32(return_data.size)) + 288] - _2140
            else:
                if not arg2:
                    if not arg2:
                        _1216 = mem[192 len 4], Mask(224, 32, arg3) >> 32
                        require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                        _1280 = mem[_1216 + 192]
                        mem[ceil32(return_data.size) + 224 len floor32(mem[_1216 + 192])] = mem[_1216 + 224 len floor32(mem[_1216 + 192])]
                        require 0 < mem[ceil32(return_data.size) + 192]
                        _2144 = mem[ceil32(return_data.size) + 224]
                        mem[(32 * _1280) + ceil32(return_data.size) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(32 * _1280) + ceil32(return_data.size) + 228] = arg3
                        mem[(32 * _1280) + ceil32(return_data.size) + 260] = _2144
                        mem[(32 * _1280) + ceil32(return_data.size) + 324] = msg.sender
                        mem[(32 * _1280) + ceil32(return_data.size) + 356] = 240 * 24 * 3600
                        mem[(32 * _1280) + ceil32(return_data.size) + 292] = 160
                        mem[(32 * _1280) + ceil32(return_data.size) + 388] = 2
                        mem[(32 * _1280) + ceil32(return_data.size) + 420 len 0] = None
                        require ext_code.size(sub_8ed8ea7eAddress)
                        call sub_8ed8ea7eAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg3, _2144, 160, msg.sender, 240 * 24 * 3600, 2, mem[(32 * _1280) + ceil32(return_data.size) + 420 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _1280) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _1280) + (2 * ceil32(return_data.size)) + 224
                        require return_data.size >= 32
                        _2920 = mem[(32 * _1280) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32
                        require mem[(32 * _1280) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[(32 * _1280) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[(32 * _1280) + ceil32(return_data.size) + mem[(32 * _1280) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[(32 * _1280) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _1280) + ceil32(return_data.size) + mem[(32 * _1280) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
                        mem[(32 * _1280) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _1280) + ceil32(return_data.size) + mem[(32 * _1280) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                        _2984 = mem[(32 * _1280) + ceil32(return_data.size) + _2920 + 224]
                        mem[(32 * _1280) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _1280) + ceil32(return_data.size) + _2920 + 224])] = mem[(32 * _1280) + ceil32(return_data.size) + _2920 + 256 len floor32(mem[(32 * _1280) + ceil32(return_data.size) + _2920 + 224])]
                        require 1 < mem[(32 * _1280) + (2 * ceil32(return_data.size)) + 224]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, _2144
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args devAddress, mem[(32 * _1280) + (2 * ceil32(return_data.size)) + 288] - _2144
                    else:
                        _1218 = mem[192 len 4], Mask(224, 32, arg3) >> 32
                        require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                        _1281 = mem[_1218 + 192]
                        mem[ceil32(return_data.size) + 224 len floor32(mem[_1218 + 192])] = mem[_1218 + 224 len floor32(mem[_1218 + 192])]
                        require 0 < mem[ceil32(return_data.size) + 192]
                        _2148 = mem[ceil32(return_data.size) + 224]
                        mem[(32 * _1281) + ceil32(return_data.size) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(32 * _1281) + ceil32(return_data.size) + 228] = arg3
                        mem[(32 * _1281) + ceil32(return_data.size) + 260] = _2148
                        mem[(32 * _1281) + ceil32(return_data.size) + 324] = msg.sender
                        mem[(32 * _1281) + ceil32(return_data.size) + 356] = 240 * 24 * 3600
                        mem[(32 * _1281) + ceil32(return_data.size) + 292] = 160
                        mem[(32 * _1281) + ceil32(return_data.size) + 388] = 2
                        mem[(32 * _1281) + ceil32(return_data.size) + 420 len 0] = None
                        require ext_code.size(sub_8ed8ea7eAddress)
                        call sub_8ed8ea7eAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg3, _2148, 160, msg.sender, 240 * 24 * 3600, 2, mem[(32 * _1281) + ceil32(return_data.size) + 420 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _1281) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _1281) + (2 * ceil32(return_data.size)) + 224
                        require return_data.size >= 32
                        _2922 = mem[(32 * _1281) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32
                        require mem[(32 * _1281) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[(32 * _1281) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[(32 * _1281) + ceil32(return_data.size) + mem[(32 * _1281) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[(32 * _1281) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _1281) + ceil32(return_data.size) + mem[(32 * _1281) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
                        mem[(32 * _1281) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _1281) + ceil32(return_data.size) + mem[(32 * _1281) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                        _2985 = mem[(32 * _1281) + ceil32(return_data.size) + _2922 + 224]
                        mem[(32 * _1281) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _1281) + ceil32(return_data.size) + _2922 + 224])] = mem[(32 * _1281) + ceil32(return_data.size) + _2922 + 256 len floor32(mem[(32 * _1281) + ceil32(return_data.size) + _2922 + 224])]
                        require 1 < mem[(32 * _1281) + (2 * ceil32(return_data.size)) + 224]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, _2148
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args devAddress, mem[(32 * _1281) + (2 * ceil32(return_data.size)) + 288] - _2148
                else:
                    if not arg2:
                        _1220 = mem[192 len 4], Mask(224, 32, arg3) >> 32
                        require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                        _1282 = mem[_1220 + 192]
                        mem[ceil32(return_data.size) + 224 len floor32(mem[_1220 + 192])] = mem[_1220 + 224 len floor32(mem[_1220 + 192])]
                        require 0 < mem[ceil32(return_data.size) + 192]
                        _2152 = mem[ceil32(return_data.size) + 224]
                        mem[(32 * _1282) + ceil32(return_data.size) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(32 * _1282) + ceil32(return_data.size) + 228] = arg3
                        mem[(32 * _1282) + ceil32(return_data.size) + 260] = _2152
                        mem[(32 * _1282) + ceil32(return_data.size) + 324] = msg.sender
                        mem[(32 * _1282) + ceil32(return_data.size) + 356] = 240 * 24 * 3600
                        mem[(32 * _1282) + ceil32(return_data.size) + 292] = 160
                        mem[(32 * _1282) + ceil32(return_data.size) + 388] = 2
                        mem[(32 * _1282) + ceil32(return_data.size) + 420 len 0] = None
                        require ext_code.size(sub_8ed8ea7eAddress)
                        call sub_8ed8ea7eAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg3, _2152, 160, msg.sender, 240 * 24 * 3600, 2, mem[(32 * _1282) + ceil32(return_data.size) + 420 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _1282) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _1282) + (2 * ceil32(return_data.size)) + 224
                        require return_data.size >= 32
                        _2924 = mem[(32 * _1282) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32
                        require mem[(32 * _1282) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[(32 * _1282) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[(32 * _1282) + ceil32(return_data.size) + mem[(32 * _1282) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[(32 * _1282) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _1282) + ceil32(return_data.size) + mem[(32 * _1282) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
                        mem[(32 * _1282) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _1282) + ceil32(return_data.size) + mem[(32 * _1282) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                        _2986 = mem[(32 * _1282) + ceil32(return_data.size) + _2924 + 224]
                        mem[(32 * _1282) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _1282) + ceil32(return_data.size) + _2924 + 224])] = mem[(32 * _1282) + ceil32(return_data.size) + _2924 + 256 len floor32(mem[(32 * _1282) + ceil32(return_data.size) + _2924 + 224])]
                        require 1 < mem[(32 * _1282) + (2 * ceil32(return_data.size)) + 224]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, _2152
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args devAddress, mem[(32 * _1282) + (2 * ceil32(return_data.size)) + 288] - _2152
                    else:
                        _1222 = mem[192 len 4], Mask(224, 32, arg3) >> 32
                        require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                        _1283 = mem[_1222 + 192]
                        mem[ceil32(return_data.size) + 224 len floor32(mem[_1222 + 192])] = mem[_1222 + 224 len floor32(mem[_1222 + 192])]
                        require 0 < mem[ceil32(return_data.size) + 192]
                        _2156 = mem[ceil32(return_data.size) + 224]
                        mem[(32 * _1283) + ceil32(return_data.size) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(32 * _1283) + ceil32(return_data.size) + 228] = arg3
                        mem[(32 * _1283) + ceil32(return_data.size) + 260] = _2156
                        mem[(32 * _1283) + ceil32(return_data.size) + 324] = msg.sender
                        mem[(32 * _1283) + ceil32(return_data.size) + 356] = 240 * 24 * 3600
                        mem[(32 * _1283) + ceil32(return_data.size) + 292] = 160
                        mem[(32 * _1283) + ceil32(return_data.size) + 388] = 2
                        mem[(32 * _1283) + ceil32(return_data.size) + 420 len 0] = None
                        require ext_code.size(sub_8ed8ea7eAddress)
                        call sub_8ed8ea7eAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg3, _2156, 160, msg.sender, 240 * 24 * 3600, 2, mem[(32 * _1283) + ceil32(return_data.size) + 420 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _1283) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _1283) + (2 * ceil32(return_data.size)) + 224
                        require return_data.size >= 32
                        _2926 = mem[(32 * _1283) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32
                        require mem[(32 * _1283) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[(32 * _1283) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[(32 * _1283) + ceil32(return_data.size) + mem[(32 * _1283) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[(32 * _1283) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _1283) + ceil32(return_data.size) + mem[(32 * _1283) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
                        mem[(32 * _1283) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _1283) + ceil32(return_data.size) + mem[(32 * _1283) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                        _2987 = mem[(32 * _1283) + ceil32(return_data.size) + _2926 + 224]
                        mem[(32 * _1283) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _1283) + ceil32(return_data.size) + _2926 + 224])] = mem[(32 * _1283) + ceil32(return_data.size) + _2926 + 256 len floor32(mem[(32 * _1283) + ceil32(return_data.size) + _2926 + 224])]
                        require 1 < mem[(32 * _1283) + (2 * ceil32(return_data.size)) + 224]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, _2156
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args devAddress, mem[(32 * _1283) + (2 * ceil32(return_data.size)) + 288] - _2156
    else:
        if not arg2:
            mem[128] = address(ext_call.return_data[0])
            mem[160] = address(ext_call.return_data[0])
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args sub_8ed8ea7eAddress, arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
            mem[196] = arg2
            mem[228] = 64
            mem[260] = 2
            mem[292 len 0] = None
            require ext_code.size(sub_8ed8ea7eAddress)
            staticcall sub_8ed8ea7eAddress.getAmountsIn(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg2, Array(len=2, data=mem[292 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 192
            require return_data.size >= 32
            if not arg2:
                if not arg2:
                    _1224 = mem[192 len 4], Mask(224, 32, arg2) >> 32
                    require mem[192 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[192 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                    _1284 = mem[_1224 + 192]
                    mem[ceil32(return_data.size) + 224 len floor32(mem[_1224 + 192])] = mem[_1224 + 224 len floor32(mem[_1224 + 192])]
                    require 0 < mem[ceil32(return_data.size) + 192]
                    _2160 = mem[ceil32(return_data.size) + 224]
                    mem[(32 * _1284) + ceil32(return_data.size) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _1284) + ceil32(return_data.size) + 228] = arg2
                    mem[(32 * _1284) + ceil32(return_data.size) + 260] = _2160
                    mem[(32 * _1284) + ceil32(return_data.size) + 324] = msg.sender
                    mem[(32 * _1284) + ceil32(return_data.size) + 356] = 240 * 24 * 3600
                    mem[(32 * _1284) + ceil32(return_data.size) + 292] = 160
                    mem[(32 * _1284) + ceil32(return_data.size) + 388] = 2
                    mem[(32 * _1284) + ceil32(return_data.size) + 420 len 0] = None
                    require ext_code.size(sub_8ed8ea7eAddress)
                    call sub_8ed8ea7eAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _2160, 160, msg.sender, 240 * 24 * 3600, 2, mem[(32 * _1284) + ceil32(return_data.size) + 420 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _1284) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _1284) + (2 * ceil32(return_data.size)) + 224
                    require return_data.size >= 32
                    _2928 = mem[(32 * _1284) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _1284) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _1284) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[(32 * _1284) + ceil32(return_data.size) + mem[(32 * _1284) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224] <= 4294967296 and mem[(32 * _1284) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(32 * _1284) + ceil32(return_data.size) + mem[(32 * _1284) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 32 <= return_data.size
                    mem[(32 * _1284) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _1284) + ceil32(return_data.size) + mem[(32 * _1284) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]
                    _2988 = mem[(32 * _1284) + ceil32(return_data.size) + _2928 + 224]
                    mem[(32 * _1284) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _1284) + ceil32(return_data.size) + _2928 + 224])] = mem[(32 * _1284) + ceil32(return_data.size) + _2928 + 256 len floor32(mem[(32 * _1284) + ceil32(return_data.size) + _2928 + 224])]
                    require 1 < mem[(32 * _1284) + (2 * ceil32(return_data.size)) + 224]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, _2160
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args devAddress, mem[(32 * _1284) + (2 * ceil32(return_data.size)) + 288] - _2160
                else:
                    _1226 = mem[192 len 4], Mask(224, 32, arg2) >> 32
                    require mem[192 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[192 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                    _1285 = mem[_1226 + 192]
                    mem[ceil32(return_data.size) + 224 len floor32(mem[_1226 + 192])] = mem[_1226 + 224 len floor32(mem[_1226 + 192])]
                    require 0 < mem[ceil32(return_data.size) + 192]
                    _2164 = mem[ceil32(return_data.size) + 224]
                    mem[(32 * _1285) + ceil32(return_data.size) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _1285) + ceil32(return_data.size) + 228] = arg2
                    mem[(32 * _1285) + ceil32(return_data.size) + 260] = _2164
                    mem[(32 * _1285) + ceil32(return_data.size) + 324] = msg.sender
                    mem[(32 * _1285) + ceil32(return_data.size) + 356] = 240 * 24 * 3600
                    mem[(32 * _1285) + ceil32(return_data.size) + 292] = 160
                    mem[(32 * _1285) + ceil32(return_data.size) + 388] = 2
                    mem[(32 * _1285) + ceil32(return_data.size) + 420 len 0] = None
                    require ext_code.size(sub_8ed8ea7eAddress)
                    call sub_8ed8ea7eAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _2164, 160, msg.sender, 240 * 24 * 3600, 2, mem[(32 * _1285) + ceil32(return_data.size) + 420 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _1285) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _1285) + (2 * ceil32(return_data.size)) + 224
                    require return_data.size >= 32
                    _2930 = mem[(32 * _1285) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _1285) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _1285) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[(32 * _1285) + ceil32(return_data.size) + mem[(32 * _1285) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224] <= 4294967296 and mem[(32 * _1285) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(32 * _1285) + ceil32(return_data.size) + mem[(32 * _1285) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 32 <= return_data.size
                    mem[(32 * _1285) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _1285) + ceil32(return_data.size) + mem[(32 * _1285) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]
                    _2989 = mem[(32 * _1285) + ceil32(return_data.size) + _2930 + 224]
                    mem[(32 * _1285) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _1285) + ceil32(return_data.size) + _2930 + 224])] = mem[(32 * _1285) + ceil32(return_data.size) + _2930 + 256 len floor32(mem[(32 * _1285) + ceil32(return_data.size) + _2930 + 224])]
                    require 1 < mem[(32 * _1285) + (2 * ceil32(return_data.size)) + 224]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, _2164
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args devAddress, mem[(32 * _1285) + (2 * ceil32(return_data.size)) + 288] - _2164
            else:
                if not arg2:
                    _1228 = mem[192 len 4], Mask(224, 32, arg2) >> 32
                    require mem[192 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[192 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                    _1286 = mem[_1228 + 192]
                    mem[ceil32(return_data.size) + 224 len floor32(mem[_1228 + 192])] = mem[_1228 + 224 len floor32(mem[_1228 + 192])]
                    require 0 < mem[ceil32(return_data.size) + 192]
                    _2168 = mem[ceil32(return_data.size) + 224]
                    mem[(32 * _1286) + ceil32(return_data.size) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _1286) + ceil32(return_data.size) + 228] = arg2
                    mem[(32 * _1286) + ceil32(return_data.size) + 260] = _2168
                    mem[(32 * _1286) + ceil32(return_data.size) + 324] = msg.sender
                    mem[(32 * _1286) + ceil32(return_data.size) + 356] = 240 * 24 * 3600
                    mem[(32 * _1286) + ceil32(return_data.size) + 292] = 160
                    mem[(32 * _1286) + ceil32(return_data.size) + 388] = 2
                    mem[(32 * _1286) + ceil32(return_data.size) + 420 len 0] = None
                    require ext_code.size(sub_8ed8ea7eAddress)
                    call sub_8ed8ea7eAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _2168, 160, msg.sender, 240 * 24 * 3600, 2, mem[(32 * _1286) + ceil32(return_data.size) + 420 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _1286) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _1286) + (2 * ceil32(return_data.size)) + 224
                    require return_data.size >= 32
                    _2932 = mem[(32 * _1286) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _1286) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _1286) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[(32 * _1286) + ceil32(return_data.size) + mem[(32 * _1286) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224] <= 4294967296 and mem[(32 * _1286) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(32 * _1286) + ceil32(return_data.size) + mem[(32 * _1286) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 32 <= return_data.size
                    mem[(32 * _1286) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _1286) + ceil32(return_data.size) + mem[(32 * _1286) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]
                    _2990 = mem[(32 * _1286) + ceil32(return_data.size) + _2932 + 224]
                    mem[(32 * _1286) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _1286) + ceil32(return_data.size) + _2932 + 224])] = mem[(32 * _1286) + ceil32(return_data.size) + _2932 + 256 len floor32(mem[(32 * _1286) + ceil32(return_data.size) + _2932 + 224])]
                    require 1 < mem[(32 * _1286) + (2 * ceil32(return_data.size)) + 224]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, _2168
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args devAddress, mem[(32 * _1286) + (2 * ceil32(return_data.size)) + 288] - _2168
                else:
                    _1230 = mem[192 len 4], Mask(224, 32, arg2) >> 32
                    require mem[192 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[192 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                    _1287 = mem[_1230 + 192]
                    mem[ceil32(return_data.size) + 224 len floor32(mem[_1230 + 192])] = mem[_1230 + 224 len floor32(mem[_1230 + 192])]
                    require 0 < mem[ceil32(return_data.size) + 192]
                    _2172 = mem[ceil32(return_data.size) + 224]
                    mem[(32 * _1287) + ceil32(return_data.size) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _1287) + ceil32(return_data.size) + 228] = arg2
                    mem[(32 * _1287) + ceil32(return_data.size) + 260] = _2172
                    mem[(32 * _1287) + ceil32(return_data.size) + 324] = msg.sender
                    mem[(32 * _1287) + ceil32(return_data.size) + 356] = 240 * 24 * 3600
                    mem[(32 * _1287) + ceil32(return_data.size) + 292] = 160
                    mem[(32 * _1287) + ceil32(return_data.size) + 388] = 2
                    mem[(32 * _1287) + ceil32(return_data.size) + 420 len 0] = None
                    require ext_code.size(sub_8ed8ea7eAddress)
                    call sub_8ed8ea7eAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _2172, 160, msg.sender, 240 * 24 * 3600, 2, mem[(32 * _1287) + ceil32(return_data.size) + 420 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _1287) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _1287) + (2 * ceil32(return_data.size)) + 224
                    require return_data.size >= 32
                    _2934 = mem[(32 * _1287) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _1287) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _1287) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[(32 * _1287) + ceil32(return_data.size) + mem[(32 * _1287) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224] <= 4294967296 and mem[(32 * _1287) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(32 * _1287) + ceil32(return_data.size) + mem[(32 * _1287) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 32 <= return_data.size
                    mem[(32 * _1287) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _1287) + ceil32(return_data.size) + mem[(32 * _1287) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]
                    _2991 = mem[(32 * _1287) + ceil32(return_data.size) + _2934 + 224]
                    mem[(32 * _1287) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _1287) + ceil32(return_data.size) + _2934 + 224])] = mem[(32 * _1287) + ceil32(return_data.size) + _2934 + 256 len floor32(mem[(32 * _1287) + ceil32(return_data.size) + _2934 + 224])]
                    require 1 < mem[(32 * _1287) + (2 * ceil32(return_data.size)) + 224]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, _2172
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args devAddress, mem[(32 * _1287) + (2 * ceil32(return_data.size)) + 288] - _2172
        else:
            require not arg3
            mem[128] = address(ext_call.return_data[0])
            mem[160] = address(ext_call.return_data[0])
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args sub_8ed8ea7eAddress, arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
            mem[196] = arg2
            mem[228] = 64
            mem[260] = 2
            mem[292 len 0] = None
            require ext_code.size(sub_8ed8ea7eAddress)
            staticcall sub_8ed8ea7eAddress.getAmountsIn(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg2, Array(len=2, data=mem[292 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 192
            require return_data.size >= 32
            if not arg2:
                if not arg2:
                    if not arg2:
                        _1232 = mem[192 len 4], Mask(224, 32, arg2) >> 32
                        require mem[192 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[192 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                        _1288 = mem[_1232 + 192]
                        mem[ceil32(return_data.size) + 224 len floor32(mem[_1232 + 192])] = mem[_1232 + 224 len floor32(mem[_1232 + 192])]
                        require 0 < mem[ceil32(return_data.size) + 192]
                        _2176 = mem[ceil32(return_data.size) + 224]
                        mem[(32 * _1288) + ceil32(return_data.size) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(32 * _1288) + ceil32(return_data.size) + 228] = arg2
                        mem[(32 * _1288) + ceil32(return_data.size) + 260] = _2176
                        mem[(32 * _1288) + ceil32(return_data.size) + 324] = msg.sender
                        mem[(32 * _1288) + ceil32(return_data.size) + 356] = 240 * 24 * 3600
                        mem[(32 * _1288) + ceil32(return_data.size) + 292] = 160
                        mem[(32 * _1288) + ceil32(return_data.size) + 388] = 2
                        mem[(32 * _1288) + ceil32(return_data.size) + 420 len 0] = None
                        require ext_code.size(sub_8ed8ea7eAddress)
                        call sub_8ed8ea7eAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg2, _2176, 160, msg.sender, 240 * 24 * 3600, 2, mem[(32 * _1288) + ceil32(return_data.size) + 420 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _1288) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _1288) + (2 * ceil32(return_data.size)) + 224
                        require return_data.size >= 32
                        _2936 = mem[(32 * _1288) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32
                        require mem[(32 * _1288) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[(32 * _1288) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[(32 * _1288) + ceil32(return_data.size) + mem[(32 * _1288) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224] <= 4294967296 and mem[(32 * _1288) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(32 * _1288) + ceil32(return_data.size) + mem[(32 * _1288) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 32 <= return_data.size
                        mem[(32 * _1288) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _1288) + ceil32(return_data.size) + mem[(32 * _1288) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]
                        _2992 = mem[(32 * _1288) + ceil32(return_data.size) + _2936 + 224]
                        mem[(32 * _1288) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _1288) + ceil32(return_data.size) + _2936 + 224])] = mem[(32 * _1288) + ceil32(return_data.size) + _2936 + 256 len floor32(mem[(32 * _1288) + ceil32(return_data.size) + _2936 + 224])]
                        require 1 < mem[(32 * _1288) + (2 * ceil32(return_data.size)) + 224]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, _2176
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args devAddress, mem[(32 * _1288) + (2 * ceil32(return_data.size)) + 288] - _2176
                    else:
                        _1234 = mem[192 len 4], Mask(224, 32, arg2) >> 32
                        require mem[192 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[192 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                        _1289 = mem[_1234 + 192]
                        mem[ceil32(return_data.size) + 224 len floor32(mem[_1234 + 192])] = mem[_1234 + 224 len floor32(mem[_1234 + 192])]
                        require 0 < mem[ceil32(return_data.size) + 192]
                        _2180 = mem[ceil32(return_data.size) + 224]
                        mem[(32 * _1289) + ceil32(return_data.size) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(32 * _1289) + ceil32(return_data.size) + 228] = arg2
                        mem[(32 * _1289) + ceil32(return_data.size) + 260] = _2180
                        mem[(32 * _1289) + ceil32(return_data.size) + 324] = msg.sender
                        mem[(32 * _1289) + ceil32(return_data.size) + 356] = 240 * 24 * 3600
                        mem[(32 * _1289) + ceil32(return_data.size) + 292] = 160
                        mem[(32 * _1289) + ceil32(return_data.size) + 388] = 2
                        mem[(32 * _1289) + ceil32(return_data.size) + 420 len 0] = None
                        require ext_code.size(sub_8ed8ea7eAddress)
                        call sub_8ed8ea7eAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg2, _2180, 160, msg.sender, 240 * 24 * 3600, 2, mem[(32 * _1289) + ceil32(return_data.size) + 420 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _1289) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _1289) + (2 * ceil32(return_data.size)) + 224
                        require return_data.size >= 32
                        _2938 = mem[(32 * _1289) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32
                        require mem[(32 * _1289) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[(32 * _1289) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[(32 * _1289) + ceil32(return_data.size) + mem[(32 * _1289) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224] <= 4294967296 and mem[(32 * _1289) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(32 * _1289) + ceil32(return_data.size) + mem[(32 * _1289) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 32 <= return_data.size
                        mem[(32 * _1289) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _1289) + ceil32(return_data.size) + mem[(32 * _1289) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]
                        _2993 = mem[(32 * _1289) + ceil32(return_data.size) + _2938 + 224]
                        mem[(32 * _1289) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _1289) + ceil32(return_data.size) + _2938 + 224])] = mem[(32 * _1289) + ceil32(return_data.size) + _2938 + 256 len floor32(mem[(32 * _1289) + ceil32(return_data.size) + _2938 + 224])]
                        require 1 < mem[(32 * _1289) + (2 * ceil32(return_data.size)) + 224]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, _2180
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args devAddress, mem[(32 * _1289) + (2 * ceil32(return_data.size)) + 288] - _2180
                else:
                    if not arg2:
                        _1236 = mem[192 len 4], Mask(224, 32, arg2) >> 32
                        require mem[192 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[192 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                        _1290 = mem[_1236 + 192]
                        mem[ceil32(return_data.size) + 224 len floor32(mem[_1236 + 192])] = mem[_1236 + 224 len floor32(mem[_1236 + 192])]
                        require 0 < mem[ceil32(return_data.size) + 192]
                        _2184 = mem[ceil32(return_data.size) + 224]
                        mem[(32 * _1290) + ceil32(return_data.size) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(32 * _1290) + ceil32(return_data.size) + 228] = arg2
                        mem[(32 * _1290) + ceil32(return_data.size) + 260] = _2184
                        mem[(32 * _1290) + ceil32(return_data.size) + 324] = msg.sender
                        mem[(32 * _1290) + ceil32(return_data.size) + 356] = 240 * 24 * 3600
                        mem[(32 * _1290) + ceil32(return_data.size) + 292] = 160
                        mem[(32 * _1290) + ceil32(return_data.size) + 388] = 2
                        mem[(32 * _1290) + ceil32(return_data.size) + 420 len 0] = None
                        require ext_code.size(sub_8ed8ea7eAddress)
                        call sub_8ed8ea7eAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg2, _2184, 160, msg.sender, 240 * 24 * 3600, 2, mem[(32 * _1290) + ceil32(return_data.size) + 420 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _1290) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _1290) + (2 * ceil32(return_data.size)) + 224
                        require return_data.size >= 32
                        _2940 = mem[(32 * _1290) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32
                        require mem[(32 * _1290) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[(32 * _1290) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[(32 * _1290) + ceil32(return_data.size) + mem[(32 * _1290) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224] <= 4294967296 and mem[(32 * _1290) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(32 * _1290) + ceil32(return_data.size) + mem[(32 * _1290) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 32 <= return_data.size
                        mem[(32 * _1290) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _1290) + ceil32(return_data.size) + mem[(32 * _1290) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]
                        _2994 = mem[(32 * _1290) + ceil32(return_data.size) + _2940 + 224]
                        mem[(32 * _1290) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _1290) + ceil32(return_data.size) + _2940 + 224])] = mem[(32 * _1290) + ceil32(return_data.size) + _2940 + 256 len floor32(mem[(32 * _1290) + ceil32(return_data.size) + _2940 + 224])]
                        require 1 < mem[(32 * _1290) + (2 * ceil32(return_data.size)) + 224]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, _2184
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args devAddress, mem[(32 * _1290) + (2 * ceil32(return_data.size)) + 288] - _2184
                    else:
                        _1238 = mem[192 len 4], Mask(224, 32, arg2) >> 32
                        require mem[192 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[192 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                        _1291 = mem[_1238 + 192]
                        mem[ceil32(return_data.size) + 224 len floor32(mem[_1238 + 192])] = mem[_1238 + 224 len floor32(mem[_1238 + 192])]
                        require 0 < mem[ceil32(return_data.size) + 192]
                        _2188 = mem[ceil32(return_data.size) + 224]
                        mem[(32 * _1291) + ceil32(return_data.size) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(32 * _1291) + ceil32(return_data.size) + 228] = arg2
                        mem[(32 * _1291) + ceil32(return_data.size) + 260] = _2188
                        mem[(32 * _1291) + ceil32(return_data.size) + 324] = msg.sender
                        mem[(32 * _1291) + ceil32(return_data.size) + 356] = 240 * 24 * 3600
                        mem[(32 * _1291) + ceil32(return_data.size) + 292] = 160
                        mem[(32 * _1291) + ceil32(return_data.size) + 388] = 2
                        mem[(32 * _1291) + ceil32(return_data.size) + 420 len 0] = None
                        require ext_code.size(sub_8ed8ea7eAddress)
                        call sub_8ed8ea7eAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg2, _2188, 160, msg.sender, 240 * 24 * 3600, 2, mem[(32 * _1291) + ceil32(return_data.size) + 420 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _1291) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _1291) + (2 * ceil32(return_data.size)) + 224
                        require return_data.size >= 32
                        _2942 = mem[(32 * _1291) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32
                        require mem[(32 * _1291) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[(32 * _1291) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[(32 * _1291) + ceil32(return_data.size) + mem[(32 * _1291) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224] <= 4294967296 and mem[(32 * _1291) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(32 * _1291) + ceil32(return_data.size) + mem[(32 * _1291) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 32 <= return_data.size
                        mem[(32 * _1291) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _1291) + ceil32(return_data.size) + mem[(32 * _1291) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]
                        _2995 = mem[(32 * _1291) + ceil32(return_data.size) + _2942 + 224]
                        mem[(32 * _1291) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _1291) + ceil32(return_data.size) + _2942 + 224])] = mem[(32 * _1291) + ceil32(return_data.size) + _2942 + 256 len floor32(mem[(32 * _1291) + ceil32(return_data.size) + _2942 + 224])]
                        require 1 < mem[(32 * _1291) + (2 * ceil32(return_data.size)) + 224]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, _2188
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args devAddress, mem[(32 * _1291) + (2 * ceil32(return_data.size)) + 288] - _2188
            else:
                if not arg2:
                    if not arg2:
                        _1240 = mem[192 len 4], Mask(224, 32, arg2) >> 32
                        require mem[192 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[192 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                        _1292 = mem[_1240 + 192]
                        mem[ceil32(return_data.size) + 224 len floor32(mem[_1240 + 192])] = mem[_1240 + 224 len floor32(mem[_1240 + 192])]
                        require 0 < mem[ceil32(return_data.size) + 192]
                        _2192 = mem[ceil32(return_data.size) + 224]
                        mem[(32 * _1292) + ceil32(return_data.size) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(32 * _1292) + ceil32(return_data.size) + 228] = arg2
                        mem[(32 * _1292) + ceil32(return_data.size) + 260] = _2192
                        mem[(32 * _1292) + ceil32(return_data.size) + 324] = msg.sender
                        mem[(32 * _1292) + ceil32(return_data.size) + 356] = 240 * 24 * 3600
                        mem[(32 * _1292) + ceil32(return_data.size) + 292] = 160
                        mem[(32 * _1292) + ceil32(return_data.size) + 388] = 2
                        mem[(32 * _1292) + ceil32(return_data.size) + 420 len 0] = None
                        require ext_code.size(sub_8ed8ea7eAddress)
                        call sub_8ed8ea7eAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg2, _2192, 160, msg.sender, 240 * 24 * 3600, 2, mem[(32 * _1292) + ceil32(return_data.size) + 420 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _1292) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _1292) + (2 * ceil32(return_data.size)) + 224
                        require return_data.size >= 32
                        _2944 = mem[(32 * _1292) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32
                        require mem[(32 * _1292) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[(32 * _1292) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[(32 * _1292) + ceil32(return_data.size) + mem[(32 * _1292) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224] <= 4294967296 and mem[(32 * _1292) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(32 * _1292) + ceil32(return_data.size) + mem[(32 * _1292) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 32 <= return_data.size
                        mem[(32 * _1292) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _1292) + ceil32(return_data.size) + mem[(32 * _1292) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]
                        _2996 = mem[(32 * _1292) + ceil32(return_data.size) + _2944 + 224]
                        mem[(32 * _1292) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _1292) + ceil32(return_data.size) + _2944 + 224])] = mem[(32 * _1292) + ceil32(return_data.size) + _2944 + 256 len floor32(mem[(32 * _1292) + ceil32(return_data.size) + _2944 + 224])]
                        require 1 < mem[(32 * _1292) + (2 * ceil32(return_data.size)) + 224]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, _2192
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args devAddress, mem[(32 * _1292) + (2 * ceil32(return_data.size)) + 288] - _2192
                    else:
                        _1242 = mem[192 len 4], Mask(224, 32, arg2) >> 32
                        require mem[192 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[192 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                        _1293 = mem[_1242 + 192]
                        mem[ceil32(return_data.size) + 224 len floor32(mem[_1242 + 192])] = mem[_1242 + 224 len floor32(mem[_1242 + 192])]
                        require 0 < mem[ceil32(return_data.size) + 192]
                        _2196 = mem[ceil32(return_data.size) + 224]
                        mem[(32 * _1293) + ceil32(return_data.size) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(32 * _1293) + ceil32(return_data.size) + 228] = arg2
                        mem[(32 * _1293) + ceil32(return_data.size) + 260] = _2196
                        mem[(32 * _1293) + ceil32(return_data.size) + 324] = msg.sender
                        mem[(32 * _1293) + ceil32(return_data.size) + 356] = 240 * 24 * 3600
                        mem[(32 * _1293) + ceil32(return_data.size) + 292] = 160
                        mem[(32 * _1293) + ceil32(return_data.size) + 388] = 2
                        mem[(32 * _1293) + ceil32(return_data.size) + 420 len 0] = None
                        require ext_code.size(sub_8ed8ea7eAddress)
                        call sub_8ed8ea7eAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg2, _2196, 160, msg.sender, 240 * 24 * 3600, 2, mem[(32 * _1293) + ceil32(return_data.size) + 420 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _1293) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _1293) + (2 * ceil32(return_data.size)) + 224
                        require return_data.size >= 32
                        _2946 = mem[(32 * _1293) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32
                        require mem[(32 * _1293) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[(32 * _1293) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[(32 * _1293) + ceil32(return_data.size) + mem[(32 * _1293) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224] <= 4294967296 and mem[(32 * _1293) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(32 * _1293) + ceil32(return_data.size) + mem[(32 * _1293) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 32 <= return_data.size
                        mem[(32 * _1293) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _1293) + ceil32(return_data.size) + mem[(32 * _1293) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]
                        _2997 = mem[(32 * _1293) + ceil32(return_data.size) + _2946 + 224]
                        mem[(32 * _1293) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _1293) + ceil32(return_data.size) + _2946 + 224])] = mem[(32 * _1293) + ceil32(return_data.size) + _2946 + 256 len floor32(mem[(32 * _1293) + ceil32(return_data.size) + _2946 + 224])]
                        require 1 < mem[(32 * _1293) + (2 * ceil32(return_data.size)) + 224]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, _2196
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args devAddress, mem[(32 * _1293) + (2 * ceil32(return_data.size)) + 288] - _2196
                else:
                    if not arg2:
                        _1244 = mem[192 len 4], Mask(224, 32, arg2) >> 32
                        require mem[192 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[192 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                        _1294 = mem[_1244 + 192]
                        mem[ceil32(return_data.size) + 224 len floor32(mem[_1244 + 192])] = mem[_1244 + 224 len floor32(mem[_1244 + 192])]
                        require 0 < mem[ceil32(return_data.size) + 192]
                        _2200 = mem[ceil32(return_data.size) + 224]
                        mem[(32 * _1294) + ceil32(return_data.size) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(32 * _1294) + ceil32(return_data.size) + 228] = arg2
                        mem[(32 * _1294) + ceil32(return_data.size) + 260] = _2200
                        mem[(32 * _1294) + ceil32(return_data.size) + 324] = msg.sender
                        mem[(32 * _1294) + ceil32(return_data.size) + 356] = 240 * 24 * 3600
                        mem[(32 * _1294) + ceil32(return_data.size) + 292] = 160
                        mem[(32 * _1294) + ceil32(return_data.size) + 388] = 2
                        mem[(32 * _1294) + ceil32(return_data.size) + 420 len 0] = None
                        require ext_code.size(sub_8ed8ea7eAddress)
                        call sub_8ed8ea7eAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg2, _2200, 160, msg.sender, 240 * 24 * 3600, 2, mem[(32 * _1294) + ceil32(return_data.size) + 420 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _1294) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _1294) + (2 * ceil32(return_data.size)) + 224
                        require return_data.size >= 32
                        _2948 = mem[(32 * _1294) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32
                        require mem[(32 * _1294) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[(32 * _1294) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[(32 * _1294) + ceil32(return_data.size) + mem[(32 * _1294) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224] <= 4294967296 and mem[(32 * _1294) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(32 * _1294) + ceil32(return_data.size) + mem[(32 * _1294) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 32 <= return_data.size
                        mem[(32 * _1294) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _1294) + ceil32(return_data.size) + mem[(32 * _1294) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]
                        _2998 = mem[(32 * _1294) + ceil32(return_data.size) + _2948 + 224]
                        mem[(32 * _1294) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _1294) + ceil32(return_data.size) + _2948 + 224])] = mem[(32 * _1294) + ceil32(return_data.size) + _2948 + 256 len floor32(mem[(32 * _1294) + ceil32(return_data.size) + _2948 + 224])]
                        require 1 < mem[(32 * _1294) + (2 * ceil32(return_data.size)) + 224]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, _2200
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args devAddress, mem[(32 * _1294) + (2 * ceil32(return_data.size)) + 288] - _2200
                    else:
                        _1246 = mem[192 len 4], Mask(224, 32, arg2) >> 32
                        require mem[192 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[192 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                        _1295 = mem[_1246 + 192]
                        mem[ceil32(return_data.size) + 224 len floor32(mem[_1246 + 192])] = mem[_1246 + 224 len floor32(mem[_1246 + 192])]
                        require 0 < mem[ceil32(return_data.size) + 192]
                        _2204 = mem[ceil32(return_data.size) + 224]
                        mem[(32 * _1295) + ceil32(return_data.size) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(32 * _1295) + ceil32(return_data.size) + 228] = arg2
                        mem[(32 * _1295) + ceil32(return_data.size) + 260] = _2204
                        mem[(32 * _1295) + ceil32(return_data.size) + 324] = msg.sender
                        mem[(32 * _1295) + ceil32(return_data.size) + 356] = 240 * 24 * 3600
                        mem[(32 * _1295) + ceil32(return_data.size) + 292] = 160
                        mem[(32 * _1295) + ceil32(return_data.size) + 388] = 2
                        mem[(32 * _1295) + ceil32(return_data.size) + 420 len 0] = None
                        require ext_code.size(sub_8ed8ea7eAddress)
                        call sub_8ed8ea7eAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg2, _2204, 160, msg.sender, 240 * 24 * 3600, 2, mem[(32 * _1295) + ceil32(return_data.size) + 420 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _1295) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _1295) + (2 * ceil32(return_data.size)) + 224
                        require return_data.size >= 32
                        _2950 = mem[(32 * _1295) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32
                        require mem[(32 * _1295) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[(32 * _1295) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[(32 * _1295) + ceil32(return_data.size) + mem[(32 * _1295) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224] <= 4294967296 and mem[(32 * _1295) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(32 * _1295) + ceil32(return_data.size) + mem[(32 * _1295) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 32 <= return_data.size
                        mem[(32 * _1295) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _1295) + ceil32(return_data.size) + mem[(32 * _1295) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]
                        _2999 = mem[(32 * _1295) + ceil32(return_data.size) + _2950 + 224]
                        mem[(32 * _1295) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _1295) + ceil32(return_data.size) + _2950 + 224])] = mem[(32 * _1295) + ceil32(return_data.size) + _2950 + 256 len floor32(mem[(32 * _1295) + ceil32(return_data.size) + _2950 + 224])]
                        require 1 < mem[(32 * _1295) + (2 * ceil32(return_data.size)) + 224]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, _2204
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args devAddress, mem[(32 * _1295) + (2 * ceil32(return_data.size)) + 288] - _2204
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0xbbf737c0: address(arg1), arg2, arg3, Array(len=arg4.length, data=arg4[all])
}

function uniswapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[96] = 2
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
    require ext_code.size(sub_d4384dbeAddress)
    staticcall sub_d4384dbeAddress.getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(ext_call.return_data[0]), address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'Unauthorized'
    if not arg2:
        if not arg2:
            mem[128] = address(ext_call.return_data[0])
            mem[160] = address(ext_call.return_data[0])
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args sub_50d7d613Address, arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
            mem[196] = arg3
            mem[228] = 64
            mem[260] = 2
            mem[292 len 0] = None
            require ext_code.size(sub_8ed8ea7eAddress)
            staticcall sub_8ed8ea7eAddress.getAmountsIn(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg3, Array(len=2, data=mem[292 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 192
            require return_data.size >= 32
            if not arg2:
                if not arg2:
                    _1200 = mem[192 len 4], Mask(224, 32, arg3) >> 32
                    require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                    _1272 = mem[_1200 + 192]
                    mem[ceil32(return_data.size) + 224 len floor32(mem[_1200 + 192])] = mem[_1200 + 224 len floor32(mem[_1200 + 192])]
                    require 0 < mem[ceil32(return_data.size) + 192]
                    _2112 = mem[ceil32(return_data.size) + 224]
                    mem[(32 * _1272) + ceil32(return_data.size) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _1272) + ceil32(return_data.size) + 228] = arg3
                    mem[(32 * _1272) + ceil32(return_data.size) + 260] = _2112
                    mem[(32 * _1272) + ceil32(return_data.size) + 324] = msg.sender
                    mem[(32 * _1272) + ceil32(return_data.size) + 356] = 240 * 24 * 3600
                    mem[(32 * _1272) + ceil32(return_data.size) + 292] = 160
                    mem[(32 * _1272) + ceil32(return_data.size) + 388] = 2
                    mem[(32 * _1272) + ceil32(return_data.size) + 420 len 0] = None
                    require ext_code.size(sub_50d7d613Address)
                    call sub_50d7d613Address.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _2112, 160, msg.sender, 240 * 24 * 3600, 2, mem[(32 * _1272) + ceil32(return_data.size) + 420 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _1272) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _1272) + (2 * ceil32(return_data.size)) + 224
                    require return_data.size >= 32
                    _2904 = mem[(32 * _1272) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _1272) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _1272) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[(32 * _1272) + ceil32(return_data.size) + mem[(32 * _1272) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[(32 * _1272) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _1272) + ceil32(return_data.size) + mem[(32 * _1272) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
                    mem[(32 * _1272) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _1272) + ceil32(return_data.size) + mem[(32 * _1272) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                    _2976 = mem[(32 * _1272) + ceil32(return_data.size) + _2904 + 224]
                    mem[(32 * _1272) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _1272) + ceil32(return_data.size) + _2904 + 224])] = mem[(32 * _1272) + ceil32(return_data.size) + _2904 + 256 len floor32(mem[(32 * _1272) + ceil32(return_data.size) + _2904 + 224])]
                    require 1 < mem[(32 * _1272) + (2 * ceil32(return_data.size)) + 224]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, _2112
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args devAddress, mem[(32 * _1272) + (2 * ceil32(return_data.size)) + 288] - _2112
                else:
                    _1202 = mem[192 len 4], Mask(224, 32, arg3) >> 32
                    require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                    _1273 = mem[_1202 + 192]
                    mem[ceil32(return_data.size) + 224 len floor32(mem[_1202 + 192])] = mem[_1202 + 224 len floor32(mem[_1202 + 192])]
                    require 0 < mem[ceil32(return_data.size) + 192]
                    _2116 = mem[ceil32(return_data.size) + 224]
                    mem[(32 * _1273) + ceil32(return_data.size) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _1273) + ceil32(return_data.size) + 228] = arg3
                    mem[(32 * _1273) + ceil32(return_data.size) + 260] = _2116
                    mem[(32 * _1273) + ceil32(return_data.size) + 324] = msg.sender
                    mem[(32 * _1273) + ceil32(return_data.size) + 356] = 240 * 24 * 3600
                    mem[(32 * _1273) + ceil32(return_data.size) + 292] = 160
                    mem[(32 * _1273) + ceil32(return_data.size) + 388] = 2
                    mem[(32 * _1273) + ceil32(return_data.size) + 420 len 0] = None
                    require ext_code.size(sub_50d7d613Address)
                    call sub_50d7d613Address.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _2116, 160, msg.sender, 240 * 24 * 3600, 2, mem[(32 * _1273) + ceil32(return_data.size) + 420 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _1273) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _1273) + (2 * ceil32(return_data.size)) + 224
                    require return_data.size >= 32
                    _2906 = mem[(32 * _1273) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _1273) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _1273) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[(32 * _1273) + ceil32(return_data.size) + mem[(32 * _1273) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[(32 * _1273) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _1273) + ceil32(return_data.size) + mem[(32 * _1273) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
                    mem[(32 * _1273) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _1273) + ceil32(return_data.size) + mem[(32 * _1273) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                    _2977 = mem[(32 * _1273) + ceil32(return_data.size) + _2906 + 224]
                    mem[(32 * _1273) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _1273) + ceil32(return_data.size) + _2906 + 224])] = mem[(32 * _1273) + ceil32(return_data.size) + _2906 + 256 len floor32(mem[(32 * _1273) + ceil32(return_data.size) + _2906 + 224])]
                    require 1 < mem[(32 * _1273) + (2 * ceil32(return_data.size)) + 224]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, _2116
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args devAddress, mem[(32 * _1273) + (2 * ceil32(return_data.size)) + 288] - _2116
            else:
                if not arg2:
                    _1204 = mem[192 len 4], Mask(224, 32, arg3) >> 32
                    require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                    _1274 = mem[_1204 + 192]
                    mem[ceil32(return_data.size) + 224 len floor32(mem[_1204 + 192])] = mem[_1204 + 224 len floor32(mem[_1204 + 192])]
                    require 0 < mem[ceil32(return_data.size) + 192]
                    _2120 = mem[ceil32(return_data.size) + 224]
                    mem[(32 * _1274) + ceil32(return_data.size) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _1274) + ceil32(return_data.size) + 228] = arg3
                    mem[(32 * _1274) + ceil32(return_data.size) + 260] = _2120
                    mem[(32 * _1274) + ceil32(return_data.size) + 324] = msg.sender
                    mem[(32 * _1274) + ceil32(return_data.size) + 356] = 240 * 24 * 3600
                    mem[(32 * _1274) + ceil32(return_data.size) + 292] = 160
                    mem[(32 * _1274) + ceil32(return_data.size) + 388] = 2
                    mem[(32 * _1274) + ceil32(return_data.size) + 420 len 0] = None
                    require ext_code.size(sub_50d7d613Address)
                    call sub_50d7d613Address.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _2120, 160, msg.sender, 240 * 24 * 3600, 2, mem[(32 * _1274) + ceil32(return_data.size) + 420 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _1274) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _1274) + (2 * ceil32(return_data.size)) + 224
                    require return_data.size >= 32
                    _2908 = mem[(32 * _1274) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _1274) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _1274) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[(32 * _1274) + ceil32(return_data.size) + mem[(32 * _1274) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[(32 * _1274) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _1274) + ceil32(return_data.size) + mem[(32 * _1274) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
                    mem[(32 * _1274) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _1274) + ceil32(return_data.size) + mem[(32 * _1274) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                    _2978 = mem[(32 * _1274) + ceil32(return_data.size) + _2908 + 224]
                    mem[(32 * _1274) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _1274) + ceil32(return_data.size) + _2908 + 224])] = mem[(32 * _1274) + ceil32(return_data.size) + _2908 + 256 len floor32(mem[(32 * _1274) + ceil32(return_data.size) + _2908 + 224])]
                    require 1 < mem[(32 * _1274) + (2 * ceil32(return_data.size)) + 224]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, _2120
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args devAddress, mem[(32 * _1274) + (2 * ceil32(return_data.size)) + 288] - _2120
                else:
                    _1206 = mem[192 len 4], Mask(224, 32, arg3) >> 32
                    require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                    _1275 = mem[_1206 + 192]
                    mem[ceil32(return_data.size) + 224 len floor32(mem[_1206 + 192])] = mem[_1206 + 224 len floor32(mem[_1206 + 192])]
                    require 0 < mem[ceil32(return_data.size) + 192]
                    _2124 = mem[ceil32(return_data.size) + 224]
                    mem[(32 * _1275) + ceil32(return_data.size) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _1275) + ceil32(return_data.size) + 228] = arg3
                    mem[(32 * _1275) + ceil32(return_data.size) + 260] = _2124
                    mem[(32 * _1275) + ceil32(return_data.size) + 324] = msg.sender
                    mem[(32 * _1275) + ceil32(return_data.size) + 356] = 240 * 24 * 3600
                    mem[(32 * _1275) + ceil32(return_data.size) + 292] = 160
                    mem[(32 * _1275) + ceil32(return_data.size) + 388] = 2
                    mem[(32 * _1275) + ceil32(return_data.size) + 420 len 0] = None
                    require ext_code.size(sub_50d7d613Address)
                    call sub_50d7d613Address.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _2124, 160, msg.sender, 240 * 24 * 3600, 2, mem[(32 * _1275) + ceil32(return_data.size) + 420 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _1275) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _1275) + (2 * ceil32(return_data.size)) + 224
                    require return_data.size >= 32
                    _2910 = mem[(32 * _1275) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _1275) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _1275) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[(32 * _1275) + ceil32(return_data.size) + mem[(32 * _1275) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[(32 * _1275) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _1275) + ceil32(return_data.size) + mem[(32 * _1275) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
                    mem[(32 * _1275) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _1275) + ceil32(return_data.size) + mem[(32 * _1275) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                    _2979 = mem[(32 * _1275) + ceil32(return_data.size) + _2910 + 224]
                    mem[(32 * _1275) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _1275) + ceil32(return_data.size) + _2910 + 224])] = mem[(32 * _1275) + ceil32(return_data.size) + _2910 + 256 len floor32(mem[(32 * _1275) + ceil32(return_data.size) + _2910 + 224])]
                    require 1 < mem[(32 * _1275) + (2 * ceil32(return_data.size)) + 224]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, _2124
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args devAddress, mem[(32 * _1275) + (2 * ceil32(return_data.size)) + 288] - _2124
        else:
            require not arg3
            mem[128] = address(ext_call.return_data[0])
            mem[160] = address(ext_call.return_data[0])
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args sub_50d7d613Address, arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
            mem[196] = arg3
            mem[228] = 64
            mem[260] = 2
            mem[292 len 0] = None
            require ext_code.size(sub_8ed8ea7eAddress)
            staticcall sub_8ed8ea7eAddress.getAmountsIn(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg3, Array(len=2, data=mem[292 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 192
            require return_data.size >= 32
            if not arg2:
                if not arg2:
                    if not arg2:
                        _1208 = mem[192 len 4], Mask(224, 32, arg3) >> 32
                        require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                        _1276 = mem[_1208 + 192]
                        mem[ceil32(return_data.size) + 224 len floor32(mem[_1208 + 192])] = mem[_1208 + 224 len floor32(mem[_1208 + 192])]
                        require 0 < mem[ceil32(return_data.size) + 192]
                        _2128 = mem[ceil32(return_data.size) + 224]
                        mem[(32 * _1276) + ceil32(return_data.size) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(32 * _1276) + ceil32(return_data.size) + 228] = arg3
                        mem[(32 * _1276) + ceil32(return_data.size) + 260] = _2128
                        mem[(32 * _1276) + ceil32(return_data.size) + 324] = msg.sender
                        mem[(32 * _1276) + ceil32(return_data.size) + 356] = 240 * 24 * 3600
                        mem[(32 * _1276) + ceil32(return_data.size) + 292] = 160
                        mem[(32 * _1276) + ceil32(return_data.size) + 388] = 2
                        mem[(32 * _1276) + ceil32(return_data.size) + 420 len 0] = None
                        require ext_code.size(sub_50d7d613Address)
                        call sub_50d7d613Address.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg3, _2128, 160, msg.sender, 240 * 24 * 3600, 2, mem[(32 * _1276) + ceil32(return_data.size) + 420 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _1276) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _1276) + (2 * ceil32(return_data.size)) + 224
                        require return_data.size >= 32
                        _2912 = mem[(32 * _1276) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32
                        require mem[(32 * _1276) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[(32 * _1276) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[(32 * _1276) + ceil32(return_data.size) + mem[(32 * _1276) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[(32 * _1276) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _1276) + ceil32(return_data.size) + mem[(32 * _1276) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
                        mem[(32 * _1276) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _1276) + ceil32(return_data.size) + mem[(32 * _1276) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                        _2980 = mem[(32 * _1276) + ceil32(return_data.size) + _2912 + 224]
                        mem[(32 * _1276) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _1276) + ceil32(return_data.size) + _2912 + 224])] = mem[(32 * _1276) + ceil32(return_data.size) + _2912 + 256 len floor32(mem[(32 * _1276) + ceil32(return_data.size) + _2912 + 224])]
                        require 1 < mem[(32 * _1276) + (2 * ceil32(return_data.size)) + 224]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, _2128
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args devAddress, mem[(32 * _1276) + (2 * ceil32(return_data.size)) + 288] - _2128
                    else:
                        _1210 = mem[192 len 4], Mask(224, 32, arg3) >> 32
                        require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                        _1277 = mem[_1210 + 192]
                        mem[ceil32(return_data.size) + 224 len floor32(mem[_1210 + 192])] = mem[_1210 + 224 len floor32(mem[_1210 + 192])]
                        require 0 < mem[ceil32(return_data.size) + 192]
                        _2132 = mem[ceil32(return_data.size) + 224]
                        mem[(32 * _1277) + ceil32(return_data.size) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(32 * _1277) + ceil32(return_data.size) + 228] = arg3
                        mem[(32 * _1277) + ceil32(return_data.size) + 260] = _2132
                        mem[(32 * _1277) + ceil32(return_data.size) + 324] = msg.sender
                        mem[(32 * _1277) + ceil32(return_data.size) + 356] = 240 * 24 * 3600
                        mem[(32 * _1277) + ceil32(return_data.size) + 292] = 160
                        mem[(32 * _1277) + ceil32(return_data.size) + 388] = 2
                        mem[(32 * _1277) + ceil32(return_data.size) + 420 len 0] = None
                        require ext_code.size(sub_50d7d613Address)
                        call sub_50d7d613Address.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg3, _2132, 160, msg.sender, 240 * 24 * 3600, 2, mem[(32 * _1277) + ceil32(return_data.size) + 420 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _1277) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _1277) + (2 * ceil32(return_data.size)) + 224
                        require return_data.size >= 32
                        _2914 = mem[(32 * _1277) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32
                        require mem[(32 * _1277) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[(32 * _1277) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[(32 * _1277) + ceil32(return_data.size) + mem[(32 * _1277) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[(32 * _1277) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _1277) + ceil32(return_data.size) + mem[(32 * _1277) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
                        mem[(32 * _1277) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _1277) + ceil32(return_data.size) + mem[(32 * _1277) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                        _2981 = mem[(32 * _1277) + ceil32(return_data.size) + _2914 + 224]
                        mem[(32 * _1277) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _1277) + ceil32(return_data.size) + _2914 + 224])] = mem[(32 * _1277) + ceil32(return_data.size) + _2914 + 256 len floor32(mem[(32 * _1277) + ceil32(return_data.size) + _2914 + 224])]
                        require 1 < mem[(32 * _1277) + (2 * ceil32(return_data.size)) + 224]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, _2132
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args devAddress, mem[(32 * _1277) + (2 * ceil32(return_data.size)) + 288] - _2132
                else:
                    if not arg2:
                        _1212 = mem[192 len 4], Mask(224, 32, arg3) >> 32
                        require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                        _1278 = mem[_1212 + 192]
                        mem[ceil32(return_data.size) + 224 len floor32(mem[_1212 + 192])] = mem[_1212 + 224 len floor32(mem[_1212 + 192])]
                        require 0 < mem[ceil32(return_data.size) + 192]
                        _2136 = mem[ceil32(return_data.size) + 224]
                        mem[(32 * _1278) + ceil32(return_data.size) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(32 * _1278) + ceil32(return_data.size) + 228] = arg3
                        mem[(32 * _1278) + ceil32(return_data.size) + 260] = _2136
                        mem[(32 * _1278) + ceil32(return_data.size) + 324] = msg.sender
                        mem[(32 * _1278) + ceil32(return_data.size) + 356] = 240 * 24 * 3600
                        mem[(32 * _1278) + ceil32(return_data.size) + 292] = 160
                        mem[(32 * _1278) + ceil32(return_data.size) + 388] = 2
                        mem[(32 * _1278) + ceil32(return_data.size) + 420 len 0] = None
                        require ext_code.size(sub_50d7d613Address)
                        call sub_50d7d613Address.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg3, _2136, 160, msg.sender, 240 * 24 * 3600, 2, mem[(32 * _1278) + ceil32(return_data.size) + 420 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _1278) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _1278) + (2 * ceil32(return_data.size)) + 224
                        require return_data.size >= 32
                        _2916 = mem[(32 * _1278) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32
                        require mem[(32 * _1278) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[(32 * _1278) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[(32 * _1278) + ceil32(return_data.size) + mem[(32 * _1278) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[(32 * _1278) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _1278) + ceil32(return_data.size) + mem[(32 * _1278) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
                        mem[(32 * _1278) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _1278) + ceil32(return_data.size) + mem[(32 * _1278) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                        _2982 = mem[(32 * _1278) + ceil32(return_data.size) + _2916 + 224]
                        mem[(32 * _1278) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _1278) + ceil32(return_data.size) + _2916 + 224])] = mem[(32 * _1278) + ceil32(return_data.size) + _2916 + 256 len floor32(mem[(32 * _1278) + ceil32(return_data.size) + _2916 + 224])]
                        require 1 < mem[(32 * _1278) + (2 * ceil32(return_data.size)) + 224]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, _2136
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args devAddress, mem[(32 * _1278) + (2 * ceil32(return_data.size)) + 288] - _2136
                    else:
                        _1214 = mem[192 len 4], Mask(224, 32, arg3) >> 32
                        require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                        _1279 = mem[_1214 + 192]
                        mem[ceil32(return_data.size) + 224 len floor32(mem[_1214 + 192])] = mem[_1214 + 224 len floor32(mem[_1214 + 192])]
                        require 0 < mem[ceil32(return_data.size) + 192]
                        _2140 = mem[ceil32(return_data.size) + 224]
                        mem[(32 * _1279) + ceil32(return_data.size) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(32 * _1279) + ceil32(return_data.size) + 228] = arg3
                        mem[(32 * _1279) + ceil32(return_data.size) + 260] = _2140
                        mem[(32 * _1279) + ceil32(return_data.size) + 324] = msg.sender
                        mem[(32 * _1279) + ceil32(return_data.size) + 356] = 240 * 24 * 3600
                        mem[(32 * _1279) + ceil32(return_data.size) + 292] = 160
                        mem[(32 * _1279) + ceil32(return_data.size) + 388] = 2
                        mem[(32 * _1279) + ceil32(return_data.size) + 420 len 0] = None
                        require ext_code.size(sub_50d7d613Address)
                        call sub_50d7d613Address.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg3, _2140, 160, msg.sender, 240 * 24 * 3600, 2, mem[(32 * _1279) + ceil32(return_data.size) + 420 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _1279) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _1279) + (2 * ceil32(return_data.size)) + 224
                        require return_data.size >= 32
                        _2918 = mem[(32 * _1279) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32
                        require mem[(32 * _1279) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[(32 * _1279) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[(32 * _1279) + ceil32(return_data.size) + mem[(32 * _1279) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[(32 * _1279) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _1279) + ceil32(return_data.size) + mem[(32 * _1279) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
                        mem[(32 * _1279) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _1279) + ceil32(return_data.size) + mem[(32 * _1279) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                        _2983 = mem[(32 * _1279) + ceil32(return_data.size) + _2918 + 224]
                        mem[(32 * _1279) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _1279) + ceil32(return_data.size) + _2918 + 224])] = mem[(32 * _1279) + ceil32(return_data.size) + _2918 + 256 len floor32(mem[(32 * _1279) + ceil32(return_data.size) + _2918 + 224])]
                        require 1 < mem[(32 * _1279) + (2 * ceil32(return_data.size)) + 224]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, _2140
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args devAddress, mem[(32 * _1279) + (2 * ceil32(return_data.size)) + 288] - _2140
            else:
                if not arg2:
                    if not arg2:
                        _1216 = mem[192 len 4], Mask(224, 32, arg3) >> 32
                        require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                        _1280 = mem[_1216 + 192]
                        mem[ceil32(return_data.size) + 224 len floor32(mem[_1216 + 192])] = mem[_1216 + 224 len floor32(mem[_1216 + 192])]
                        require 0 < mem[ceil32(return_data.size) + 192]
                        _2144 = mem[ceil32(return_data.size) + 224]
                        mem[(32 * _1280) + ceil32(return_data.size) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(32 * _1280) + ceil32(return_data.size) + 228] = arg3
                        mem[(32 * _1280) + ceil32(return_data.size) + 260] = _2144
                        mem[(32 * _1280) + ceil32(return_data.size) + 324] = msg.sender
                        mem[(32 * _1280) + ceil32(return_data.size) + 356] = 240 * 24 * 3600
                        mem[(32 * _1280) + ceil32(return_data.size) + 292] = 160
                        mem[(32 * _1280) + ceil32(return_data.size) + 388] = 2
                        mem[(32 * _1280) + ceil32(return_data.size) + 420 len 0] = None
                        require ext_code.size(sub_50d7d613Address)
                        call sub_50d7d613Address.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg3, _2144, 160, msg.sender, 240 * 24 * 3600, 2, mem[(32 * _1280) + ceil32(return_data.size) + 420 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _1280) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _1280) + (2 * ceil32(return_data.size)) + 224
                        require return_data.size >= 32
                        _2920 = mem[(32 * _1280) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32
                        require mem[(32 * _1280) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[(32 * _1280) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[(32 * _1280) + ceil32(return_data.size) + mem[(32 * _1280) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[(32 * _1280) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _1280) + ceil32(return_data.size) + mem[(32 * _1280) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
                        mem[(32 * _1280) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _1280) + ceil32(return_data.size) + mem[(32 * _1280) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                        _2984 = mem[(32 * _1280) + ceil32(return_data.size) + _2920 + 224]
                        mem[(32 * _1280) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _1280) + ceil32(return_data.size) + _2920 + 224])] = mem[(32 * _1280) + ceil32(return_data.size) + _2920 + 256 len floor32(mem[(32 * _1280) + ceil32(return_data.size) + _2920 + 224])]
                        require 1 < mem[(32 * _1280) + (2 * ceil32(return_data.size)) + 224]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, _2144
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args devAddress, mem[(32 * _1280) + (2 * ceil32(return_data.size)) + 288] - _2144
                    else:
                        _1218 = mem[192 len 4], Mask(224, 32, arg3) >> 32
                        require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                        _1281 = mem[_1218 + 192]
                        mem[ceil32(return_data.size) + 224 len floor32(mem[_1218 + 192])] = mem[_1218 + 224 len floor32(mem[_1218 + 192])]
                        require 0 < mem[ceil32(return_data.size) + 192]
                        _2148 = mem[ceil32(return_data.size) + 224]
                        mem[(32 * _1281) + ceil32(return_data.size) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(32 * _1281) + ceil32(return_data.size) + 228] = arg3
                        mem[(32 * _1281) + ceil32(return_data.size) + 260] = _2148
                        mem[(32 * _1281) + ceil32(return_data.size) + 324] = msg.sender
                        mem[(32 * _1281) + ceil32(return_data.size) + 356] = 240 * 24 * 3600
                        mem[(32 * _1281) + ceil32(return_data.size) + 292] = 160
                        mem[(32 * _1281) + ceil32(return_data.size) + 388] = 2
                        mem[(32 * _1281) + ceil32(return_data.size) + 420 len 0] = None
                        require ext_code.size(sub_50d7d613Address)
                        call sub_50d7d613Address.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg3, _2148, 160, msg.sender, 240 * 24 * 3600, 2, mem[(32 * _1281) + ceil32(return_data.size) + 420 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _1281) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _1281) + (2 * ceil32(return_data.size)) + 224
                        require return_data.size >= 32
                        _2922 = mem[(32 * _1281) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32
                        require mem[(32 * _1281) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[(32 * _1281) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[(32 * _1281) + ceil32(return_data.size) + mem[(32 * _1281) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[(32 * _1281) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _1281) + ceil32(return_data.size) + mem[(32 * _1281) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
                        mem[(32 * _1281) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _1281) + ceil32(return_data.size) + mem[(32 * _1281) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                        _2985 = mem[(32 * _1281) + ceil32(return_data.size) + _2922 + 224]
                        mem[(32 * _1281) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _1281) + ceil32(return_data.size) + _2922 + 224])] = mem[(32 * _1281) + ceil32(return_data.size) + _2922 + 256 len floor32(mem[(32 * _1281) + ceil32(return_data.size) + _2922 + 224])]
                        require 1 < mem[(32 * _1281) + (2 * ceil32(return_data.size)) + 224]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, _2148
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args devAddress, mem[(32 * _1281) + (2 * ceil32(return_data.size)) + 288] - _2148
                else:
                    if not arg2:
                        _1220 = mem[192 len 4], Mask(224, 32, arg3) >> 32
                        require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                        _1282 = mem[_1220 + 192]
                        mem[ceil32(return_data.size) + 224 len floor32(mem[_1220 + 192])] = mem[_1220 + 224 len floor32(mem[_1220 + 192])]
                        require 0 < mem[ceil32(return_data.size) + 192]
                        _2152 = mem[ceil32(return_data.size) + 224]
                        mem[(32 * _1282) + ceil32(return_data.size) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(32 * _1282) + ceil32(return_data.size) + 228] = arg3
                        mem[(32 * _1282) + ceil32(return_data.size) + 260] = _2152
                        mem[(32 * _1282) + ceil32(return_data.size) + 324] = msg.sender
                        mem[(32 * _1282) + ceil32(return_data.size) + 356] = 240 * 24 * 3600
                        mem[(32 * _1282) + ceil32(return_data.size) + 292] = 160
                        mem[(32 * _1282) + ceil32(return_data.size) + 388] = 2
                        mem[(32 * _1282) + ceil32(return_data.size) + 420 len 0] = None
                        require ext_code.size(sub_50d7d613Address)
                        call sub_50d7d613Address.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg3, _2152, 160, msg.sender, 240 * 24 * 3600, 2, mem[(32 * _1282) + ceil32(return_data.size) + 420 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _1282) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _1282) + (2 * ceil32(return_data.size)) + 224
                        require return_data.size >= 32
                        _2924 = mem[(32 * _1282) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32
                        require mem[(32 * _1282) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[(32 * _1282) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[(32 * _1282) + ceil32(return_data.size) + mem[(32 * _1282) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[(32 * _1282) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _1282) + ceil32(return_data.size) + mem[(32 * _1282) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
                        mem[(32 * _1282) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _1282) + ceil32(return_data.size) + mem[(32 * _1282) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                        _2986 = mem[(32 * _1282) + ceil32(return_data.size) + _2924 + 224]
                        mem[(32 * _1282) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _1282) + ceil32(return_data.size) + _2924 + 224])] = mem[(32 * _1282) + ceil32(return_data.size) + _2924 + 256 len floor32(mem[(32 * _1282) + ceil32(return_data.size) + _2924 + 224])]
                        require 1 < mem[(32 * _1282) + (2 * ceil32(return_data.size)) + 224]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, _2152
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args devAddress, mem[(32 * _1282) + (2 * ceil32(return_data.size)) + 288] - _2152
                    else:
                        _1222 = mem[192 len 4], Mask(224, 32, arg3) >> 32
                        require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                        _1283 = mem[_1222 + 192]
                        mem[ceil32(return_data.size) + 224 len floor32(mem[_1222 + 192])] = mem[_1222 + 224 len floor32(mem[_1222 + 192])]
                        require 0 < mem[ceil32(return_data.size) + 192]
                        _2156 = mem[ceil32(return_data.size) + 224]
                        mem[(32 * _1283) + ceil32(return_data.size) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(32 * _1283) + ceil32(return_data.size) + 228] = arg3
                        mem[(32 * _1283) + ceil32(return_data.size) + 260] = _2156
                        mem[(32 * _1283) + ceil32(return_data.size) + 324] = msg.sender
                        mem[(32 * _1283) + ceil32(return_data.size) + 356] = 240 * 24 * 3600
                        mem[(32 * _1283) + ceil32(return_data.size) + 292] = 160
                        mem[(32 * _1283) + ceil32(return_data.size) + 388] = 2
                        mem[(32 * _1283) + ceil32(return_data.size) + 420 len 0] = None
                        require ext_code.size(sub_50d7d613Address)
                        call sub_50d7d613Address.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg3, _2156, 160, msg.sender, 240 * 24 * 3600, 2, mem[(32 * _1283) + ceil32(return_data.size) + 420 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _1283) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _1283) + (2 * ceil32(return_data.size)) + 224
                        require return_data.size >= 32
                        _2926 = mem[(32 * _1283) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32
                        require mem[(32 * _1283) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[(32 * _1283) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[(32 * _1283) + ceil32(return_data.size) + mem[(32 * _1283) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[(32 * _1283) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _1283) + ceil32(return_data.size) + mem[(32 * _1283) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
                        mem[(32 * _1283) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _1283) + ceil32(return_data.size) + mem[(32 * _1283) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                        _2987 = mem[(32 * _1283) + ceil32(return_data.size) + _2926 + 224]
                        mem[(32 * _1283) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _1283) + ceil32(return_data.size) + _2926 + 224])] = mem[(32 * _1283) + ceil32(return_data.size) + _2926 + 256 len floor32(mem[(32 * _1283) + ceil32(return_data.size) + _2926 + 224])]
                        require 1 < mem[(32 * _1283) + (2 * ceil32(return_data.size)) + 224]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, _2156
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args devAddress, mem[(32 * _1283) + (2 * ceil32(return_data.size)) + 288] - _2156
    else:
        if not arg2:
            mem[128] = address(ext_call.return_data[0])
            mem[160] = address(ext_call.return_data[0])
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args sub_50d7d613Address, arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
            mem[196] = arg2
            mem[228] = 64
            mem[260] = 2
            mem[292 len 0] = None
            require ext_code.size(sub_8ed8ea7eAddress)
            staticcall sub_8ed8ea7eAddress.getAmountsIn(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg2, Array(len=2, data=mem[292 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 192
            require return_data.size >= 32
            if not arg2:
                if not arg2:
                    _1224 = mem[192 len 4], Mask(224, 32, arg2) >> 32
                    require mem[192 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[192 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                    _1284 = mem[_1224 + 192]
                    mem[ceil32(return_data.size) + 224 len floor32(mem[_1224 + 192])] = mem[_1224 + 224 len floor32(mem[_1224 + 192])]
                    require 0 < mem[ceil32(return_data.size) + 192]
                    _2160 = mem[ceil32(return_data.size) + 224]
                    mem[(32 * _1284) + ceil32(return_data.size) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _1284) + ceil32(return_data.size) + 228] = arg2
                    mem[(32 * _1284) + ceil32(return_data.size) + 260] = _2160
                    mem[(32 * _1284) + ceil32(return_data.size) + 324] = msg.sender
                    mem[(32 * _1284) + ceil32(return_data.size) + 356] = 240 * 24 * 3600
                    mem[(32 * _1284) + ceil32(return_data.size) + 292] = 160
                    mem[(32 * _1284) + ceil32(return_data.size) + 388] = 2
                    mem[(32 * _1284) + ceil32(return_data.size) + 420 len 0] = None
                    require ext_code.size(sub_50d7d613Address)
                    call sub_50d7d613Address.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _2160, 160, msg.sender, 240 * 24 * 3600, 2, mem[(32 * _1284) + ceil32(return_data.size) + 420 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _1284) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _1284) + (2 * ceil32(return_data.size)) + 224
                    require return_data.size >= 32
                    _2928 = mem[(32 * _1284) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _1284) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _1284) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[(32 * _1284) + ceil32(return_data.size) + mem[(32 * _1284) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224] <= 4294967296 and mem[(32 * _1284) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(32 * _1284) + ceil32(return_data.size) + mem[(32 * _1284) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 32 <= return_data.size
                    mem[(32 * _1284) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _1284) + ceil32(return_data.size) + mem[(32 * _1284) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]
                    _2988 = mem[(32 * _1284) + ceil32(return_data.size) + _2928 + 224]
                    mem[(32 * _1284) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _1284) + ceil32(return_data.size) + _2928 + 224])] = mem[(32 * _1284) + ceil32(return_data.size) + _2928 + 256 len floor32(mem[(32 * _1284) + ceil32(return_data.size) + _2928 + 224])]
                    require 1 < mem[(32 * _1284) + (2 * ceil32(return_data.size)) + 224]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, _2160
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args devAddress, mem[(32 * _1284) + (2 * ceil32(return_data.size)) + 288] - _2160
                else:
                    _1226 = mem[192 len 4], Mask(224, 32, arg2) >> 32
                    require mem[192 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[192 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                    _1285 = mem[_1226 + 192]
                    mem[ceil32(return_data.size) + 224 len floor32(mem[_1226 + 192])] = mem[_1226 + 224 len floor32(mem[_1226 + 192])]
                    require 0 < mem[ceil32(return_data.size) + 192]
                    _2164 = mem[ceil32(return_data.size) + 224]
                    mem[(32 * _1285) + ceil32(return_data.size) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _1285) + ceil32(return_data.size) + 228] = arg2
                    mem[(32 * _1285) + ceil32(return_data.size) + 260] = _2164
                    mem[(32 * _1285) + ceil32(return_data.size) + 324] = msg.sender
                    mem[(32 * _1285) + ceil32(return_data.size) + 356] = 240 * 24 * 3600
                    mem[(32 * _1285) + ceil32(return_data.size) + 292] = 160
                    mem[(32 * _1285) + ceil32(return_data.size) + 388] = 2
                    mem[(32 * _1285) + ceil32(return_data.size) + 420 len 0] = None
                    require ext_code.size(sub_50d7d613Address)
                    call sub_50d7d613Address.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _2164, 160, msg.sender, 240 * 24 * 3600, 2, mem[(32 * _1285) + ceil32(return_data.size) + 420 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _1285) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _1285) + (2 * ceil32(return_data.size)) + 224
                    require return_data.size >= 32
                    _2930 = mem[(32 * _1285) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _1285) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _1285) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[(32 * _1285) + ceil32(return_data.size) + mem[(32 * _1285) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224] <= 4294967296 and mem[(32 * _1285) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(32 * _1285) + ceil32(return_data.size) + mem[(32 * _1285) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 32 <= return_data.size
                    mem[(32 * _1285) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _1285) + ceil32(return_data.size) + mem[(32 * _1285) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]
                    _2989 = mem[(32 * _1285) + ceil32(return_data.size) + _2930 + 224]
                    mem[(32 * _1285) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _1285) + ceil32(return_data.size) + _2930 + 224])] = mem[(32 * _1285) + ceil32(return_data.size) + _2930 + 256 len floor32(mem[(32 * _1285) + ceil32(return_data.size) + _2930 + 224])]
                    require 1 < mem[(32 * _1285) + (2 * ceil32(return_data.size)) + 224]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, _2164
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args devAddress, mem[(32 * _1285) + (2 * ceil32(return_data.size)) + 288] - _2164
            else:
                if not arg2:
                    _1228 = mem[192 len 4], Mask(224, 32, arg2) >> 32
                    require mem[192 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[192 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                    _1286 = mem[_1228 + 192]
                    mem[ceil32(return_data.size) + 224 len floor32(mem[_1228 + 192])] = mem[_1228 + 224 len floor32(mem[_1228 + 192])]
                    require 0 < mem[ceil32(return_data.size) + 192]
                    _2168 = mem[ceil32(return_data.size) + 224]
                    mem[(32 * _1286) + ceil32(return_data.size) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _1286) + ceil32(return_data.size) + 228] = arg2
                    mem[(32 * _1286) + ceil32(return_data.size) + 260] = _2168
                    mem[(32 * _1286) + ceil32(return_data.size) + 324] = msg.sender
                    mem[(32 * _1286) + ceil32(return_data.size) + 356] = 240 * 24 * 3600
                    mem[(32 * _1286) + ceil32(return_data.size) + 292] = 160
                    mem[(32 * _1286) + ceil32(return_data.size) + 388] = 2
                    mem[(32 * _1286) + ceil32(return_data.size) + 420 len 0] = None
                    require ext_code.size(sub_50d7d613Address)
                    call sub_50d7d613Address.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _2168, 160, msg.sender, 240 * 24 * 3600, 2, mem[(32 * _1286) + ceil32(return_data.size) + 420 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _1286) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _1286) + (2 * ceil32(return_data.size)) + 224
                    require return_data.size >= 32
                    _2932 = mem[(32 * _1286) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _1286) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _1286) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[(32 * _1286) + ceil32(return_data.size) + mem[(32 * _1286) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224] <= 4294967296 and mem[(32 * _1286) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(32 * _1286) + ceil32(return_data.size) + mem[(32 * _1286) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 32 <= return_data.size
                    mem[(32 * _1286) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _1286) + ceil32(return_data.size) + mem[(32 * _1286) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]
                    _2990 = mem[(32 * _1286) + ceil32(return_data.size) + _2932 + 224]
                    mem[(32 * _1286) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _1286) + ceil32(return_data.size) + _2932 + 224])] = mem[(32 * _1286) + ceil32(return_data.size) + _2932 + 256 len floor32(mem[(32 * _1286) + ceil32(return_data.size) + _2932 + 224])]
                    require 1 < mem[(32 * _1286) + (2 * ceil32(return_data.size)) + 224]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, _2168
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args devAddress, mem[(32 * _1286) + (2 * ceil32(return_data.size)) + 288] - _2168
                else:
                    _1230 = mem[192 len 4], Mask(224, 32, arg2) >> 32
                    require mem[192 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[192 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                    _1287 = mem[_1230 + 192]
                    mem[ceil32(return_data.size) + 224 len floor32(mem[_1230 + 192])] = mem[_1230 + 224 len floor32(mem[_1230 + 192])]
                    require 0 < mem[ceil32(return_data.size) + 192]
                    _2172 = mem[ceil32(return_data.size) + 224]
                    mem[(32 * _1287) + ceil32(return_data.size) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _1287) + ceil32(return_data.size) + 228] = arg2
                    mem[(32 * _1287) + ceil32(return_data.size) + 260] = _2172
                    mem[(32 * _1287) + ceil32(return_data.size) + 324] = msg.sender
                    mem[(32 * _1287) + ceil32(return_data.size) + 356] = 240 * 24 * 3600
                    mem[(32 * _1287) + ceil32(return_data.size) + 292] = 160
                    mem[(32 * _1287) + ceil32(return_data.size) + 388] = 2
                    mem[(32 * _1287) + ceil32(return_data.size) + 420 len 0] = None
                    require ext_code.size(sub_50d7d613Address)
                    call sub_50d7d613Address.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _2172, 160, msg.sender, 240 * 24 * 3600, 2, mem[(32 * _1287) + ceil32(return_data.size) + 420 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _1287) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _1287) + (2 * ceil32(return_data.size)) + 224
                    require return_data.size >= 32
                    _2934 = mem[(32 * _1287) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _1287) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _1287) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[(32 * _1287) + ceil32(return_data.size) + mem[(32 * _1287) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224] <= 4294967296 and mem[(32 * _1287) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(32 * _1287) + ceil32(return_data.size) + mem[(32 * _1287) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 32 <= return_data.size
                    mem[(32 * _1287) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _1287) + ceil32(return_data.size) + mem[(32 * _1287) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]
                    _2991 = mem[(32 * _1287) + ceil32(return_data.size) + _2934 + 224]
                    mem[(32 * _1287) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _1287) + ceil32(return_data.size) + _2934 + 224])] = mem[(32 * _1287) + ceil32(return_data.size) + _2934 + 256 len floor32(mem[(32 * _1287) + ceil32(return_data.size) + _2934 + 224])]
                    require 1 < mem[(32 * _1287) + (2 * ceil32(return_data.size)) + 224]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, _2172
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args devAddress, mem[(32 * _1287) + (2 * ceil32(return_data.size)) + 288] - _2172
        else:
            require not arg3
            mem[128] = address(ext_call.return_data[0])
            mem[160] = address(ext_call.return_data[0])
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args sub_50d7d613Address, arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
            mem[196] = arg2
            mem[228] = 64
            mem[260] = 2
            mem[292 len 0] = None
            require ext_code.size(sub_8ed8ea7eAddress)
            staticcall sub_8ed8ea7eAddress.getAmountsIn(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg2, Array(len=2, data=mem[292 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 192
            require return_data.size >= 32
            if not arg2:
                if not arg2:
                    if not arg2:
                        _1232 = mem[192 len 4], Mask(224, 32, arg2) >> 32
                        require mem[192 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[192 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                        _1288 = mem[_1232 + 192]
                        mem[ceil32(return_data.size) + 224 len floor32(mem[_1232 + 192])] = mem[_1232 + 224 len floor32(mem[_1232 + 192])]
                        require 0 < mem[ceil32(return_data.size) + 192]
                        _2176 = mem[ceil32(return_data.size) + 224]
                        mem[(32 * _1288) + ceil32(return_data.size) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(32 * _1288) + ceil32(return_data.size) + 228] = arg2
                        mem[(32 * _1288) + ceil32(return_data.size) + 260] = _2176
                        mem[(32 * _1288) + ceil32(return_data.size) + 324] = msg.sender
                        mem[(32 * _1288) + ceil32(return_data.size) + 356] = 240 * 24 * 3600
                        mem[(32 * _1288) + ceil32(return_data.size) + 292] = 160
                        mem[(32 * _1288) + ceil32(return_data.size) + 388] = 2
                        mem[(32 * _1288) + ceil32(return_data.size) + 420 len 0] = None
                        require ext_code.size(sub_50d7d613Address)
                        call sub_50d7d613Address.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg2, _2176, 160, msg.sender, 240 * 24 * 3600, 2, mem[(32 * _1288) + ceil32(return_data.size) + 420 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _1288) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _1288) + (2 * ceil32(return_data.size)) + 224
                        require return_data.size >= 32
                        _2936 = mem[(32 * _1288) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32
                        require mem[(32 * _1288) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[(32 * _1288) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[(32 * _1288) + ceil32(return_data.size) + mem[(32 * _1288) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224] <= 4294967296 and mem[(32 * _1288) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(32 * _1288) + ceil32(return_data.size) + mem[(32 * _1288) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 32 <= return_data.size
                        mem[(32 * _1288) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _1288) + ceil32(return_data.size) + mem[(32 * _1288) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]
                        _2992 = mem[(32 * _1288) + ceil32(return_data.size) + _2936 + 224]
                        mem[(32 * _1288) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _1288) + ceil32(return_data.size) + _2936 + 224])] = mem[(32 * _1288) + ceil32(return_data.size) + _2936 + 256 len floor32(mem[(32 * _1288) + ceil32(return_data.size) + _2936 + 224])]
                        require 1 < mem[(32 * _1288) + (2 * ceil32(return_data.size)) + 224]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, _2176
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args devAddress, mem[(32 * _1288) + (2 * ceil32(return_data.size)) + 288] - _2176
                    else:
                        _1234 = mem[192 len 4], Mask(224, 32, arg2) >> 32
                        require mem[192 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[192 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                        _1289 = mem[_1234 + 192]
                        mem[ceil32(return_data.size) + 224 len floor32(mem[_1234 + 192])] = mem[_1234 + 224 len floor32(mem[_1234 + 192])]
                        require 0 < mem[ceil32(return_data.size) + 192]
                        _2180 = mem[ceil32(return_data.size) + 224]
                        mem[(32 * _1289) + ceil32(return_data.size) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(32 * _1289) + ceil32(return_data.size) + 228] = arg2
                        mem[(32 * _1289) + ceil32(return_data.size) + 260] = _2180
                        mem[(32 * _1289) + ceil32(return_data.size) + 324] = msg.sender
                        mem[(32 * _1289) + ceil32(return_data.size) + 356] = 240 * 24 * 3600
                        mem[(32 * _1289) + ceil32(return_data.size) + 292] = 160
                        mem[(32 * _1289) + ceil32(return_data.size) + 388] = 2
                        mem[(32 * _1289) + ceil32(return_data.size) + 420 len 0] = None
                        require ext_code.size(sub_50d7d613Address)
                        call sub_50d7d613Address.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg2, _2180, 160, msg.sender, 240 * 24 * 3600, 2, mem[(32 * _1289) + ceil32(return_data.size) + 420 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _1289) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _1289) + (2 * ceil32(return_data.size)) + 224
                        require return_data.size >= 32
                        _2938 = mem[(32 * _1289) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32
                        require mem[(32 * _1289) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[(32 * _1289) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[(32 * _1289) + ceil32(return_data.size) + mem[(32 * _1289) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224] <= 4294967296 and mem[(32 * _1289) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(32 * _1289) + ceil32(return_data.size) + mem[(32 * _1289) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 32 <= return_data.size
                        mem[(32 * _1289) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _1289) + ceil32(return_data.size) + mem[(32 * _1289) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]
                        _2993 = mem[(32 * _1289) + ceil32(return_data.size) + _2938 + 224]
                        mem[(32 * _1289) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _1289) + ceil32(return_data.size) + _2938 + 224])] = mem[(32 * _1289) + ceil32(return_data.size) + _2938 + 256 len floor32(mem[(32 * _1289) + ceil32(return_data.size) + _2938 + 224])]
                        require 1 < mem[(32 * _1289) + (2 * ceil32(return_data.size)) + 224]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, _2180
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args devAddress, mem[(32 * _1289) + (2 * ceil32(return_data.size)) + 288] - _2180
                else:
                    if not arg2:
                        _1236 = mem[192 len 4], Mask(224, 32, arg2) >> 32
                        require mem[192 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[192 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                        _1290 = mem[_1236 + 192]
                        mem[ceil32(return_data.size) + 224 len floor32(mem[_1236 + 192])] = mem[_1236 + 224 len floor32(mem[_1236 + 192])]
                        require 0 < mem[ceil32(return_data.size) + 192]
                        _2184 = mem[ceil32(return_data.size) + 224]
                        mem[(32 * _1290) + ceil32(return_data.size) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(32 * _1290) + ceil32(return_data.size) + 228] = arg2
                        mem[(32 * _1290) + ceil32(return_data.size) + 260] = _2184
                        mem[(32 * _1290) + ceil32(return_data.size) + 324] = msg.sender
                        mem[(32 * _1290) + ceil32(return_data.size) + 356] = 240 * 24 * 3600
                        mem[(32 * _1290) + ceil32(return_data.size) + 292] = 160
                        mem[(32 * _1290) + ceil32(return_data.size) + 388] = 2
                        mem[(32 * _1290) + ceil32(return_data.size) + 420 len 0] = None
                        require ext_code.size(sub_50d7d613Address)
                        call sub_50d7d613Address.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg2, _2184, 160, msg.sender, 240 * 24 * 3600, 2, mem[(32 * _1290) + ceil32(return_data.size) + 420 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _1290) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _1290) + (2 * ceil32(return_data.size)) + 224
                        require return_data.size >= 32
                        _2940 = mem[(32 * _1290) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32
                        require mem[(32 * _1290) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[(32 * _1290) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[(32 * _1290) + ceil32(return_data.size) + mem[(32 * _1290) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224] <= 4294967296 and mem[(32 * _1290) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(32 * _1290) + ceil32(return_data.size) + mem[(32 * _1290) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 32 <= return_data.size
                        mem[(32 * _1290) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _1290) + ceil32(return_data.size) + mem[(32 * _1290) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]
                        _2994 = mem[(32 * _1290) + ceil32(return_data.size) + _2940 + 224]
                        mem[(32 * _1290) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _1290) + ceil32(return_data.size) + _2940 + 224])] = mem[(32 * _1290) + ceil32(return_data.size) + _2940 + 256 len floor32(mem[(32 * _1290) + ceil32(return_data.size) + _2940 + 224])]
                        require 1 < mem[(32 * _1290) + (2 * ceil32(return_data.size)) + 224]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, _2184
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args devAddress, mem[(32 * _1290) + (2 * ceil32(return_data.size)) + 288] - _2184
                    else:
                        _1238 = mem[192 len 4], Mask(224, 32, arg2) >> 32
                        require mem[192 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[192 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                        _1291 = mem[_1238 + 192]
                        mem[ceil32(return_data.size) + 224 len floor32(mem[_1238 + 192])] = mem[_1238 + 224 len floor32(mem[_1238 + 192])]
                        require 0 < mem[ceil32(return_data.size) + 192]
                        _2188 = mem[ceil32(return_data.size) + 224]
                        mem[(32 * _1291) + ceil32(return_data.size) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(32 * _1291) + ceil32(return_data.size) + 228] = arg2
                        mem[(32 * _1291) + ceil32(return_data.size) + 260] = _2188
                        mem[(32 * _1291) + ceil32(return_data.size) + 324] = msg.sender
                        mem[(32 * _1291) + ceil32(return_data.size) + 356] = 240 * 24 * 3600
                        mem[(32 * _1291) + ceil32(return_data.size) + 292] = 160
                        mem[(32 * _1291) + ceil32(return_data.size) + 388] = 2
                        mem[(32 * _1291) + ceil32(return_data.size) + 420 len 0] = None
                        require ext_code.size(sub_50d7d613Address)
                        call sub_50d7d613Address.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg2, _2188, 160, msg.sender, 240 * 24 * 3600, 2, mem[(32 * _1291) + ceil32(return_data.size) + 420 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _1291) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _1291) + (2 * ceil32(return_data.size)) + 224
                        require return_data.size >= 32
                        _2942 = mem[(32 * _1291) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32
                        require mem[(32 * _1291) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[(32 * _1291) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[(32 * _1291) + ceil32(return_data.size) + mem[(32 * _1291) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224] <= 4294967296 and mem[(32 * _1291) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(32 * _1291) + ceil32(return_data.size) + mem[(32 * _1291) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 32 <= return_data.size
                        mem[(32 * _1291) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _1291) + ceil32(return_data.size) + mem[(32 * _1291) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]
                        _2995 = mem[(32 * _1291) + ceil32(return_data.size) + _2942 + 224]
                        mem[(32 * _1291) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _1291) + ceil32(return_data.size) + _2942 + 224])] = mem[(32 * _1291) + ceil32(return_data.size) + _2942 + 256 len floor32(mem[(32 * _1291) + ceil32(return_data.size) + _2942 + 224])]
                        require 1 < mem[(32 * _1291) + (2 * ceil32(return_data.size)) + 224]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, _2188
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args devAddress, mem[(32 * _1291) + (2 * ceil32(return_data.size)) + 288] - _2188
            else:
                if not arg2:
                    if not arg2:
                        _1240 = mem[192 len 4], Mask(224, 32, arg2) >> 32
                        require mem[192 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[192 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                        _1292 = mem[_1240 + 192]
                        mem[ceil32(return_data.size) + 224 len floor32(mem[_1240 + 192])] = mem[_1240 + 224 len floor32(mem[_1240 + 192])]
                        require 0 < mem[ceil32(return_data.size) + 192]
                        _2192 = mem[ceil32(return_data.size) + 224]
                        mem[(32 * _1292) + ceil32(return_data.size) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(32 * _1292) + ceil32(return_data.size) + 228] = arg2
                        mem[(32 * _1292) + ceil32(return_data.size) + 260] = _2192
                        mem[(32 * _1292) + ceil32(return_data.size) + 324] = msg.sender
                        mem[(32 * _1292) + ceil32(return_data.size) + 356] = 240 * 24 * 3600
                        mem[(32 * _1292) + ceil32(return_data.size) + 292] = 160
                        mem[(32 * _1292) + ceil32(return_data.size) + 388] = 2
                        mem[(32 * _1292) + ceil32(return_data.size) + 420 len 0] = None
                        require ext_code.size(sub_50d7d613Address)
                        call sub_50d7d613Address.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg2, _2192, 160, msg.sender, 240 * 24 * 3600, 2, mem[(32 * _1292) + ceil32(return_data.size) + 420 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _1292) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _1292) + (2 * ceil32(return_data.size)) + 224
                        require return_data.size >= 32
                        _2944 = mem[(32 * _1292) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32
                        require mem[(32 * _1292) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[(32 * _1292) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[(32 * _1292) + ceil32(return_data.size) + mem[(32 * _1292) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224] <= 4294967296 and mem[(32 * _1292) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(32 * _1292) + ceil32(return_data.size) + mem[(32 * _1292) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 32 <= return_data.size
                        mem[(32 * _1292) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _1292) + ceil32(return_data.size) + mem[(32 * _1292) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]
                        _2996 = mem[(32 * _1292) + ceil32(return_data.size) + _2944 + 224]
                        mem[(32 * _1292) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _1292) + ceil32(return_data.size) + _2944 + 224])] = mem[(32 * _1292) + ceil32(return_data.size) + _2944 + 256 len floor32(mem[(32 * _1292) + ceil32(return_data.size) + _2944 + 224])]
                        require 1 < mem[(32 * _1292) + (2 * ceil32(return_data.size)) + 224]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, _2192
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args devAddress, mem[(32 * _1292) + (2 * ceil32(return_data.size)) + 288] - _2192
                    else:
                        _1242 = mem[192 len 4], Mask(224, 32, arg2) >> 32
                        require mem[192 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[192 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                        _1293 = mem[_1242 + 192]
                        mem[ceil32(return_data.size) + 224 len floor32(mem[_1242 + 192])] = mem[_1242 + 224 len floor32(mem[_1242 + 192])]
                        require 0 < mem[ceil32(return_data.size) + 192]
                        _2196 = mem[ceil32(return_data.size) + 224]
                        mem[(32 * _1293) + ceil32(return_data.size) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(32 * _1293) + ceil32(return_data.size) + 228] = arg2
                        mem[(32 * _1293) + ceil32(return_data.size) + 260] = _2196
                        mem[(32 * _1293) + ceil32(return_data.size) + 324] = msg.sender
                        mem[(32 * _1293) + ceil32(return_data.size) + 356] = 240 * 24 * 3600
                        mem[(32 * _1293) + ceil32(return_data.size) + 292] = 160
                        mem[(32 * _1293) + ceil32(return_data.size) + 388] = 2
                        mem[(32 * _1293) + ceil32(return_data.size) + 420 len 0] = None
                        require ext_code.size(sub_50d7d613Address)
                        call sub_50d7d613Address.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg2, _2196, 160, msg.sender, 240 * 24 * 3600, 2, mem[(32 * _1293) + ceil32(return_data.size) + 420 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _1293) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _1293) + (2 * ceil32(return_data.size)) + 224
                        require return_data.size >= 32
                        _2946 = mem[(32 * _1293) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32
                        require mem[(32 * _1293) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[(32 * _1293) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[(32 * _1293) + ceil32(return_data.size) + mem[(32 * _1293) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224] <= 4294967296 and mem[(32 * _1293) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(32 * _1293) + ceil32(return_data.size) + mem[(32 * _1293) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 32 <= return_data.size
                        mem[(32 * _1293) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _1293) + ceil32(return_data.size) + mem[(32 * _1293) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]
                        _2997 = mem[(32 * _1293) + ceil32(return_data.size) + _2946 + 224]
                        mem[(32 * _1293) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _1293) + ceil32(return_data.size) + _2946 + 224])] = mem[(32 * _1293) + ceil32(return_data.size) + _2946 + 256 len floor32(mem[(32 * _1293) + ceil32(return_data.size) + _2946 + 224])]
                        require 1 < mem[(32 * _1293) + (2 * ceil32(return_data.size)) + 224]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, _2196
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args devAddress, mem[(32 * _1293) + (2 * ceil32(return_data.size)) + 288] - _2196
                else:
                    if not arg2:
                        _1244 = mem[192 len 4], Mask(224, 32, arg2) >> 32
                        require mem[192 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[192 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                        _1294 = mem[_1244 + 192]
                        mem[ceil32(return_data.size) + 224 len floor32(mem[_1244 + 192])] = mem[_1244 + 224 len floor32(mem[_1244 + 192])]
                        require 0 < mem[ceil32(return_data.size) + 192]
                        _2200 = mem[ceil32(return_data.size) + 224]
                        mem[(32 * _1294) + ceil32(return_data.size) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(32 * _1294) + ceil32(return_data.size) + 228] = arg2
                        mem[(32 * _1294) + ceil32(return_data.size) + 260] = _2200
                        mem[(32 * _1294) + ceil32(return_data.size) + 324] = msg.sender
                        mem[(32 * _1294) + ceil32(return_data.size) + 356] = 240 * 24 * 3600
                        mem[(32 * _1294) + ceil32(return_data.size) + 292] = 160
                        mem[(32 * _1294) + ceil32(return_data.size) + 388] = 2
                        mem[(32 * _1294) + ceil32(return_data.size) + 420 len 0] = None
                        require ext_code.size(sub_50d7d613Address)
                        call sub_50d7d613Address.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg2, _2200, 160, msg.sender, 240 * 24 * 3600, 2, mem[(32 * _1294) + ceil32(return_data.size) + 420 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _1294) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _1294) + (2 * ceil32(return_data.size)) + 224
                        require return_data.size >= 32
                        _2948 = mem[(32 * _1294) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32
                        require mem[(32 * _1294) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[(32 * _1294) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[(32 * _1294) + ceil32(return_data.size) + mem[(32 * _1294) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224] <= 4294967296 and mem[(32 * _1294) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(32 * _1294) + ceil32(return_data.size) + mem[(32 * _1294) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 32 <= return_data.size
                        mem[(32 * _1294) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _1294) + ceil32(return_data.size) + mem[(32 * _1294) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]
                        _2998 = mem[(32 * _1294) + ceil32(return_data.size) + _2948 + 224]
                        mem[(32 * _1294) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _1294) + ceil32(return_data.size) + _2948 + 224])] = mem[(32 * _1294) + ceil32(return_data.size) + _2948 + 256 len floor32(mem[(32 * _1294) + ceil32(return_data.size) + _2948 + 224])]
                        require 1 < mem[(32 * _1294) + (2 * ceil32(return_data.size)) + 224]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, _2200
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args devAddress, mem[(32 * _1294) + (2 * ceil32(return_data.size)) + 288] - _2200
                    else:
                        _1246 = mem[192 len 4], Mask(224, 32, arg2) >> 32
                        require mem[192 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[192 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                        _1295 = mem[_1246 + 192]
                        mem[ceil32(return_data.size) + 224 len floor32(mem[_1246 + 192])] = mem[_1246 + 224 len floor32(mem[_1246 + 192])]
                        require 0 < mem[ceil32(return_data.size) + 192]
                        _2204 = mem[ceil32(return_data.size) + 224]
                        mem[(32 * _1295) + ceil32(return_data.size) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(32 * _1295) + ceil32(return_data.size) + 228] = arg2
                        mem[(32 * _1295) + ceil32(return_data.size) + 260] = _2204
                        mem[(32 * _1295) + ceil32(return_data.size) + 324] = msg.sender
                        mem[(32 * _1295) + ceil32(return_data.size) + 356] = 240 * 24 * 3600
                        mem[(32 * _1295) + ceil32(return_data.size) + 292] = 160
                        mem[(32 * _1295) + ceil32(return_data.size) + 388] = 2
                        mem[(32 * _1295) + ceil32(return_data.size) + 420 len 0] = None
                        require ext_code.size(sub_50d7d613Address)
                        call sub_50d7d613Address.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg2, _2204, 160, msg.sender, 240 * 24 * 3600, 2, mem[(32 * _1295) + ceil32(return_data.size) + 420 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _1295) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _1295) + (2 * ceil32(return_data.size)) + 224
                        require return_data.size >= 32
                        _2950 = mem[(32 * _1295) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32
                        require mem[(32 * _1295) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[(32 * _1295) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[(32 * _1295) + ceil32(return_data.size) + mem[(32 * _1295) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224] <= 4294967296 and mem[(32 * _1295) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(32 * _1295) + ceil32(return_data.size) + mem[(32 * _1295) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 32 <= return_data.size
                        mem[(32 * _1295) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _1295) + ceil32(return_data.size) + mem[(32 * _1295) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]
                        _2999 = mem[(32 * _1295) + ceil32(return_data.size) + _2950 + 224]
                        mem[(32 * _1295) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _1295) + ceil32(return_data.size) + _2950 + 224])] = mem[(32 * _1295) + ceil32(return_data.size) + _2950 + 256 len floor32(mem[(32 * _1295) + ceil32(return_data.size) + _2950 + 224])]
                        require 1 < mem[(32 * _1295) + (2 * ceil32(return_data.size)) + 224]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, _2204
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args devAddress, mem[(32 * _1295) + (2 * ceil32(return_data.size)) + 288] - _2204
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0x9d2ba4e8: address(arg1), arg2, arg3, Array(len=arg4.length, data=arg4[all])
}



}
