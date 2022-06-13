contract main {




// =====================  Runtime code  =====================


address stor0;
mapping of address stor99;

function _fallback() payable {
    revert
}

function sub_61338cee(?) payable {
    require calldata.size - 4 >= 96
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[ceil32(arg1.length) + (32 * arg2.length) + 160] = 0
    mem[ceil32(arg1.length) + (32 * arg2.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + (32 * arg2.length) + floor32(arg1.length) + -(arg1.length % 32) + 192 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + (32 * arg2.length) + 160] = 1
    if stor[mem[ceil32(arg1.length) + (32 * arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]] == stor0:
        revert with 0, 
                    32,
                    37,
                    0xfe596f75206e65656420746f2070726f7669646520612076616c696420726f757465722069,
                    mem[ceil32(arg1.length) + (32 * arg2.length) + 265 len 27]
    mem[ceil32(arg1.length) + (32 * arg2.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + (32 * arg2.length) + floor32(arg1.length) + -(arg1.length % 32) + 192 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + (32 * arg2.length) + 160] = 1
    _108 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + (32 * arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 32])
    require ext_code.size(stor[mem[ceil32(arg1.length) + (32 * arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]])
    staticcall stor[mem[ceil32(arg1.length) + (32 * arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]].factory() with:
            gas gas_remaining wei
    mem[ceil32(arg1.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 0 < Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
    require 1 < Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
    _117 = mem[ceil32(arg1.length) + 192]
    mem[ceil32(arg1.length) + (32 * arg2.length) + 164] = mem[ceil32(arg1.length) + 172 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args mem[ceil32(arg1.length) + (32 * arg2.length) + 164], address(_117)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(arg1.length) + (32 * arg2.length) + 160] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg1.length) + (32 * arg2.length) + 164] = arg3
    mem[ceil32(arg1.length) + (32 * arg2.length) + 196] = 64
    mem[ceil32(arg1.length) + (32 * arg2.length) + 228] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
    mem[ceil32(arg1.length) + (32 * arg2.length) + 260 len floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
    require ext_code.size(stor[_108])
    staticcall stor[_108].getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args mem[ceil32(arg1.length) + (32 * arg2.length) + 164 len (32 * Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(arg1.length) + (32 * arg2.length) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 160
    require return_data.size >= 32
    _149 = mem[ceil32(arg1.length) + (32 * arg2.length) + 160 len 4], Mask(224, 32, arg3) >> 32
    require mem[ceil32(arg1.length) + (32 * arg2.length) + 160 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
    require mem[ceil32(arg1.length) + (32 * arg2.length) + 160 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
    require mem[mem[ceil32(arg1.length) + (32 * arg2.length) + 160 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg1.length) + (32 * arg2.length) + 160] <= 4294967296 and mem[ceil32(arg1.length) + (32 * arg2.length) + 160 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg1.length) + (32 * arg2.length) + 160 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg1.length) + (32 * arg2.length) + 160]) + 32 <= return_data.size
    mem[ceil32(arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 160] = mem[mem[ceil32(arg1.length) + (32 * arg2.length) + 160 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg1.length) + (32 * arg2.length) + 160]
    _152 = mem[_149 + ceil32(arg1.length) + (32 * arg2.length) + 160]
    mem[ceil32(arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 192 len floor32(mem[_149 + ceil32(arg1.length) + (32 * arg2.length) + 160])] = mem[_149 + ceil32(arg1.length) + (32 * arg2.length) + 192 len floor32(mem[_149 + ceil32(arg1.length) + (32 * arg2.length) + 160])]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).price0CumulativeLast() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).price1CumulativeLast() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(32 * _152) + ceil32(arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 224] = ext_call.return_data[0]
    mem[(32 * _152) + ceil32(arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 256] = ext_call.return_data[0]
    mem[(32 * _152) + ceil32(arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 192] = 96
    mem[(32 * _152) + ceil32(arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 288] = mem[ceil32(arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 160]
    mem[(32 * _152) + ceil32(arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 320 len floor32(mem[ceil32(arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 160])] = mem[ceil32(arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 192 len floor32(mem[ceil32(arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 160])]
    return 96, 
           ext_call.return_data[0],
           ext_call.return_data[0],
           mem[(32 * _152) + ceil32(arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 288 len (32 * mem[ceil32(arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 160]) + 32]
}



}
